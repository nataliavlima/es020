function [L,Izz,M0] = dados_problema(d)
d5 = d(5);
d6 = d(6);

if(d5 == 0) && (d6 == 0)
    L = 5;
end

L = 10*d5 + d6;

%% Secao transversal
d3 = d(3)
d4 = d(4)

b = (10*d3 + 2*d4)*0.01         % b convertido em m
h = 3*b

%% Carregamento

d1 = d(1);
d2 = d(2);

M0 = (10*d1 + d2)*1000      % M0 em N.m


%% Segundo Momento da area
Izz = (b*h^3)/12;
end