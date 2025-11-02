#!/bin/bash

read -p "Enter the desire line: " line

word_cnt=$(echo "$line" |wc -w)
echo "Total word is: "$word_cnt


#now word count on file

read -p "enter file name: " file

if [ -f "$file" ]; then
    word_cnt=$(wc -w <"$file")
  echo "In this ' $file ' file has $word_cnt word"
else 
    echo "file not exist"
fi
