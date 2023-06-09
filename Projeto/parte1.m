RA = '185483';
d = digitosRA(RA);
[L,Izz,M0] = dados_problema(d);

P = M0/L;
E = 210e9;


%% Momento Fletor
Mz = @(x) P*L - M0 -P*x + M0*sing(x,L/2,0);

x = [0:0.05:L];

Mz2 = momentoFletor(P,L,M0,x);


figure
fplot(Mz, [0 L], 'b', 'LineWidth',2);
hold on;

plot(x, Mz2, 'g','LineWidth',1);
title('Momento Fletor Interno');
plot(41.5, 9000, 'or', 'LineWidth', 0.05, 'MarkerFaceColor','r');
plot(41.5, -9000, 'or', 'LineWidth', 0.05, 'MarkerFaceColor','r');
grid on;
xlabel('x(m)'); 
ylabel('Mz(N.m)');
legend('Mz - Singularidade', 'Mz - Expressão', 'Módulo Mz_{Max}','Location','southeast');
hold off;

%% Deflexao
P1 = 0;
v1 = @(x) ((P1*L-M0)*(x.^2/2)-(P1/6)*x.^3+(M0/2)*(sing(x, L/2,2)))/(E*Izz);

P2 = (1/2)*(M0/L);
v2 = @(x) ((P2*L-M0)*(x.^2/2)-(P2/6)*x.^3+(M0/2)*(sing(x, L/2,2)))/(E*Izz);

P3 = M0/L;
v3 = @(x) ((P3*L-M0)*(x.^2/2)-(P3/6)*x.^3+(M0/2)*(sing(x, L/2,2)))/(E*Izz);

P4 = 2*M0/L;
v4 = @(x) ((P4*L-M0)*(x.^2/2)-(P4/6)*x.^3+(M0/2)*(sing(x, L/2,2)))/(E*Izz);


figure;
fplot(v1, [0 L]);
hold on;
fplot(v2, [0 L]);
fplot(v3, [0 L]);
fplot(v4, [0 L]);
grid on;
xlabel('x(m)'); 
ylabel('v_y(m)'); % ver unidade
legend('P = 0', 'P = (1/2)*(M_0/L)', 'P = M_0/L', 'P = 2*M_0/L', 'Location','northwest');

hold off;

%% Tensao
d3 = d(3); d4 = d(4);
b = (10*d3 + 2*d4)*0.01;         % b convertido em m
h = 3*b;

Sxx = @(x,y) -Mz(x)*y/Izz;

figure
fsurf(Sxx,[0 L -h/2 h/2]);
xlabel('x(m)'); 
ylabel('y(m)'); % ver unidade
legend('\sigma_{xx}', 'Location','northwest');

view(2);

%% Parte 2
v = @(P5) ((P5*L-M0)*(L.^2/2)-(P5/6)*L.^3+(M0/2)*(sing(L, L/2,2)))/(E*Izz);


% v = 0 entre P = 236 e 246
P0 = fzero(v, 246)
P0b = bisseccao(v,236,246)    % Raiz por bisseccao
% Usando fzero e bisseccao ele encontrou a mesma raiz
% Para bisseccao usei 236 e 246 pois plotando v dava para
% ver que era entre esses numeros que cruzava o eixo x


figure;
fplot(v, [0 2*M0/L]);
hold on;
plot(P0,v(P0), 'or');
%plot(P0b, v(P0b), '^r');
hold off;

xlabel('P'); 
ylabel('v'); % ver unidade
legend('Deflexão', 'Deflexão na extremidade nula',  'Ponto mínimo','Ponto máximo', 'Location','best');


%% Deflexao Maxima
%P = M0/L;
v = @(x) ((P0*L-M0)*(x.^2/2)-(P0/6)*x.^3+(M0/2)*(sing(x, L/2,2)))/(E*Izz);

x_max = fminbnd(@(x) -v(x), 0, L)
x_min = fminbnd(v, 0, L)

v_max = v(x_max)
v_min = v(x_min)

x_nulo = fzero(v, 0)
v_nulo = v(x_nulo)
%P0b = bisseccao(v,236,246) 

figure;
fplot(v, [0 L]);
hold on;
plot(x_max, v_max,'or', 'LineWidth', 1);
plot(x_min, v_min, '^r', 'LineWidth', 1);
plot(x_nulo, 0, 'xr', 'LineWidth', 1);
xlabel('x (m)'); 
ylabel('v'); % ver unidade
legend('Deflexão', 'Deflexão Máxima',  'Deflexão Mínima','Deflexão Nula','Location','best');

hold off;

%% Parte 4
p = 7850;
g = 9.81;

w0 = p*b*h*g;
P = M0/L;

A = [L        1   0
    (3*L/2)   1   0
    1         0   1];

% Para P = M0/L:
b1 = [((L^2/2)*w0-M0)  ((3*L/2)^2/2*w0 - M0 -P*(3*L/2-L))  (3*L/2*w0 -P) ].';
r1 = A\b1

% Para w0 = 0
w0 = 0;
b2 = [((L^2/2)*w0-M0)  ((3*L/2)^2/2*w0 - M0 -P*(3*L/2-L))  (3*L/2*w0 -P) ].';
r2 = A\b2

% Para w0 = 0 e P = 0
P = 0;

b3 = [((L^2/2)*w0-M0)  ((3*L/2)^2/2*w0 - M0 -P*(3*L/2-L))  (3*L/2*w0 -P) ].';
r3 = A\b3

% Para w0 = 0, M0 = 0 e P = M0/L;
P = M0/L;
M0 = 0;

b4 = [0  ( -P*(3*L/2-L))  ( -P) ].';
r4 = A\b4

T = table(r1, r2, r3, r4)
