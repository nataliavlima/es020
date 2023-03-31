clc; clear; close all force;

a = 2;
f = @(x) x.^2 - a;

x = bisseccao(f,1,2)
abs(x-sqrt(a))