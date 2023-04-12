function h = RA185483_L03_03() 
% Essa função retorna o valor da altura de uma esfera que fica para
% fora da água devido ao empuxo, de modo que:
%
% F Peso = Empuxo
% m*g = p*V*g
% p1*V1 = p2*V2
% p1*Vtot - p2*Vpar = 0

pEsf = 200;      % kg/m^3
pAgua = 1000;    % kg/m^3
r = 1;           % m

%Vtot = 4*pi*r^3/3;
%Vext = pi*h^2*(3*r-h)/3;
%Vpar = Vtot - Vext;


f = @(h) (pEsf * 4*pi*r^3/3)-(pAgua*(4*pi*r^3/3 - pi*h^2*(3*r-h)/3));
 %fplot(f)

format long;
opt = optimset('display','iter');
h = fzero(f, 1.5 , opt);


 end