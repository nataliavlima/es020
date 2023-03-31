clc; clear; close all force;

p = @(x) 63*x.^3 - 183*x^2+97*x + 55;


figure;
fplot(p, [-10 10])

x1 = bisseccao(p, -10,10)
x2 = bisseccao(p, 1.5,1.6)
x1 = bisseccao(p, 1.6,1.7)