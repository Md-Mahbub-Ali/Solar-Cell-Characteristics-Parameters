function [ n ] = ideality_factor( Voc1,Voc2,Isc1,Isc2,T_cel )
k=1.3806*10^-23;
q=1.6*10^-19;
T=T_cel+273;
Ns= 36;
Vt=(k*T)/q;
n=(Voc1-Voc2)/(Vt*log(Isc1/Isc2));

up=Voc1-Voc2
down=Vt*log(Isc1/Isc2)
end