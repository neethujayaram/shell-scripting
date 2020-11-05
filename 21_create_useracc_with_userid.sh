#!/bin/sh
#date: 3rd dec 2020
#description: create an user account and add description and user id


echo "please provide username"
read u
grep -q $u /etc/passwd
	if [ $? -eq 0 ]
	then
	echo "user account already existing"
	echo
	echo "please provide diff user name"
	exit 0
	fi

echo "Add description for this user"
read d
echo
echo " Do you want to specify user id y/n ?"
read yn
	if [ $yn == y ]
	then
	echo "Specify the user id:"
	read userid
	echo
	grep -q $userid /etc/passwd
		if [ $? -eq 0 ]
		then
		echo ERROR -- userid already existing
		echo Please provide unique user id
		echo
		exit 0
		else
		useradd $u -c "$d" -u $userid
                echo
		fi
	else
	echo "No worries we will assign user id."
	useradd $u -c "$d"
	fi
echo
echo "Account created successfully"

