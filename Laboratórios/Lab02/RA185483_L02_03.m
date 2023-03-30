function [Fn] = RA185483_L02_03(n)
% A função calcula a sequência de fibonacci dado um tamanho N de argumentos

if(n >= 3)
    F(1) = 1;
    F(2) = 1;
    
    for a = 3:n
        F(a) =  F(a-1) + F(a-2);
        Fn = F(a);
    end 
end

if(n == 1) || (n == 2)
    Fn = 1;
end

end