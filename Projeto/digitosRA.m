function [d] = digitosRA(RA)
% Pega o RA de entrada (string) e converte num vetor (d) de inteiros com 
% cada digito do RA ser uma posicao do vetor

ra = str2num(RA);
format short
r1 = rem(ra, 100000);
d1 = ra/100000 - r1/100000;

r2 = rem(r1, 10000);
d2 = r1/10000 - r2/10000;

r3 = rem(r2,1000);
d3 = r2/1000 - r3/1000;

r4 = rem(r3,100);
d4 = r3/100 - r4/100;

r5 = rem(r4,10);
d5 = r4/10 - r5/10;

r6 = rem(r5, 1);
d6 = r5 - r6;

d = [d1 d2 d3 d4 d5 d6];
end