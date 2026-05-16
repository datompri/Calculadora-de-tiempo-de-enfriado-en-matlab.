%% CALCULADORA DE ENFRIAMIENTO (LEY DE ENFRIAMIENTO DE NEWTON)
% 
% Descripción:
% Este script modela, calcula y grafica el proceso térmico de enfriamiento 
% de un cuerpo (comida) a lo largo del tiempo utilizando la Ley de 
% Enfriamiento de Newton.
%
% Modelo matemático:
% T(t) = (T0 - M) * exp(a*t) + M
%Definición de los parámetros.



T0 = 220; % Temperatura inicial de la comida
Td=60; % Temperatura deseada
M = 20; % Temperatura ambiente
a=-0.12; % Constante de enfriamiento

%Definición de la gráfica.
f = @(t) (T0-M) * exp(a*t) + M;
tf=log((Td-M)/(T0-M))/a;
t=0:0.5:80;

%Graficación.
plot(t,f(t),"b",LineWidth=2)
xlabel('Tiempo(min)'); ylabel('Temperatura(ºC)');
title("Enfriamiento")
yline(Td, '--r', 'LineWidth', 1.5, 'Label', sprintf("T_{deseada} = %d°C", Td));
yline(M,'--g','LineWidth', 1.5, 'Label', sprintf("T_{ambiente}=%d ºC",M));
xline(tf,'--p','LineWidth', 1.5, 'Label', sprintf("T_{T}=%.2f m",tf));
grid on;
fprintf("La comida tardará %.2f minutos en enfriarse a %d°C\n", tf, Td);
