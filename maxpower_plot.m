function [ P,Pmax,Vmax,Imax,x,Isc,Voc ] = maxpower_plot( V,I )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
a=length(V);
for i=1:1:a
    P(i)=V(i).*I(i);
    Isc = I(1)
    Voc = V(a)
end
Pmax=max(P);

for i=1:1:a
    if P(i)==Pmax;
       Vmax=V(i);
       Imax2=I(i);
       x=i;
    end
end

Imax=Pmax/Vmax;

%V_calc = interp1(Pmax,V,Imax)
figure(20)
 plot(V,I,'LineWidth',2)
 hold on 
 plot(V,P,'LineWidth',2)
legend('Current', 'Power')
 xlabel('Voltage')
ylabel('Current, Power')

% annotation('textarrow', [0.5, 0.2, 0.12, 0.1], 'String', "Vmp,Imp")
% annotation('textbox', [0.6, 0.4, 0.1, 0.1], 'String', "Pm")
% annotation('textbox', [0.6, 0.5, 0.1, 0.1], 'String', "Isc")
% annotation('textbox', [0.2, 0.3, 0.1, 0.1], 'String', "Vsc")
end

