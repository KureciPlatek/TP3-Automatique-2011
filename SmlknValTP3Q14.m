clc; clear all; close all;

%% TP3 1.4 Rejet de perturbations rampe

% les matrices:

Aa = [-2 0 0;0 0 1;1 0 0];
Ba = [1;0;0];
Ea = [1;0;0];
Da = [0;0;-1];

Ca = [1 0 0];

a = -2;
c = 1;
d = [0 0];
B = 1;
E = 1;
BE = [B E];

% Correcteur Ka:
P = [-3 -3 -3];
Ka = acker(Aa,Ba,P)


%Fonction de sensibilite:
[num,den] = ss2tf(Aa-Ba*Ka,Ea,Ca,0);
SYS = tf(num,den)

bode(SYS)
grid on
title('Fonction de sensibilite')