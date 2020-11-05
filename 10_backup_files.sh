#!/bin/bash
#backup for /etc /var
#7th oct 2020

tar cvf /tmp/backup.tar /etc /var
gzip /tmp/backup.tar

find /tmp/backup.tar.gz -mtime -1 -type f -print &> /dev/null
if [ $? -eq 0 ]
then
	echo "Backup created"
	echo
else
	echo "Backup failed"
fi
