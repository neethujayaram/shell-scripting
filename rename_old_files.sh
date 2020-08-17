#!/bin/sh

#find the files in the folder /var/www/html/shell-scripting, which is older than 100 days
#executing the command for changing the file name with old extenstion
#create files:
# touch -d "Fri, 7 March 2020 01:01:00" file1
# touch -d "Fri, 7 March 2020 02:02:00" file2
# touch -d "Fri, 7 March 2020 03:03:00" file3
find /var/www/html/shell-scripting -mtime +100 -exec mv {} {}.old \;