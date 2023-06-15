function [t, y] = RA185483_L09_02(A0,T,n)
t = [0:0.01:4*T]'

for j=1:n
    y = sum(((4.*A0)./((2.*j-1).*pi).*sin((2.*pi.*(2.*j-1))./T.*t)),2)
end


