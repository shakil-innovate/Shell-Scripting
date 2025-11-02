#!/bin/bash

read -p "Enter dir name: " dir

if [ -d "$dir" ]; then
   echo "listing allbelow: "
   count=1
   for file in $(find "$dir" -type f);
   do 
    echo $count $file
    count=$((count+1))
   done
else 
    echo "not exist file"
fi

#other way
echo 
if [ -d "$dir" ]; then
    echo files ar are below: 
    ls -R "$dir"
fi
