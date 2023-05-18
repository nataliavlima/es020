function [R, a, b] = RA185483_L05_01()
f= @(x) [(-4.3-x(1))^2+(3.06-x(2))^2-x(3)^2
            (5.22-x(1))^2+(-3.30-x(2))^2-x(3)^2
            (-1.14-x(1))^2+(2.27-x(2))^2-x(3)^2];
x0 = [0.1 0.1 0.1];
x = fsolve(f, x0);

R = x(3)
a = x(1)
b = x(2)



end