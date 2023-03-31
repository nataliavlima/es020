clc; clear; close all force;

rho = 1.23;
mu = 1.79e-5;
D = 0.005;
V = 40;
e = 0.0015e-3; % m

Re = rho*V*D/mu;
g = @(f) colebrook(f,D,e,Re);
fplot(g, [0.008 0.08])
f = fzero(g,0.02)
