data = load('ex1data2.txt');
X = data(:, 1:2);
y = data(:, 3);
m = length(y);
alpha = 0.01;
num_iters = 400;
theta = zeros(3, 1);
