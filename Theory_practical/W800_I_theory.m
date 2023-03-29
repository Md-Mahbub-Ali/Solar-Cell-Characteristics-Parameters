clc
clear all
close all

Psun = 800;
T_cel = 25;
%panel 1 800
v1 = [0;0.7;2.22;5;5.8;7.6;9;9.8;10.92;12.75;13.36;13.95;14.4;15.2;15.7;16.7;17;17.21;17.43;17.8;17.92;18.2;18.3;18.5;18.7;18.8;18.95;19;19.1;19.2;19.25;19.39;19.55;19.6;19.75;20.6]/36;
i1= [349;348;345;344;340;339;336;332;330;330;329;325;322;321;317;316;314;310;303;301;296;296;292;289;288;276;270;266;252;243;228;203;193;174;136;0]/1000;

%panel 1 400

v2 = [0;0.5;2;2.5;3.8;4.6;6.6;7.4;8;9.6;10.4;10.7;11.4;11.6;12.3;12.6;13.5;13.8;14;14.6;15;15.2;15.5;16;16.2;17.1;17.4;17.6;17.9;18.1;18.2;18.5;18.6;18.7;20.4]/36;
i2= [179;179;178;177;176;175;175;174;173;171;170;170;170;166;165;163;162;162;161;160;159;158;157;157;156;152;150;147;142;140;133;130;123;108;0]/1000;


[ P1,Pmax1,Vmax1,Imax1,x1,Isc1,Voc1 ] = maxpower_plot( v1,i1 );
[ P2,Pmax2,Vmax2,Imax2,x2,Isc2,Voc2 ] = maxpower_plot( v2,i2 );
[ n ] = ideality_factor( Voc1,Voc2,Isc1,Isc2,T_cel )
Isc1
Voc1
Isc2
Voc2
[ n1 ] = calc_n( Voc1,Voc2,Isc1,Isc2,T_cel );
[ I1,Is1 ] = I_thoery(v1,i1,n,Isc1,Voc1,T_cel);
[ I2,Is2 ] = I_thoery(v2,i2,n,Isc2,Voc2,T_cel);


figure(80)
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

