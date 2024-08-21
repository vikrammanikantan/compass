#!/usr/bin/env python3
import sys
import random

# First, we check that our script was called with the correct number of arguments
# If not, we print a usage message and exit:
if len(sys.argv) != 3:
    print("Usage: monte_carlo_pi.py n_points seed_value")
    sys.exit()

# Next, we get the two input arguments that our script was called with.
# These are the number of points to generate and the seed value for the random number generator.
n_points = int(sys.argv[1])
seed_value = int(sys.argv[2])

# Using the seed value, we initalize a random number generator
random.seed(seed_value)

# Count the number of points that fall within the unit circle
count = 0
for i in range(n_points):
    x_point = random.random()
    y_point = random.random()
    if x_point**2 + y_point**2 <= 1:
        count = count + 1

# The ratio of the area of the unit circle to the area of the unit square is pi/4
pi_estimate = 4*count/n_points

print(f"{pi_estimate:.20f}") # Print the estimate with 20 decimal places
