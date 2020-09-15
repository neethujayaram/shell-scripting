#!/bin/sh
#15th sept 2020
#commands used by admins mostly

echo
echo "Show the top 5 commands running now: "
echo
top | head
echo
echo "Show the disk space available `df -h`"
echo
echo "Uptime of this system is `uptime`"
echo
echo "Input Output statistics `iostat`"
echo

