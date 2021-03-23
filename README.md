# Matlab-Air-Standard-Cycle
To plot the graph of Air Standard Cycle using MATLAB and caluclate the Thermal efficiency of the engine.

# Plotting Air Standard Cycle using MATLAB


Aim:To plot the graph of Air Standard Cycle using MATLAB and caluclate the Thermal efficiency of the engine.

Air-Standard Cycle :
Actual processes occurring in IC engines are very complex consequently, a common tool for the analysis of IC engines is the air-standard cycle. Modeling a real engine with a simplified process permits examination of the influence of only the major operating variables on engine performance. Although numerical values calculated from such models provide only a qualitative representation of the actual process, they do provide important analytical information.

The following picture shows the graph between temparature vs entropy , pressure vs volume.

![image](https://user-images.githubusercontent.com/70133134/112191158-bc907c00-8c2b-11eb-9cbb-1b2fab7946cb.png)

Stage 1:1-2 Isentropic compression.
Stage 1:2-3 Constant-volume heat addition.
Stage 1:3-4 Isentropic expansion.
Stage 1:4-1 Constant-volume heat rejection.

# The inputs in the model are   
Bore Diameter= 0.1m  
Stroke = 0.1m   
Connecting rod length = 0.15m   
Commpression Ratio = 12    
Specific Heat Ratio (γ) = 1.4   
Pressure at p1 = 101325Pa    
Temparature at t1 =500K     
Temparature at t3 = 2300K     

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



