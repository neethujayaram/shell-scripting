#!/bin/sh
#case statement program

echo
echo "Select any one option"
echo
echo "1 - Show date"
echo
echo "2 - List files and folders"
echo
echo "3 - Who am i ?"
echo
read choice
	case $choice in
	1) date;;
	2) ls;;
	3) whoami;;
	*) echo Entered invalid value;;
	esac
