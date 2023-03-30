function [atan_x] = RA185483_L02_01(x,eps)
% essa função calcula uma aproximação para atan(x, eps)
% dados x e eps reais
% A função retorna atan_x = atan(x)

soma = 0;
termo = 1;
w = x;    % w sera usado para trabalhar o valor anterior de x para otimizar a exponencial
sinal = -1;
n = 0;


    if(x >= -1) && (x <= 1)  % atan(x) = somatorio ...
        
        while abs(termo) > eps  
            sinal = -sinal;
            termo = w/(2*n+1);
            soma = soma + sinal*termo;
            w = w*x*x;
            n = n + 1;
    
        end
           atan_x = soma;

    else % Para |x| <= 1 a formula do arco tg muda
        a = 1/x;
        w = a;
         while abs(termo) > eps
            sinal = -sinal;
            termo = w/(2*n+1);
            soma = soma + sinal*termo;
            w = w*a*a;
            n = n + 1;
    
        end
           atan_x = pi/2- soma;

    end
end

