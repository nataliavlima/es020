function [A0, A1, B1, C1, dia_max] = RA185483_L09_01()
 d = 15:30:345;
 T = [3.4, 4.7, 8.5, 11.7, 16, 18.7, 20.5, 19.7, 17.1, 12.7, 7.7, 5.1];

w0 = (2*pi)/365; 
Z = [ones(length(d),1) cos(w0*d).' sin(w0*d).'];
a = Z\(T.');

T_ajuste = @(d) a(1) + a(2)*cos(w0*d) + a(3)*sin(w0*d);

dmin = fminbnd(T_ajuste, 0, 365);
dmax = fminbnd(@(d) -T_ajuste(d), 0, 365);

Tmin =  T_ajuste(dmin);
Tmax = T_ajuste(dmax);

A0 = a(1)
A1 = a(2)
B1 = a(3)
C1 = Tmax - Tmin
dia_max = dmax

end