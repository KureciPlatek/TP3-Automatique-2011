clc; clear all; close all;

%% TP3 1.6 Rejet de perturbations sinusoide +1

a = -2;
c = 1;
d = [0 0];
B = 1;
E = 1;
BE = [B E];

w= 2;

Aa = [-2 0 0 0;
       0 0 1 0;
       0 0 0 1;
       1 0 -4 0];
Ba = [B;0;0;0];
Ea = [1;0;0;0];
Ca = [1 0 0 0];

% Correcteur Ka:
P = [-3 -3 -3 -3];
Ka = acker(Aa,Ba,P)


%Fonction de sensibilite:
[num,den] = ss2tf(Aa-Ba*Ka,Ea,Ca,0);
SYS = tf(num,den)

bode(SYS)
grid on
title('Fonction de sensibilite')

% Fonction de transfert
N = 3;

for h = 1:N
    Ba_bf =Ba*h + [0;0;0;-1];    
    [num1,den1] = ss2tf(Aa-Ba*Ka,Ba_bf,Ca,0);
    SYS2 = tf(num1,den1)
    figure(2)
    hold on
    bode(SYS2)
    grid on
end
legend('h = 1','h = 2','h = 3')
title('Fonction de tranfert en boucle ferm�e')