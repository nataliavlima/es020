function [x] = RA185483_L04_02()
A = [ 25  -5 -10
      -5  10 -5
      -10 -5 15];

b = [100 50 100].';

y = A\b; 
x = y'

end