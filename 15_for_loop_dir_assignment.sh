#!/bin/bash
#10th oct 2020
#check director assignment

cd /home/
for DIR in *
do
	chk=$(grep -c "/home/$DIR" /etc/passwd)
	if [ $chk -ge 1 ]
	then
		echo $DIR is assigned to user
	else
		echo $DIR is not assigned to user
	fi
done

