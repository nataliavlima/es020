
function y = my_exp(x, eps)
% essa fun��o calcula uma aproxima��o para exp(x, eps)
% dados x e eps reais
% A fun��o retorna y = exp(x)
%
% See also: exp

    soma = 0;
    termo = 1;
    n = 0;
   
%    while ( x^n/factorial(n)> eps)
%      soma = soma + x^n/factorial(n);
%      n = n+1;
%    end

  
  while (termo>eps)
      termo = termo*x/n;
      soma=soma + termo;
      n = n+1;
  end
    y = soma;
end