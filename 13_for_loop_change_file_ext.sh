#!/bin/bash
#10th oct 2020
# change the file extension to diff

for file in files/*.txt
do
	mv $file ${file%.txt}.none
done
