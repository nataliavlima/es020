function [Mz2] = momentoFletor(P, L, M0, x)
% Funcao calcula a expressao do Momento Fletor Interno
% definida por partes

for y = 1:length(x)
    if x(y) < (L/2)
        Mz2(y) = P*(L-x(y)) - M0;
    else
        Mz2(y) = P*(L - x(y));
    end
end