function [ ff,eff ] = fillfactor_efficiency(Vmax,Imax,Isc,Voc,Psun)

ff= (Vmax*Imax)/(Voc*Isc);
eff = (Vmax*Imax)/Psun;


end