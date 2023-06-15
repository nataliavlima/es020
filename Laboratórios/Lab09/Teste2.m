clc; clear; close all force;
T = 0.25    % dado pela imagem
A0 = 2      % grafico
n = 10;
[t, y] = RA185483_L09_02(A0,T,n);
plot(t,y)
