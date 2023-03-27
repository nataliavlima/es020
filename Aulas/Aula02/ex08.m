clc; clear; close all force;

x = 1;
eps = 1e-8;
ex = my_exp(x, eps);
[ex exp(x) abs(ex - exp(x))]