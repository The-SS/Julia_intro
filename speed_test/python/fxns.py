#!/usr/bin/env python3

import numpy as np
import timeit
import platform

def for_loops():
    outerloop = 10000 # outer loop size
    innerloop = 10000 # inner loop size
    num_experiments = 10 # number of experiments
    total_times = np.zeros(num_experiments)

    print(outerloop, "x", innerloop, " Nested For Loops")

    # run nested loops
    for i in range(num_experiments):
        counter = 0
        t1 = timeit.default_timer()
        for j in range(outerloop):
            counter2 = 0
            for k in range(innerloop):
                counter2+=k
            counter+=counter2

        t2 = timeit.default_timer()
        print("Nester Loops ", i+1, " of ", num_experiments, "    Took: ", t2-t1, "seconds")
        total_times[i] = t2-t1
        print("counter ", counter)

    total_time = sum(total_times)
    avrg = total_time/num_experiments
    print("~~~~~~~~~~~~~~~")
    print("Ran ", num_experiments, "experiments in: ", total_time)
    print("Average: ", avrg)

    return


def matrix_inv():
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
    print("Ran ", num_experiments, " experiments in: ", total_time)
    print("Average: ", avrg)

    return
