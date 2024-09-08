1) Considerando o seguinte grafo:  
  
![[Pasted image 20240812212043.png]] 
Iniciando  o  processo  de  busca  pelo  vértice **C**  considerando  que  as  arestas  estão ordenadas alfabeticamente, responda:  
a) Qual é a ordem de visita dos vértices em uma busca em largura (BFS)?
raiz: C

C, A, B, E, F
A, B, E, F, D
B, E, F, D, G
E, F, D, G, H, J
F, D, G, H, J
D, G, H, J
G, H, J
H, J, I
J, I
I


b) Qual é a ordem de visita dos vértices em uma busca em profundidade (DFS)?  
raiz: C

C, A, B, E, F
A, B, E, F
D, B, E, F
B, E, F
G, E, F
H, J, E, F
I, J, E, F
J, E, F
E, F
F


c) Construa as árvores geradoras das duas buscas.  
  
*2)* Considere o grafo abaixo, com 0 como vértice inicial:  
a) determine a ordem de visita dos vértices em uma BFS;  
b) determine a ordem de visita dos vértices em uma DFS;  
  
  
  
*3)* É  possível  utilizar  a  busca  em  profundidade para  detectar  se  um  grafo  possui ciclos? Como? Escreva um algoritmo para fazer esse processo.  
  
  
4) Retomando o algoritmo de DFS, identifique como o algoritmo de busca em profundidade poderia identificar se um grafo é conexo.  
  
5) Se uma aresta (_u, v_) é  aresta  de  retorno em uma busca em profundidade feita em um grafo _G_, então (_u, v_) será aresta de retorno em toda busca em profundidade feita em _G_. Verdadeiro ou falso? Justifique.