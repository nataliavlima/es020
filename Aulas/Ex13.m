clc; clear; close all force;

F0= 1.25; % N
q = 2e-5; % C
Q = 2e-5; % C
a = 0.85; % m
eps0 = 8.9e-12; % C^2/N.m^2

F = @(x) 1/4/pi/eps0*q*Q*x./...
    (x.^2+a^2).^(3/2);


f = @(x) F(x) - F0;


fplot(f, [0 20*a])

x1 = fzero(f, [0 0.5])
x2 = fzero(f, 1.3)