#!/bin/bash

for i in `seq 1 1000`
do
  touch file$i.txt # the strings file $i and .txt are concatenated here
done
ls file* # let's list the files after we have created them 
