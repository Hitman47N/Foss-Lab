#!/bin/bash
file=$1
if [ ! $1 ]
then
	echo "Please check the input format ./p2.sh <filename>"
	exit
fi
if [ ! -f $file ]
then
	echo "File Doesnot Exist"
else
	line_count=$(cat $file | wc -l)
	echo "The file has $line_count lines"
	word_count=$(cat $file | wc -w)
	echo "The file has $word_count number of words"
	bytes=$(cat $file | wc -c)
	echo "The file contains $bytes bytes"
fi
