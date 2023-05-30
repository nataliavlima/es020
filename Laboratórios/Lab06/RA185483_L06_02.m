function [x1,x2] = RA185483_L06_02()
ka = 9;     % N/cm
kb = 2;     % N/cm
La = 10;    % cm
Lb = 10;    % cm
F1 = 2;     % N
F2 = 4;     % N



f = @(x) 1/2*ka*(sqrt(x(1)^2 + (La-x(2))^2)- La)^2 +1/2*kb*(sqrt(x(1)^2 + (Lb+x(2))^2)- Lb)^2-F1*x(1)-F2-F2*x(2)

[x,fx] = fminsearch(f,[1 1]')

x1 = x(1)
x2 = x(2)
end