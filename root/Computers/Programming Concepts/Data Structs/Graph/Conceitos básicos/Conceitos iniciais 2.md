## Caminho
Um caminho entre dois vértices é uma sequência de vértices adjacentes.

*Caminho simples*: é definido com sequência de vértices adjacentes *distintos*, sem "voltas".

![[Pasted image 20240805204304.png]]

Caminhos entre 1 e 7:
Simples: 1,5,8,7
Não simples: 1,5,6,2,6,7

*Comprimento do caminho*: é a quantidade de arestas.

## Ciclo
É um caminho fechado v1,...,vk,vk+1 sendo v1 = vk+1 com
comprimento > 1, sem arcos repetidos. Por exemplo (gráfico anterior):
a -> 5,8,4,1,5 (ciclo simples, pois não tem repete vértices, exceto o último)
b -> 5,1,2,3,7,6,5
## Grafo complementar

Um grafo $G(V,E)$ é dito complementar ($G^c$) se contém ligações que não estão em G.

![[Pasted image 20240805204826.png]]
