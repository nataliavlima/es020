function [y] = RA185483_L06_03()


f = @(y) -resist(y);
[y,fx] = fminbnd(f,0, 0.075)

end