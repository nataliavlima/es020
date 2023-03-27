clc; clear; close all force;


x = 0:1:500;
L = 500;  % cm
E = 50000; % kN/cm2
I = 35000; % cm4
w0 = 2.75; % kN/cm



% a) Deflexao (y)
y = w0*(-x.^5+2*L^2*x.^3-L^4*x)/(120*E*I*L);

% b) Inclinacao
theta = diff(y);  % diff = derivada

% c) Momento fletor 
M =  E*I*diff(y,2);

% d) Esforco cortante
V =  E*I*diff(y,3);

% e) Carregamento
W = -E*I*diff(y,4);


% Grafico A e B
figure

subplot(2,1,1); plot(x(:,1:length(y)), y);title('Deflexão (y) pela distância (x)'); 
xlabel('x (cm)');
ylabel('y (cm)');

subplot(2,1,2); plot(x(:,1:length(theta)), theta);title('Inclinação (\theta) pela distância (x)');
xlabel('x (cm)');
ylabel('\theta');

figure
% Grafico C, D e E
subplot(3,1,1); plot(x(:,1:length(M)), M); title('Momento fletor (M) pela distância (x)');
xlabel('x (cm)');
ylabel('M (kN.cm)');

subplot(3,1,2); plot(x(:,1:length(V)), V);title('Esforço cortante (V) pela distância (x)');
xlabel('x (cm)');
ylabel('V (kN)');

subplot(3,1,3); plot(x(:,1:length(W)), W);title('Carregamento (W) pela distância (x)');
xlabel('x (cm)');
ylabel('W (kN/cm)');