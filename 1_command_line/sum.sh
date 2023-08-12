#!/bin/bash
# Basic for loop for summing
sum=0
for i in `seq 0 1000`
do
  sum=$(($i+$sum))
done
echo "The sum from 0 to 1000 is:" $sum
