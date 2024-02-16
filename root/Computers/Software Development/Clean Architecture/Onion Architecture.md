## Princípio
A arquitetura de cebola está baseada no princípio da [[Resumo#Inversão de Controle (IoC)|inversão de dependência]] e é composta por várias camadas concêntricas que se interconectam em direção ao núcleo que representa o domínio. Ela não depende da camada de dados como nas arquiteturas em várias camadas, mas dos modelos de domínio reais.

![[Pasted image 20240130204253.png]]

A Onion Architecture resolveu o problema do acoplamento entre as camadas definindo camadas a partir do núcleo para a infraestrutura.

Ela aplica a regra fundamental movendo todos os acoplamentos em direção ao centro, sendo que no centro da Onion Architecture está o modelo de domínio, que representa os objetos de negócios e o comportamento.

Ao redor da camada de domínio existem outras camadas (UI, Infra, repositórios, interfaces, services) com mais comportamentos.

A seguir, segue a descrição das [[Camadas|camadas]] dessa arquitetura.

*OBS:* vale ressaltar que estrutura, nome e separação de arquivos da arquitetura de camadas é flexível se adaptando dependendo da complexidade do projeto.