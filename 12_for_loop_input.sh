#!/bin/bash
#8th oct 2020

echo enter file name:
read name
echo number of files to create: 
read no
for i in $(seq 1 $no)
do
	filename="$name$i"
	echo $filename
	touch files/$filename
	chmod a+x files/$filename
done

count=`ls -l files/$name* | wc -l`
echo count of files starting with $name is $count 
