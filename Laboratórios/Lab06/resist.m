function [S] = resist(y)
B = 54*1e-3;  % m
H = 75*1e-3;  % m


a = B*(H-y)/H; % (1) base do retangulo
b = (B - a)/2; % (2) base do triangulo
A = (B+a)*y/2; % (3) area

Qx = (a*y)*y/2+2*(b*y/2)*y/3;     % (4)  primeiro momento de area ao redor do eixo x
d = Qx/A;                       % (5) Localizacao do centroide
c = y-d;                        % (6) Distancia para calculo do S
Ix = a*y.^3/3+2*(b*y.^3/12);      % (7) Segundo momento de area ao redor do eixo x
I_x = Ix-A*d^2;                 % (8) Teorema dos eixos paralelos
S = I_x/c;                      % (9) Modulo de resistencia a flexao
 

end