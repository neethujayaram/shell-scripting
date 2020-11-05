#!/bin/bash
#10th oct 2020
#check the path exists

files="/etc/ssh
/var/programs/
/etc/fake
/etc/old"

for file in $files
do
	if [ ! -e $file ]
	then
		echo $file do not exist
	fi
done
