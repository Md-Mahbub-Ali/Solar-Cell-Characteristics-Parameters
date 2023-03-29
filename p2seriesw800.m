clc
clear all
close all

%2 panel series 800W/m2

v = [0;2;5;6;7;9;10.5;12;14;16.5;18;19;20.1;21;22;23.2;24.3;26;27;27.5;28.5;29.5;31.0;32.5;34.5;40.6]
i= [317;316;315;315;313;312;312;310;308;305;302;301;300;300;296;292;290;284;281;280;272;270;265;260;235;0]
%  L = length( v ) 
%  L2 = length( i ) 
% p = v.*i

Psun = 800;
[P,Pmax,Vmax,Imax,x,Isc,Voc] = maxpower_plot(v,i)
[ ff,eff ] = fillfactor_efficiency(Vmax,Imax,Isc,Voc,Psun)