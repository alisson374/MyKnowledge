## Introdução

Teste unitário pode ser definido como um código escrito para testar outros códigos. O intuito é cobrir todo o código com métodos de teste.
Garantindo assim que o código funciona sobre várias circunstâncias e com diferentes entradas. Dessa forma aumentando a qualidade do código e melhorando a manipulação de erro. Vale ressaltar a importância de [[Boas Práticas |boas práticas]]. 

>Código Limpo que funciona em uma frase
>concisa de Ron Jeffries, é o objetivo do
>Desenvolvimento Guiado por Teste
>(TDD). Código limpo que funciona é uma
>meta valiosa por bocado de razões.

## Por que utilizar testes?
1 -> É uma forma previsível de desenvolver. Você sabe quando acabou sem ter que se preocupar com uma longa trilha de erros.
2 -> Melhora as vidas dos usuários de seu software.
3 -> Permite que seus colegas de equipe contem com você, e você com eles (aumento de produtividade)
4 -> É bom escrever código, quando não se tem medo dele (permite focar em códigos melhores)

## QA e testes unitários

Se a densidade de defeitos pode ser reduzida suficientemente, então a garantia de qualidade (Quality Assurance - QA) pode mudar de trabalho reativo para trabalho pró-ativo.

### Teste no setor de QA

Vantages:
-> Pessoas diferentes testando funções sempre bom!
-> Teste de Interface é sempre mais fácil pela Equipe de QA
-> QA é mais barato, menos código é escrito (tempo/custo)

Desvantagens:
-> Teste de Regressão é muito mais dispendioso.
-> Configurações e Publicações são intensos nesse setor.
-> QA raramente são amigáveis (Frustração e Chateação).

### Teste automatizado

Vantagens:
-> Repetível a vontade e melhor cobertura dos Testes.
-> Teste de Regressão é muito ágil (ou mais rápido).
-> E obviamente, pode se automatizar aos processo.

Desvantagens
-> Mais tempo para lançar (agora se escreve mais código).
-> Só é bom para os desenvolvedores que desenvolvem teste.
-> É um pouco pesado para testar interface (mas possível).

### Conclusão

Departamento de QA: Pessoas diferentes testando funções sempre bom! Teste de Interface é sempre mais fácil pela Equipe de QA. QA é mais barato, menos código é escrito (tempo/custo)
Testes automatizados: Repetível a vontade e melhor cobertura dos Testes. Teste de Regressão é muito rápido (ou mais rápido). E obviamente, pode se automatizar aos processo

## Estrutura dos testes

A criação dos testes unitários é feita utilizando [[AAA]]. De forma resumida, AAA é definido como:

Arrange -> Iniciar variáveis
Act         -> Invocar método para testar
Assert    -> Verificar Ação