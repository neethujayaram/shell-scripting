#!/bin/bash
#14th oct 2020
#last logged in user, get the user input

echo "Please enter day (eg. Mon)"
read d
echo "Please enter month (eg. Aug)"
read m
echo "Please enter date (eg. 17)"
read da
last | grep "$d $m $da" | awk '{print $1}'
