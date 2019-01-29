#!/bin/bash

now=$(date +%s)
now_fmt=$(date "+%Y-%m-%d %H:%M:%S")
echo 'check at: '$now_fmt >> clean.log

file_count=$(ls /home/pansheng/.trash | wc -l)
if [ $file_count -lt 1 ]; then
    exit
fi

for f in /home/pansheng/.trash/*; do
    last_modify_time=$(stat -c %Z $f)
    interval=$(($now-$last_modify_time))
    week_dur=$((7*24*3600))
    if [ $interval -gt $week_dur ]; then
        /bin/rm -rf $f
        echo $now_fmt": "$f >> clean.log
    fi
done
