function H = RA185483_L03_02()

g = 9.81    % m/s^2
L = 4       % m
t = 2.5     % s
v = 5       % m/s

y =@(H) (sqrt(2*g*H)*tanh(sqrt((2*g*H)/(2*L))*t))-v;

format long;
opt = optimset('display','iter');
H = fzero(y,1, opt);

end