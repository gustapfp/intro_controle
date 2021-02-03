function [J] = custo_producao (m, x)
% Valores fixos

J0 = 1;
xref = 0.5;

% Valores dados aos usuarios

val_const_multiplica_m_cubo = 0.1;
val_const_multiplica_m_quadrado = 0.05;

J = J0 - (((val_const_multiplica_m_cubo.*m^3)+ (4))/(val_const_multiplica_m_quadrado.*m^2 - m)) + 0.1.*((x-xref)^2);

end
