clc; clear; close all force;

x = 0:0.01:2*pi; % declara o tamanho de eixo x: 0 = num inicial, 0.01 = intervalo entre x's, 2*pi = ultimo valor do eixo x 
y = sin(x);

plot(x,y)

%%
y = -4:1e-3:4;
x1 = y.^2;    % indica que estou mudando a operacao matricial de elemento para elemento
x2 = y.^2/2;
figure
plot(x1,y, x2, y)
xlabel('x')
ylabel('y')
legend('y^2', 'y^2/2', 'location', 'best')
grid on
title('(a) parábola')
