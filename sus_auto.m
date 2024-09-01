function dx=sus_auto(t,x)

%Parámetros:
m1 = 290;% (kg)
b = 1000;% (Ns/m)
m2 = 59;% (kg)
k1 = 16182;% (N/m)
f = 0;% (N)
k2 = 19000;% (N/m)
z1 = 0.05*sin(0.5*pi*t);
%z2 = 0.05*sin(20*pi*t);

%Vectores:
dx=zeros(4,1);

%Dinámica del sistema:

dx(1) = x(2);
dx(2) = ((f-b*x(2)+b*x(4)-k1*x(1)+k1*x(3))/(m1));
dx(3) = x(4);
dx(4) = ((-f+k2*z1+b*x(2)-b*x(4)+k1*x(1)-(k1+k2)*x(3))/(m2));