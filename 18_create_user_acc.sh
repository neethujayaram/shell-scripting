#!/bin/sh
#date: 3rd nov 2020
#creating a user account

echo "Please provide a username ?"
read u
echo

useradd $u
echo $u created successfully
