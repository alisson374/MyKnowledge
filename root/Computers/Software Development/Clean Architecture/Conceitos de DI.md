
## Módulos de alto nível

São classes da camada de negócio que encapsulam uma lógica complexa.

## Módulos de baixo nível

São classes da camada de infraestrutura que implementa operações básicas como acesso a dados, ao disco, protocolos de rede, etc.
## Abstrações

São interfaces ou classes abstratas que não possuem implementação. Dessa forma as classes da *camada de negócio* não devem depender das classes da camada de infraestrutura mas ambas devem depender de interfaces ou classes abstratas. 