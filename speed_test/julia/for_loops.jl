outerloop = 10000 # outer loop size
innerloop = 10000 # inner loop size
num_experiments = 10 # number of experiments
total_times = zeros(num_experiments)

println(outerloop, "x", innerloop, " Nested For Loops")

# run nested loops
for i = 1 : num_experiments
    counter = 0
    t1 = time_ns() / 1000000000
    for j = 0 : outerloop-1
        counter2 = 0
        for k = 0 : innerloop-1
            counter2+=k
        end
        counter+=counter2
    end
    
    t2 = time_ns() / 1000000000
    println("Nester Loops ", i, " of ", num_experiments, "    Took: ", t2-t1, "seconds")
    total_times[i] = t2-t1
    println("counter ", counter)
end

total_time = sum(total_times)
avrg = total_time/num_experiments
println("~~~~~~~~~~~~~~~")
println("Ran ", num_experiments, "experiments in: ", total_time)
println("Average: ", avrg)
