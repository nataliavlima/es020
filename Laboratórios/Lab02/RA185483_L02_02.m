function [r, theta] = RA185483_L02_02(x,y)
% Função para calcular a coordenada cartesiana a partir de suas coordenadas polares

if(x>0)
    theta = atan(y/x);
end

if(x<0) && (y>0)
    theta = atan(y/x) + pi;
end 

if(x<0) && (y < 0)
    theta = atan(y/x) - pi;
end 


if(x<0) && (y == 0)
    theta = pi;
end

if(x==0) && (y>0)
    theta = pi/2;
end

if(x==0) && (y<0)
    theta = -pi/2;
end 


if(x==0) && (y==0)
    theta = 0;
end 

r = sqrt(x^2+y^2);