#!/bin/sh
for i in $(seq 1 10)
do
    `touch test/test.$i` 
    # echo $i
done
