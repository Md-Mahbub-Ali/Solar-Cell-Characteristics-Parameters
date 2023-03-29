clc
clear all
close all

%panel 02 400W/m2

v = [0;1;2;3;4.4;5.6;6.8;7.5;9.2;10.2;10.9;11.5;12;12.6;13.3;14;14.4;15;15.3;15.8;16.9;17.3;17.5;17.7;17.8;18.1;19.8]
i= [175;173;172;171;170;170;168;165;161;160;156;155;152;151;150;150;147;145;143;142;140;137;131;128;122;108;0]
%  L = length( v ) 
%  L2 = length( i ) 
% p = v.*i

Psun = 400;
[P,Pmax,Vmax,Imax,x,Isc,Voc] = maxpower_plot(v,i)
[ ff,eff ] = fillfactor_efficiency(Vmax,Imax,Isc,Voc,Psun)