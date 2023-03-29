function [ I,Is ] = I_thoery(V,Ii,n,Isc,Voc,T_cel)
n1=1.5;
q=1.6*10^-19;
k=1.3806*10^-23;
T=T_cel+273;
Is=Isc/exp((q*Voc)/(n*k*T));
Is1=Isc/exp((q*Voc)/(n1*k*T));

a=length(V);
for i=1:1:a
    I(i)=Isc-Is1*exp((q*(V(i)))/(n1*k*T));
end
figure
 plot(V,I,'LineWidth',2)
 hold on 
 plot(V,Ii,'LineWidth',2)
legend('Current Calculated', 'Current Practical')
 xlabel('Voltage')
ylabel('Current')
end