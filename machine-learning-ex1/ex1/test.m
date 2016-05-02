clear ; close all; clc

data = load('ex1data1.txt');
X = data(:, 1); y = data(:, 2);
m = length(y); % number of training examples


X = [ones(m, 1), data(:,1)]; % Add a column of ones to x
theta = zeros(2, 1); % initialize fitting parameters

iterations = 1500;
alpha = 0.01;

%t0 = [-100:1:100];
%t1 = [-10:1:10];
%n0=length(t0);
%n1=length(t1);
%J=zeros(n1,n0);
%for a=[1:n0]
%    for b=[1:n1]
%        J(b,a)=min(2000, computeCost(X,y,[t0(a);t1(b)]));
%    end
%end
%surf(t0,t1,J);
%xlabel('t0');
%ylabel('t1');
