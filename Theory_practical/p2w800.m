clc
clear all
close all

%panel 02 800W/m2
Psun = 800;
v = [0;1.6;3.2;4;4.6;5.2;6;6.8;7.4;8;8.6;9.3;10;11.8;12.4;13;13.7;16.8;17.3;17.6;18;18.2;18.4;18.5;18.65;18.8;18.9;19;19.2;19.28;19.32;19.4;19.44;19.58;19.6;19.7;19.76;19.8;20.6]
i= [335;331;330;326;323;321;320;315;311;310;308;303;302;298;293;293;291;290;290;285;283;282;276;271;269;258;250;248;238;230;225;220;215;204;196;180;160;125;0]
%  L = length( v ) 
%  L2 = length( i ) 
p = v.*i

[P,Pmax,Vmax,Imax,x,Isc,Voc] = maxpower_plot(v,i)
[ ff,eff ] = fillfactor_efficiency(Vmax,Imax,Isc,Voc,Psun)
% figure(10)
% plot(v,i,'LineWidth',2)
% hold on 
% plot(v,p,'LineWidth',2)
% 
% xlabel('Voltage')
% ylabel('Current, Power')