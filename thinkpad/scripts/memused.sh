#!/bin/sh
read t f <<< `grep -E 'Mem(Total|Free)' /proc/meminfo |awk '{print $2}'| sed ':a;N;$!ba;s/\n/ /g'`
echo `bc <<< "scale=2; 100 - $f / $t * 100" | cut -d. -f1`%
