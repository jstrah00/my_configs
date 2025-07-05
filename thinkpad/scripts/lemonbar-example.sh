#!/bin/sh

clock() {
        date "+[ %d/%m | %H:%M ]"
}

battery() {
	BATC=/sys/class/power_supply/BAT1/capacity
	BATS=/sys/class/power_supply/BAT1/status
	status=$(cat $BATS)
	if [ "$status" = "Charging" ]; then
	  echo -n '++'
	fi
	echo -n $(cat $BATC)%
}
cpuload(){
	LINE=`ps -eo pcpu |grep -vE '^\s*(0.0|%CPU)' |sed -n '1h;$!H;$g;s/\n/ +/gp'`
	echo `bc <<< $LINE`%

}

memused(){
	read t f <<< `grep -E 'Mem(Total|Free)' /proc/meminfo |awk '{print $2}'| sed ':a;N;$!ba;s/\n/ /g'`
	echo `bc <<< "scale=2; 100 - $f / $t * 100" | cut -d. -f1`%
}
