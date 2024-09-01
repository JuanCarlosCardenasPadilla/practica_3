%Función ODE45 que resuelve numéricamente:
[t,x]=ode45(@sus_auto,[0 10],[0 0 0 0]);

%Gráfica del sistema:
figure(1)
plot(t,x(:,1));