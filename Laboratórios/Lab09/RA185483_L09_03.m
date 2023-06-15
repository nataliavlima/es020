function [dt, tn, df, fmin, fmax, h] = RA185483_L09_03()
fs = 128; % frequência de amostragem [Hz]
dt = 1/fs; % passo de tempo
n = 64; % número de pontos

t = (0:n-1)*dt;
y = 1.5+1.8*cos(2*pi*12*t) + 0.8*sin(2*pi*20*t) - 1.25*cos(2*pi*28*t);


tn = n/fs
df = fs/n
T = t(end); % comprimento total da amostra (s)
fmax = 0.5*fs; % máxima frequência detectável, 

% frequência de Nyquist
fmin = 1/T; % menor frequência detectável
Y = fft(y)/n; % calcula a transformada de Fourier

f = linspace(fmin,fmax,n/2);
a0 = Y(1); % média da função
% Y(1) = [];
h =figure
subplot(2,1,1)
stem(f,abs(Y(1:n/2)))
subplot(2,1,2)
stem(f,angle(Y(1:n/2)))

end