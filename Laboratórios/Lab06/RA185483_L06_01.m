function [ri] = RA185483_L06_01()
q = 80;          % W/m
rw = 7.5*1e-3;   % m
k = 0.18;        % W/m.K
h = 14;          % W/(m^2.K)
Tair = 298;      % K



f = @(x) Tair + q/(2*pi) * (1/k * log((rw+x)/rw)+(1/h)*(1/(rw+x)));
[ri,fx] = fminbnd(f, 0, 1)


end