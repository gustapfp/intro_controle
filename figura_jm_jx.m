function[jx_jm] = fig_jx_jm (gx, sx, px, gm, sm, pm)

% i = > nome da variavel indexadora
% gx = > g é o valor de i na primeira iteração 
% sx = > s é o passo ou incremento em i após cada iteração 
% px = > p é o valor de i na última iteração

% gm = > gm é o valor de i na primeira iteração 
% sm = > sm é o passo ou incremento em i após cada iteração 
% pm = > pm é o valor de i na última iteração

% valores de x
index_jx = 1; % variavel indexadoraauxiliar para iteração do vetor Jx
jx = [];

for i = gx:sx:px
    jx(index_jx) = custo_producao(1, i);
    index_jx = index_jx +1
  
end

% valores de m 
jm = [];
index_jm = 1; % variavel indexadoraauxiliar para iteração do vetor Jm
for i = gm:sm:pm
    jm(index_jm) = custo_producao(i, 1);
    index_jm = index_jm +1
  
end

% plot dos graficos

figure; 

% figura jx
subplot(1,2,1);
plot(gx:sx:px, jx);
title('x por Jx') ;

%figura jm
subplot(1, 2, 2);
plot(gm:sm:pm, jm);
title('m por Jm');

