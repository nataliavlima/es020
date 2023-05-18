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
