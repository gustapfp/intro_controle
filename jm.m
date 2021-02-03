function [jm] = jfuncM(g, s, p)

% i = > nome da variavel indexadora
% g = > g é o valor de i na primeira iteração 
% s = > s é o passo ou incremento em i após cada iteração 
% p = > p é o valor de i na última iteração
index_jm = 1; % variavel indexadora auxiliar para iteração do vetor jm
jm = [];
% g = g + 1;
% p = p + 1;
% valores de x
for i = g:s:p
    jm(index_jm) = custo_producao(i, 1);
    index_jm = index_jm +1
  
end
end
