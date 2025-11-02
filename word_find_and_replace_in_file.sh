#!/bin/bash

read -p "Enter file name: " file
read -p "Enter find word: " find_word
read -p "Enter replace word: " replace_word

if [ -f "$file" ]; then
    sed -i "s/$find_word/$replace_word/g" "$file"
    echo "task complete"
else 
    echo "file not exist"
fi
