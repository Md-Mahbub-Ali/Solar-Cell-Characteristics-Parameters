clc
clear all
close all

%2 panel parallal 800W/m2

v = [0;0.5;4;8.2;9.2;10.5;12.8;15.2;16;17.1;17.4;17.8;18;18.3;18.4;18.5;18.6;18.7;18.8;18.9;19;19.1;19.2;19.3;19.4;19.5;19.6;19.7;19.8;20.5]
i= [610;605;590;585;582;574;560;556;540;525;510;508;500;496;465;450;430;415;395;365;345;322;295;274;260;235;215;170;135;0]
%  L = length( v ) 
%  L2 = length( i ) 
% p = v.*i

Psun = 800;
[P,Pmax,Vmax,Imax,x,Isc,Voc] = maxpower_plot(v,i)
[ ff,eff ] = fillfactor_efficiency(Vmax,Imax,Isc,Voc,Psun)