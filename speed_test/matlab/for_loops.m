% Script that runs nested for loops
outerloop = 10000; % outer loop size
innerloop = 10000; % inner loop size
num_experiments = 10; % number of experiments
total_times = zeros(num_experiments,1);

msg = strcat(num2str(outerloop), "x", num2str(innerloop)," Nested For Loops");
disp(msg)

% run nested loops
for  i =1: num_experiments
    counter = 0;
    tic;
    for j =0:outerloop-1
        counter2 = 0;
        for k =0:innerloop-1
            counter2=counter2+k;
        end
        counter=counter+counter2;
    end
    t = toc;
    msg = strcat("Nester Loops  ", num2str(i+1), " of ", strcat(num_experiments), "    Took: ", num2str(t), " seconds");
    disp(msg)
    total_times(i) = t;
    disp(counter)
end

total_time = sum(total_times);
avrg = total_time/num_experiments;

disp("~~~~~~~~~~~~~~~")
msg = strcat("Ran ", num2str(num_experiments), " experiments in: ", num2str(total_time));
disp(msg)
msg = strcat("Average: ", num2str(avrg));
disp(msg)
