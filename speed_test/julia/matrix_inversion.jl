mat_size = 5000 # matrix size
num_experiments = 10 # number of experiments
total_times = zeros(num_experiments)

println(mat_size, "x", mat_size, " Matrix inversion script")

# generate random matrix and perform matrix inversion
for i = 1:num_experiments
    mat = rand(mat_size, mat_size)
    t1 = time_ns() / 1000000000
    mat_inv = inv(mat)
    t2 = time_ns() / 1000000000
    println("Matrix ", i, " of ", num_experiments, "    Took: ", t2-t1, "seconds")
    total_times[i] = t2-t1
end

total_time = sum(total_times)
avrg = total_time/num_experiments
println("~~~~~~~~~~~~~~~")
println("Ran ", num_experiments, "experiments in: ", total_time)
println("Average: ", avrg)
