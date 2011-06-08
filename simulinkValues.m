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

Ka = acker(Aa,Ba,[-3 -3 -3])
