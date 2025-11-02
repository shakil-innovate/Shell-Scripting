#!/bin/bash

read -p "Enter file name that you simply backup: " file

if [ -f "$file" ]; then
    cp "$file" "${file}.bak"
    echo "backup created: ${file}.bak"
else
  echo not exist
fi


# #now backup directory

read -p "Enter directory name: " dir

if [ -d "$dir" ]; then 
    backup_name="${dir}_backup_$(date +%Y%m%d_%H%M%S)"
    cp -r "$dir" "$backup_name"
    echo "backup_create : $backup_name"
else
    echo "not exist"
fi
