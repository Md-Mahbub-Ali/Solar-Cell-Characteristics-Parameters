function [ n ] = calc_n( Voc1,Voc2,Isc1,Isc2,T_C )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
Ns=36;
k=1.3806*10^-23;
q=1.6*10^-19;
T=T_C+273;
Vt=(k*T)/q;
n=(Voc1-Voc2)/(Ns*Vt*log(Isc1/Isc2));

end

