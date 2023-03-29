clc
clear all
close all

Psun = 400;
T_cel = 25;
%panel 2 800
v1 = [0;1.6;3.2;4;4.6;5.2;6;6.8;7.4;8;8.6;9.3;10;11.8;12.4;13;13.7;16.8;17.3;17.6;18;18.2;18.4;18.5;18.65;18.8;18.9;19;19.2;19.28;19.32;19.4;19.44;19.58;19.6;19.7;19.76;19.8;20.6]/36;
i1= [335;331;330;326;323;321;320;315;311;310;308;303;302;298;293;293;291;290;290;285;283;282;276;271;269;258;250;248;238;230;225;220;215;204;196;180;160;125;0]/1000;



%panel 2 400
v2 = [0;1;2;3;4.4;5.6;6.8;7.5;9.2;10.2;10.9;11.5;12;12.6;13.3;14;14.4;15;15.3;15.8;16.9;17.3;17.5;17.7;17.8;18.1;19.8]/36;
i2= [175;173;172;171;170;170;168;165;161;160;156;155;152;151;150;150;147;145;143;142;140;137;131;128;122;108;0]/1000;
 
[ P1,Pmax1,Vmax1,Imax1,x1,Isc1,Voc1 ] = maxpower_plot( v1,i1 );
[ P2,Pmax2,Vmax2,Imax2,x2,Isc2,Voc2 ] = maxpower_plot( v2,i2 );
[ n ] = ideality_factor( Voc1,Voc2,Isc1,Isc2,T_cel )
Isc1
Voc1
Isc2
Voc2
[ n1 ] = calc_n( Voc1,Voc2,Isc1,Isc2,T_cel );
[ I1,Is1 ] = I_thoery(v1,i1,n,Isc1,Voc1,T_cel)
[ I2,Is2 ] = I_thoery(v2,i2,n,Isc2,Voc2,T_cel)

figure(90)
 plot(v1,I1,'LineWidth',2)
 hold on 
 plot(v1,i1,'LineWidth',2)
 hold on 
plot(v2,I2,'LineWidth',2)
 hold on 
 plot(v2,i2,'LineWidth',2)
legend('I-V Curve Calculated 800W/m^2', 'I-V Curve Practical 800W/m^2','I-V Curve Calculated 400W/m^2', 'I-V Curve Practical 400W/m^2')
 xlabel('Voltage')
ylabel('Current')
