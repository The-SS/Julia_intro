#!/usr/bin/env python3

import numpy as np
import timeit
import platform

'''
Runs matrix inversions in a script fashion
'''

print("python version:", platform.python_version())

mat_size = 5000 # matrix size
num_experiments = 10 # number of experiments
total_times = np.zeros(num_experiments)

print(mat_size, "x", mat_size, " Matrix inversion script")

# generate random matrix and perform matrix inversion
for i in range(num_experiments):
    mat = np.random.rand(mat_size, mat_size)
    t1 = timeit.default_timer()
    mat_inv = np.linalg.inv(mat)
    t2 = timeit.default_timer()
    print("Matrix ", i+1, " of ", num_experiments, "    Took: ", t2-t1, "seconds")
    total_times[i] = t2-t1

total_time = sum(total_times)
avrg = total_time/num_experiments
print("~~~~~~~~~~~~~~~")
print("Ran ", num_experiments, "experiments in: ", total_time)
print("Average: ", avrg)
