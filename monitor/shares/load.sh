#!/bin/bash

load=`uptime |awk -F 'average:' '{print $2}' | cut -d, -f1 | sed 's/ //g' | cut -d. -f1`
#load=`uptime | awk -F, '{print $4}' | awk -F: '{print $2}' | sed 's/ //g' | awk -F. '{print $1}'`

if [ $load -gt 20 ] && [ $send -eq "1"]
then
    echo "$addr `date +"%T"` load is $load" > ../log/load.tmp
#    sh ../mail/mail.sh $addr\_load $load ../log/load.tmp
fi
echo "`date +"%T"` load is $load"

