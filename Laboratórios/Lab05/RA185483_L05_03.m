function [v, theta, t] = RA185483_L05_03()
f = @(x) [x(1)*cosd(x(2))*x(3) - 300
          -(1/2)*(9.81)*x(3)^2 + x(1)*sind(x(2))*x(3) - 61
          -9.81*x(3) + x(1)*sind(x(2))- tand(-45)*x(1)*cosd(x(2))];

x0 = [0.5 0.5 0.5];
x = fsolve(f, x0);


v = x(1)
theta = x(2)
t = x(3)

end