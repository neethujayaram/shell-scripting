#!/bin/sh
#23rd sept 2020
#do while loop script

count=0
number=10

echo `$1`
while [ $count -lt 10 ]
do
	echo
	echo "$number seconds left to stop this process $i"
	echo
	sleep 1
	number=`expr $number - 1`
	count=`expr $count + 1`
done

echo "Process is stopped."
echo
