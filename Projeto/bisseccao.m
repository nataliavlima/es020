function p = bisseccao(f,a,b)
% Esta função determina uma aproximação para f(p)=0, através
% do método da bissecção.
% Esta função recebe um ponteiro para função f (function handle)
% e os extremos do intervalo [a,b] e retorna a raiz p da equação.

    if (f(a)*f(b)>0) % a função não muda de sinal
        error('Função não muda de sinal nos valores dados');
    end

    N0 = 1000; % número máximo de iterações
    TOL = 1e-8; % tolerância do processo iterativo
    TOL_x = 1e-8;
    TOL_fun = 1e-8;
    
    i = 1; % iterador
    fa = f(a);
    encontrou = false; % variável que me diz se encontrou a raiz
    
    while (i<=N0)
        p = (a+b)/2;
        fp = f(p);
        
%         if (fp==0 || (b-a)/2<TOL)
        if (abs(fp)<TOL_fun && (b-a)/2<TOL_x)
            %return; % encerra a função
            encontrou  = true;
            fprintf('Raiz encontrada após %d iterações\n',i)
            break; % encerra o loop
        end
        i = i+1;
        if (fa*fp>0)
            a = p;
            fa = fp;
        else
            b = p;
        end
    end
    
    if (~encontrou)
        error('Não encontrou a raiz em %d iterações',N0)
    end
end



