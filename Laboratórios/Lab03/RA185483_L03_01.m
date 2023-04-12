function d = RA185483_L03_01()

k1 = 40e3   % g/s^2
k2 = 40     % g/(s^2m^0.5)
m = 95      % g
g = 9.81    % m/s^2
h = 0.43    % m


y =@(d) (2*k2*d^(5/2))/5 + 1/2*k1*d^2 - m*g*d - m*g*h;

format long;
opt = optimset('display','iter');
d = fzero(y,0.5,opt);

end