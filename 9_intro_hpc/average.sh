#!/bin/bash

# Because python cannot be easily run on the UA HPC login nodes,
# we can instead clobber together a rough bash solution to
# average together all the pi estimates.
# This script extracts the pi estimates from each output file
# and loops over them. In each loop iteration, we use
# the bc program to add the pi estimate to the sum.
# Afterwards, we use bc to divide sum by the total
# number of estimates, counted by the count variable,
# and this number is outputted to the console.

sum=0
count=0

# cat returns the content of all the output files one after
# another. Unfortunately, bash's for loop needs lists of items
# separated by spaces, not on separate lines.
# The solution is to pipe the output of cat to the tr utility.
# This replaces the new-line character, \n, with a space
# so that the for loop can loop over the values.
for pi_val in $(cat monte_carlo_pi*.o* | tr -s '\n' ' ')
do
    # We construct a string of the current sum + the pi value
    # then we echo this, and pipe it into bc which outputs the
    # result. This is stored in sum
    sum=$(echo "$sum + $pi_val" | bc -l)
    # count is incremented to keep track of the total number of pi values.
    count=$((count + 1))
done

# We use the same trick to get bc to compute the average
# pi estimate by dividing sum by count:
echo "$sum/$count" | bc -l