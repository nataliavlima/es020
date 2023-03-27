clc; clear; close all force;

eps = 1e-17;

n = 1;
soma = 0;
while 1/n^2 > eps
    soma = soma + 1/n^2;
    n = n + 1;
end

pie = sqrt(6*soma);
[pie pi abs(pie - pi)]