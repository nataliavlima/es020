function [theta] = RA185483_L05_02()
f= @(x) [150*cosd(x(1)) + 180*cosd(x(2))-200*cosd(75)-200
         150*sind(x(1)) + 180*sind(x(2)) - 200*sind(75)];

x0 = [1 1];
x = fsolve(f, x0);


theta = [x(1) x(2)]'

end
