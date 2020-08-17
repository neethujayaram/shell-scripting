#!/bin/sh

host="192.168.225.25"
ping -c1 $host &> /dev/null
    if [ $? -eq 0 ]
    then
    echo "$host is OK"
    else
    echo "$host NOT OK"
    fi

#read file: file contains multiple ips
file_path="/var/www/html/shell-scripting/multiple_hosts"
ips=`cat $file_path`
for ip in $ips
do
    ping -c1 $ip &> /dev/null
    if [ $? -eq 0 ]
    then
    echo "$ip OK"
    else
    echo "$ip NOT OK"
    fi
done

