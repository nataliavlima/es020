clc; clear; close all force;

Tf = 32:3.6:93.2;          % Temperatura em F
Tc = 5 ./ 9 .*(Tf - 32);   % Temperatura em C


d= 5.5289*1e-8 .*(Tc).^3 -8.5016*1e-6.*(Tc).^2+6.5622*1e-5.*Tc+0.99987;

plot(Tc, d);
xlabel('Temperatura (°C)');
ylabel('Densidade da água (g/cm^3)')