function p = raiz2(a0)
% esta função calcula uma aproximação para a raiz quadrada de 2
% dado uma estimativa inicial atraves do método babilonico

    a1 = a0/2 + 1/a0; % recorrencia

    if (abs(a1-a0) > 1e-6)  % criterio de parada
        p = a1;
    else
        p = raiz2(a1);
    end
end