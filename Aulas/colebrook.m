function y = colebrook(f, D, e, Re)
% est� fun��o recebe o di�meto do tuboo, rigosidade e o n�mero
% de Reynolds Re do escoamento e o fator de atrito f
%
% e retorna o res�duo da equa��o de colebrook

y = 1./sqrt(f)+2*log10(...
    e/3.7/D+2.51/Re./sqrt(f));

end