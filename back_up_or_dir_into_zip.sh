#!/bin/bash

read -p "Enter file name:" file

if [ -f "$file" ]; then 
    backup_name="${file}_backup_$(date +%Y%m%d_%H%M%S).tar.gz"
    tar -czf "$backup_name" "$file"
    echo "file backedup $backup_name"
else 
    echo not exist
fi
