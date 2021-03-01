function [v] = engine_kinematics(bore,stroke,con_rod,rc,start_crank,end_crank)

a = stroke/2;
R = con_rod/a;

vswept = (pi/4)*bore^2*stroke;
vc = vswept/(rc-1);

theta = linspace(start_crank,end_crank,100);

term1 = 0.5*(rc-1);
term2 = R +1 - cosd(theta);
term3 = (R^2 - sind(theta).^2).^0.5;

v= (1 + term1*(term2 - term3)).*vc;

end
