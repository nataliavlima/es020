clc; clear; close all force;

v = 10:10:80;
Ft = [25, 70, 380, 550, 610, 1220, 830, 1450];

F = 0.2741 .*v.^(1.9842);


plot(v, Ft, '^r', 'MarkerFaceColor', 'g');    % MarkerFaceColor = muda a cor interna do marcador
hold on
plot(v, F,':', 'LineWidth', 2.5, 'Color', '#808080');
xlabel('v = Velocidade (m/s)');
ylabel('F = Força (N)');
legend('eq', 'data', 'Location', 'Best');
