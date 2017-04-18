#!/bin/bash

# send the mail or not
export send=1
# filter the ip address
export addr=`/sbin/ifconfig | grep -A1 'wlan0' | grep addr: |awk '{print $2}' | awk -F: '{print $2}'`
#dir='pwd'
#last_dir=`echo $dir | awk -F/ '{print $NF}'`
exec 1>>../log/mon.log 2>>../log/err.log

echo "`date +"%F %T"` load average"
sh ../shares/load.sh
exit 0
#if grep -q 'to_mon_502=1' $conf_file; then
#    export log=`grep 'logfile=' $conf_file | awk -F= '{print $2}' | sed 's/ //g'`
#    sh ../shares/502.sh
#fi
#exit 0
