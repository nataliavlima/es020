function y = colebrook(f, D, e, Re)
% está função recebe o diâmeto do tuboo, rigosidade e o número
% de Reynolds Re do escoamento e o fator de atrito f
%
% e retorna o resíduo da equação de colebrook

y = 1./sqrt(f)+2*log10(...
    e/3.7/D+2.51/Re./sqrt(f));

end