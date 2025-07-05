#!/bin/sh
# The following assumes you have 3 interfaces: loopback, ethernet, wifi
read lo int1 int2 <<< `ip link | sed -n 's/^[0-9]: \(.*\):.*$/\1/p'`

# iwconfig returns an error code if the interface tested has no wireless
# extensions
if iwconfig $int1 >/dev/null 2>&1; then
    wifi=$int1
    eth0=$int2
else 
    wifi=$int2
    eth0=$int1
fi

# in case you have only one interface, just set it here:
# int=eth0

# this line will set the variable $int to $eth0 if it's up, and $wifi
# otherwise. I assume that if ethernet is UP, then it has priority over
# wifi. If you have a better idea, please share :)
ip link show $eth0 | grep 'state UP' >/dev/null && int=$eth0 || int=$wifi

# just output the interface name. Could obviously be done in the 'ping'
# query
echo -n "$int"

# Send a single packet, to speed up the test. I use google's DNS 8.8.8.8,
# but feel free to use any ip address you want. Be sure to put an IP, not a
# domain name. You'll bypass the DNS resolution that can take some precious
# miliseconds ;)
ping -c 1 8.8.8.8 >/dev/null 2>&1 && echo "$int UP" || echo "disconnected"

