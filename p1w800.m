clc
clear all
close all

%panel 01 800W/m2
Psun = 800;
v = [0;0.7;2.22;5;5.8;7.6;9;9.8;10.92;12.75;13.36;13.95;14.4;15.2;15.7;16.7;17;17.21;17.43;17.8;17.92;18.2;18.3;18.5;18.7;18.8;18.95;19;19.1;19.2;19.25;19.39;19.55;19.6;19.75;20.6]
i= [349;348;345;344;340;339;336;332;330;330;329;325;322;321;317;316;314;310;303;301;296;296;292;289;288;276;270;266;252;243;228;203;193;174;136;0]
p = v.*i

[P,Pmax,Vmax,Imax,x,Isc,Voc] = maxpower_plot(v,i)
[ ff,eff ] = fillfactor_efficiency(Vmax,Imax,Isc,Voc,Psun)

figure(10)
plot(v,i,'LineWidth',2)
hold on 
plot(v,p,'LineWidth',2)

% plot(v,i,V_calc,Imax,':.','LineWidth',2)
% hold on 
% plot(v,p,V_calc,Imax,':.','LineWidth',2)

xlabel('Voltage')
ylabel('Current, Power')