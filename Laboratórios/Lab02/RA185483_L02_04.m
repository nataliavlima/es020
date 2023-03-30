function [saida] = RA185483_L02_04(xy)

% A função verifica se dados n pontos reais, se cada ponto pertence ou não ao quarto de círculo unitário.


n =length(xy);

X = xy(1,:); % determina X como a primeira linha da matriz
Y = xy(2,:); % determina Y como a segunda linha da matriz

xy = [2,n];   
saida = [1,n];


for i=1:n
    a = X(i)^2 + Y(i)^2;
    if(a <= 1) && (X(i) >= 0) && (Y(i) >= 0)
        saida(i) =  1;  % se a tiver dentro do raio do circulo, atribuo 1 na matriz de saida
    else
        saida(i)= 0;
    end 
   
end
saida;



end