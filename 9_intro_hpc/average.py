#!/usr/bin/env python3

import sys
import numpy as np

# First, we check that our script was called with the correct number of arguments
# If not, we print a usage message and exit:
if len(sys.argv) != 2:
    print("Usage: average.py filename")
    sys.exit()

filename = sys.argv[1]

estimate_array = np.genfromtxt(filename)

print(f"{np.mean(estimate_array):0.20f}")