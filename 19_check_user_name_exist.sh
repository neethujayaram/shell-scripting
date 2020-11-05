#!/bin/sh
#date: 3rd nov 2020
#check the given username is existing

echo "Please provide a username"
read u
echo

grep -q $u /etc/passwd

	if [ $? -eq 0 ]
	then
	echo ERROR -- user already exist
	echo
	echo Please specify different username
	exit 0
	fi

useradd $u
echo $u account is created successfully

