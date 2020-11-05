#!/bin/bash
#14th oct 2020
#last logged in user

today=`date | awk '{print $1, $2, $3}'`
last | grep "$today" | awk '{print $1}'
echo
echo
echo
last | awk '{print $1}'
