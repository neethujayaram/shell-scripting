#!/bin/sh

#get the count of India in sample_test.txt
grep_cmd=`grep -c "India" sample_test.txt`
echo "Number of times India in $grep_cmd"

#save the grep result in a file
show_word_ln_no=`grep -n "WHO" sample_test.txt > save_word_line_no.txt`
echo "Line no of word saved in file."