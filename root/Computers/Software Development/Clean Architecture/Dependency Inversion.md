## Definição

A direção da dependência em uma aplicação deverá ser *na direção da abstração* e não no detalhes de implementação.

Módulos de [[Conceitos de DI#Módulos de alto nível|alto nível]] não devem depender de módulos de [[Conceitos de DI#Módulos de baixo nível|baixo nível]]. Ambos devem depender de uma abstração.

[[Conceitos de DI#Abstrações|Abstrações]] não devem depender de detalhes. Detalhes devem depender de abstrações

## Exemplo de utilização

Nesse exemplo abaixo há um caso de alta dependência entre a classe de *alto nível* recuperar senha e a classe de *baixo nível* MySqlConnection.
![[Pasted image 20240129203203.png]] 

Para resolver esse alto acoplamento vamos aplicar o conceito de inversão de dependência através do padrão de injeção de dependência:

1- Criamos uma interface chamada *IDataBaseConnection* e reescrevemos a classe MySqlConnection para implementar essa interface:
![[Pasted image 20240129204324.png]]
dessa forma o *MySqlConnection* (módulo de baixo nível) depende apenas de uma abstração: a interface *IDataBaseConnection*. 

2- Modificamos a classe *RecuperarSenha* para ao invés de instanciar um classe de *MySqlConnection* receba através da [[Resumo#Injeção da dependência (DI)|injeção de dependência]] um classe que implementa *IDataBaseConnection*.
![[Pasted image 20240129204724.png]]
A classe Recuperar senha agora possui dependência apenas da interface IDatabaseConnection, retirando o forte acoplamento da classe MySqlConnection. Assim estamos aplicando a [[Resumo#Inversão de Controle (IoC)|inversão de controle]] na classe *RecuperarSenha* e tirando a responsabilidade de instanciar a *MySqlConnection*

Comparativo gráfico dos dois modelos:
![[Pasted image 20240129205036.png]]
