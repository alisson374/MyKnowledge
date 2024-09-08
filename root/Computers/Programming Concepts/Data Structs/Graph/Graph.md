## Resolução de problemas

A resolução de problemas parte da *abstração* de um conjunto de problemas que podem ser representados por um modelo (nesse caso grafos). Dessa forma, o objetivo não é solução em si mas sim a forma de resolver esse conjunto de problemas.

## Introdução
Um Grafo é formado por um conjunto de *vértices* (pontos no grafo), *arestas* (linhas que ligam os vértices) e *vértices adjacentes* (aqueles ligados pela mesma aresta). 
##### Exemplos de grafos:
![[grafos1.png]]

Pode-se interpretar que os *vértices* representam o **objeto** de estudo e as *arestas* representam o **relacionamento** entre os objetos.

Outra forma de representarmos um grafo G: $G=(V,E)$ onde:
*V* = conjunto não vazio de elementos chamados *Vértices*.
*E* = conjunto de elementos chamados *Arestas*.

### Exemplo 1
#### Notação

GRAFO G(V,E) onde:
*V* = {1, 2, 3, 4, 5}
*E* = {(1,2), (1,5), (2,3), (2,4), (2,5), (3,4), (4,5)}

#### Representação gráfica
![[Pasted image 20240805194806.png]]





Também podemos representá-lo fa seguinte forma
$G=(V,E,Φ)$
*Φ* : E {{x,y}|x,y V} é uma função incidente mapeando cada aresta a
um par não ordenado de vértices.

### Exemplo 2:
#### Notação

G=(V, E)

V = {1, 2, 3, 4}
E = {e0, e1, e2, e3)

ΦG(e0)=(1,2)
ΦG(e1)=(1,3)
ΦG(e2)=(2,3)
Φ'G(e3)=(3,4)

#### Representação gráfica
![[Pasted image 20240805195936.png]]


## Summary
[[Conceitos iniciais 1]]
[[Conceitos iniciais 2]]