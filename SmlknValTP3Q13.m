clc; clear all; close all;

%% 1.3 Simulink values TP3 automatique

a = -2;

c = 1;
d = [0 0];

B = 1;
E = 1;
BE = [B E];

%Calcul de Ka:
Aa = [-2 0;1 0];
Ba = [1;0];
Ca = [1 0];

Ka = acker(Aa,Ba,[-3 -3])

% Fonction de transfert
N = 3;
h = ones(1,N)

for h = 1:N
    Bbf =Ba*h + [0;-1]
    
    [num1,den1] = ss2tf(Aa-Ba*Ka,Bbf,Ca,0);
    SYS2 = tf(num1,den1)
    figure(2)
    hold on
    bode(SYS2)
    grid on
end