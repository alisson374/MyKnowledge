## **TRABALHO PRÁTICO: CONSTRUÇÃO DE UM** **ANALISADOR LÉXICO** **PARA** **UMA LINGUAGEM HIPOTÉTICA**

  

Desenvolvimento de um analisador léxico que reconheça expressões aritméticas e alguns comandos ao estilo da linguagem “C” e declarações ao estilo “PASCAL”;

  

O Analisador Léxico deve reconhecer os seguintes padrões:

- **Delimitadores**: '(', ')', '.', ',', '{', '}', ';';
    
    - Desconsiderando brancos, sinais de tabulação '_\t_' e fim de linha '_\n_','_\r_';
        
- **Números**: [_0-9_], números com e sem sinal, com fracionário opcional, exemplos de números aceitos: _3_, _98_, _-__76_, _56.34_, _-__87.45_, etc.
    
- **Letras**: [_AZ__az_];
    
- **Identificadores**: palavras formadas por uma Letra obrigatória seguida de zero ou mais Letras e Números;
    
    - **E****xemplo**: soma, teste123, a, x, a12**;**
        
- **Operadores** **aritméticos** **binários**: '_+_', '_-_', '_*_', '_/_', '_^_';
    
    - cada operador identificado unicamente, por exemplo, um token OP_ADD para o '_+_';
        
- **Operadores** **relacionais** **binários**: '_>_', '_<_', '_>=_', '_<=_', '_==_', '_!=_';
    
    - cada operador identificado unicamente, por exemplo, um token OP_GT para o '_>_';
        
- **P****alavras Reservadas**: '_if_', '_else_', '_while_', '_var_', '_int_', '_real_', '_=_';
    
    - cada operador identificado unicamente, por exemplo, um token CM_IF para o '_if_';
        
    

A entrada pode ser via dispositivo ou por arquivos. Poderá ter, ou não, uma interface de entrada e manipulação.

O resultado da análise deve ser uma lista de lexemas+tokens, por exemplo:

**Entrada**: “**var int a,b; i****f(a>0){a****=34/(3.4+5)****}**”

**Saída**:

|     |     |
| --- | --- |
 
|- ‘**var**’ → CM_VAR<br>    <br>- ‘**int**’ → TYPE_INT<br>    <br>- ‘**a**’ → ID<br>    <br>- ‘**b**’ → ID<br>    <br>- ‘**;**’ → DELIM<br>    <br>- '**if**' → CM_IF<br>    <br>- '**(**' → DELIM<br>    <br>- '**a**' → ID<br>    <br>- '**>**' → OP_GT<br>    <br>- '**0**' → NUM<br>    <br>- '**)**' → DELIM|- '**{**' → DELIM<br>    <br>- '**a**' → ID<br>    <br>- '**=**' → CM_ATRIB<br>    <br>- '**34**' → NUM<br>    <br>- '**/**' → OP_DIV<br>    <br>- '**(**' → DELIM<br>    <br>- '**3.4**' → NUM<br>    <br>- '**+**' → OP_ADD<br>    <br>- '**5**' → NUM<br>    <br>- '**)**' → DELIM<br>  <br>- '**}**' → DELIM|
  
Sugestão:
- podem usar qualquer linguagem de programação, desde que eu possa compilar ou executar em qualquer ambiente;
- Tentem deixar separada a função (método ou classe) que classifica os lexemas em tokens (Léxico) da função que requisita a análise (Main, por exemplo). Isto será útil na separação posterior entre Léxico e Sintático.
    
- Os critérios de avaliação irão levar em conta os seguintes tópicos:
    - Utilização correta de uma biblioteca REGEX;
    - Clareza e Legibilidade de nomes de variáveis, métodos e classes;
    - Comentários e Documentação;
    - Organização do Código, classes, métodos e atributos seguem uma estrutura lógica;
    - Atende aos requisitos e funcionalidades especificadas;
    - Boas Práticas de Codificação: convenções de estilo, indentações e formatações;
        
    - Reusabilidade com módulos reutilizáveis.