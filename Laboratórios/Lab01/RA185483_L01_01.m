clc; clear; close all force;

% Exercicio 01.a

% matriz A onde cada linha e' dada pelos elementos entre virgulas
% [num inicial]:[intervalo entre num]:[ultimo num]
A=[2:4;3:2:7;5:-1:3];   

% A = 2 3 4
%     3 5 7
%     5 4 3

% (') faz matriz transposta de A
A=A';

%  A = 2 3 5
%      3 5 4
%      4 7 3

% Cria matriz nova eliminando a segunda coluna da matriz
A(:,2)=[];

% A = 2 5
%     3 4
%     4 3

% A vira matriz com a segunda coluna da A antiga (:,2), a coluna nova declarada [0 7 2]' e
% a 3 coluna recebe a primeira da coluna antiga (:,1)
A=[A(:,2) [0 7 2]' A(:,1)];

% A = 5 0 2
%     4 7 3
%     3 2 4

% Exercicio 01.b

% Cria matriz A de 3x2 com os itens declarados [1 2; 3 4; 5 6]
% Seleciona a 3a linha de A (3,:) e faz a transposta (')
A=[1 2; 3 4; 5 6]; A(3,:)';

% A = 5
%     6

% Exercicio 01.c

% Cria matriz y de 1 linha com numero inicial 0 e ultimo 4
% os numeros das colunas entre eles recebem intervalo de 0.6 de um para o
% outro, depois transpoe y
y=[0:0.6:4]' ;

% y = 0
%     0.6000
%     1.2000
%     1.8000
%     2.4000
%     3.0000
%     3.6000


% Exercicio 01.d

% Ordem de operacao: divisao e depois soma 
a=1; b=4; c=5;
a+b/c;

% 1 + (4/5) = 1.8000