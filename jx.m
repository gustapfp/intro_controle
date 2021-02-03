function [jx] = jfuncX(g, s, p)

% i = > nome da variavel indexadora
% g = > g é o valor de i na primeira iteração 
% s = > s é o passo ou incremento em i após cada iteração 
% p = > p é o valor de i na última iteração
index_jx = 1; % variavel indexadoraauxiliar para iteração do vetor Jx
jx = [];
% g = g + 1;
% p = p + 1;
% valores de x
for i = g:s:p
    jx(index_jx) = custo_producao(1, i);
    index_jx = index_jx +1
  
end
end
