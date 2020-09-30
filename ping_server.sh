#!/bin/sh
#28th sept 2020

#ip="192.168.225.255"
#path of the file
path_ip="/var/programs/shell-scripting/ips_list.txt"

for ip in $(cat $path_ip)
do
	ping -c1 $ip &> /dev/null
	if [ $? -eq 0 ]
	then
	echo $ip is OK
	else
	echo $ip is Not OK
	fi
done
