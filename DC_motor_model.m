%% DC motor project
% x1 = current [A]
% x2 = rotation speed [rad/s]
%% motor parameters
Ra = 1.203; %armor resistance of the motor
L = 0.005584; %impedence of the coils
Ke = 0.08574; %motor velocity
Kt = 1.0005*Ke; %torque constant
J1 = 0.00014166; %motor intertia
fr = 0.000245; %friction coefficient
Ts = 0.001; %sampling time 1ms
%% system limitations
imax = +2; %minimum current
imin = -imax;
wmax = 150;
wmin = -wmax;
Vmax = 2;
Vmin = 0;


%% System matrices
A = [-Ra/L -Ke/L; Kt/J1 -fr/J1];
B = [1/L; 0];
C = [1 0 ; 0 1];
D = [0 ; 0];

winc = [1 ;1]; %parameters uncertanties
Bw =[0.0085 0.0006; 0.0603 0.0002];

