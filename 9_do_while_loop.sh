#!/bin/sh
#simple do while loop script
#23rd sept'20

count=0
while [ $count != 10 ]
do
	echo "Count is $count"
	count=`expr $count + 2`
done
