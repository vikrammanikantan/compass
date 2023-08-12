#!/bin/bash

for i in `ls file*` # here we create a list using ls
do
    j=`echo $i | sed s/file/file\_/` # echo prints the value of i and the output is piped with the pipe operator | to sed, which then replaces the string "file" with the string "file_", and the entire output is assigned to the variable j.
    mv $i $j # Finally we move (or rename) file $i to file $j
done
ls file* # let's list the files after we have changed their names
