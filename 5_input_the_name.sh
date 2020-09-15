#!/bin/sh
#15th sept 2020
#read the name typed by the user

hostname=`hostname`
echo "My Server name is $hostname"
echo
echo "What is your name ?"
read yourname
echo "Hey $yourname, nice name."
echo "---------------------------------------"
