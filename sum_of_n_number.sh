#!/bin/bash

read -p "Enter n: " n
echo "enter all element one by one"

arr=()

for((i=0;i<n;i++))
do 
  read x
  arr+=($x)
done

echo "arr is below: "
echo ${arr[@]}

sum=0
for((i=0;i<n;i++))
do 
  sum=$((sum + arr[i]))
done

echo "sum is: $sum"
