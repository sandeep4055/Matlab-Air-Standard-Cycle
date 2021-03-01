clc
clear all
close all

bore = 0.1;
stroke = 0.1;
con_rod = 0.15;
rc = 12;
gamma = 1.4;
p1 = 101325;
t1 =500;
t3 = 2300;

vswept = (pi/4)*bore^2*stroke;
vcomp = vswept/(rc-1);
v1 = vswept + vcomp;


v2 = vcomp;
p2 = p1*rc^gamma;
t2 = (p2*v2*t1)/(p1*v1);

constant_c = p1*v1^gamma;
v_compression = engine_kinematics(bore,stroke,con_rod,rc,0,180);
p_compression = constant_c./v_compression.^gamma;


v3 = v2;
p3 = (p2*t3)/t2;

constant_c = p3*v3^gamma;
v_expansion = engine_kinematics(bore,stroke,con_rod,rc,0,180);
p_expansion = constant_c./v_expansion.^gamma;


v4 = v1 ;
p4 = p3*(v3/v4)^gamma;

%thermal efficiency
thermal_efficiency = 1-(1/(rc^(gamma-1)))
final_efficiency = thermal_efficiency*100+"%"


figure(1)
hold on
plot(v1,p1,'*','color','r')
plot(v_compression,p_compression)
plot(v2,p2,'*','color','r')
plot(v3,p3,'*','color','r')
plot(v_expansion,p_expansion)
plot(v4,p4,'*','color','r')
plot([v2 v3],[p2 p3] ,'color' ,'b')
line([v4 v1] , [p4 p1] , 'color','b')





