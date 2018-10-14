% Exercicio 6 - Lista 1
% Autor: Bruno Peixoto
% Data: 29/09

% Frequencias de amostragem
fs1 = 4;
fs2 = 20;

Ts1 = 1/fs1;
Ts2 = 1/fs2;

% Planta
Gs = tf([1], [1 p 0]);

% Controlador
wn = 4.46;
zeta = 0.597;
K = wn^2;
p = 2*zeta*wn;
c = 0.7;

Cs = K*tf([1 c], [1 p]);
num = Gs.num{1};
den = Gs.den{1};

% Item A
runsim(Cs, Ts1, 'ex6sima');
plotuy(u, y);

runsim(Cs, Ts2, 'ex6sima');
plotuy(u, y);

% Item B
runsim(Cs, Ts1, 'ex6simb');
plotuy(u, y);

runsim(Cs, Ts2, 'ex6simb');
plotuy(u, y);
