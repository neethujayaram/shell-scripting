#!/bin/sh

#tar the specified dir
path="/var/www/shell_scripting"
file_destination="/var/www/html/shell-scripting/backup_sh.tar"
gz_file_name="/var/www/html/shell-scripting/backup_sh.tar.gz"

tar cvf  $file_destination $path
gzip $file_destination

find $gz_file_name -mtime -1 -type f -print &> /dev/null
if [ $? -eq 0 ]
    then
    echo "Backup success"
    else
    echo "Backup failed"
fi