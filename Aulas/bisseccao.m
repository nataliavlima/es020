function p = bisseccao(f, a, b)
% Esta fun��o determina uma aproxima��o para f(p)=0, atrav�s
% do m�todo da bissec��o
% Esta fun��o recebe um ponteiro para a fun��o f (function handle)
% e os extremos do intervalo [a,b] e retorna a raizp da equa��o.
    if(f(a)*f(b) > 0)
        error('A fun��o nao muda de sinal com os pontos dados')
    end

    N0 = 1000; % n�mero maximo de intera��es
    TOL_fun = 1e-8; % toler�ncia do processo interativo
    TOL_x = 1e-8;
    
    i = 1; % iterador
    fa = f(a);
    encontrou = false; % vari�vel que me diz se encontrou a raiz
    
    while (i<= N0)
       p = (a+b)/2;
       fp = f(p);
%       if (fp == 0 || (b-a)/2<TOL)
       if (abs(fp)<TOL_fun && (b-a)/2<TOL_x)
           % return; % encerra a fun��o
           encontrou = true;
           break;    % encerra o loop
       end
       
       if (fa*fp>0)
           a = p;
           fa = fp;
       else
           b = p;
       end
   
    end    
   
    if(~encontrou)  % ~ = not
        error('N�o encontrou a raiz em %d itera��es', N0)
    end

end