#!/bin/bash

arr=(1 2 3 4 5)

echo length "${#arr[@]}"

for((i=0;i<5;i++))
do
   item=$((i+1))
   echo $item "element " is ${arr[i]}
done

echo "input in one line"

read -a arr2
echo arr2 length is ${#arr2[@]}
echo "${arr2[@]}"

echo take input like c++ loop

arr3=()
read -p "enter array size : " n

echo "enter iput: "
for((i=0;i<n;i++))
do 
  read -p "$((i+1)) th input: " x
  arr3+=($x);
done

echo "${arr3[@]}"
