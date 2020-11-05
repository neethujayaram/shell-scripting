#!/bin/sh
#date: 3rd nov 2020
#description: add user with description


echo "please provide username"
read u
echo 

grep -q $u /etc/passwd

	if [ $? -eq 0 ]
	then
	echo "ERROR -- username already exist"
	echo
	echo "Please provide a diff username"
	exit 0
	fi

echo "please provide description"
read d
echo
useradd $u -c "$d"
echo "user account created"
