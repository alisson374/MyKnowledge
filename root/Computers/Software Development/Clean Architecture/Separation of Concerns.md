## Conceito

Não *misturar* conceitos e/ou *responsabilidades* diferentes dentro do design ou do código de um projeto de software.

A violação deste princípio causa código duplicado com mais de uma responsabilidade, violando também o princípios SOLID da *Responsabilidade Única (SRP)* e o princípio *DRY - Don't Repeat Yourself*.
## Exemplos de Aplicação do Conceito

- Separar a interface do usuário (front-end) da lógica de negócios (back-end);
- Separar o código de acesso a dados do código da apresentação dos dados;
- Separar o projeto em diferentes módulos/camadas com responsabilidades distintas;
- Criar *componentes/classes/funções* que realizam apneas uma única tarefa com eficiência.
## Aplicação

A aplicação da Separação dos Conceitos/Responsabilidades envolve dois processos:

**1- Reduzir o acoplamento**: o acoplamento é o nível de dependência/conhecimento que pode existir entre os componentes do sistema;
Quanto *menor o acoplamento* entre os componentes do sistema *menor* será a dependência entre eles, e mais fácil será manter, reusar e estender a aplicação.;

**2- Aumentar a coesão**: coesão é o nível de integridade interna dos componentes do sistema;
Quanto *maior a coesão* entre os componentes *mais definidas são suas responsabilidades* sendo mais difícil desmembrar o componente em outros componentes. 



## Vantagens

1- Facilita a manutenção. A não duplicação do código e as responsabilidades bem definidas dos componentes do projeto tornam o sistema mais fácil de manter.

2- Melhor reutilização de código. O principal benefício de reutilizar o código é a redução dos custos de manutenção. Sempre que você precisar estender a funcionalidade ou corrigir um bug - é muito menos doloroso fazer isso quando você tem certeza de que ele aparece apenas em um lugar.

3- Melhor clareza de código. É muito mais fácil entender o que está acontecendo no programa quando cada módulo tem um a *API concisa e clara* com um conjunto de métodos com escopo lógico bem definido.

4- Melhora a testabilidade. Módulos *independentes* com funcionalidade e escopo adequado e com *isolamento do resto do aplicativo* são fáceis de testar. Você não precisa configurar o ambiente inteiro para ver como seu módulo funciona, basta substituir os módulos reais por simulações ou fontes de dados falsas.

5- Permite uma evolução mais rápida do projeto. Quer seja um novo recurso ou uma atualização de um recurso existente, o *isolamento dos módulos* ajuda a definir o escopo das áreas do projeto que podem ser afetadas pela mudança, acelerando assim o desenvolvimento.