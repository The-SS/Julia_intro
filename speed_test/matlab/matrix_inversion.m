mat_size = 5000; % matrix size
num_experiments = 10; % number of experiments
total_times = zeros(num_experiments,1);

msg = strcat(num2str(mat_size), "x", num2str(mat_size)," Matrix inversion script");
disp(msg)

% generate random matrix and perform matrix inversion
for i =1: num_experiments
    mat = rand(mat_size, mat_size);
    tic;
    mat_inv = inv(mat);
    t= toc;
    msg = strcat("Matrix ", num2str(i), " of ", strcat(num_experiments), "    Took: ", num2str(t), " seconds");
    disp(msg)
    total_times(i) = t;
end
total_time = sum(total_times);
avrg = total_time/num_experiments;
disp("~~~~~~~~~~~~~~~")
msg = strcat("Ran ", num2str(num_experiments), " experiments in: ", num2str(total_time));
disp(msg)
msg = strcat("Average: ", num2str(avrg));
disp(msg)
