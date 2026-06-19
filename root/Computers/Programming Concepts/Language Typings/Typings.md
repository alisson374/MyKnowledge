## Sistema de Tipos no contexto de linguagens de programação

O sistema de tipos é uma das características mais importantes de uma linguagem de programação, pois ele define um conjunto de regras para as várias construções de uma linguagem, evitando assim erros em computação.

## Tipagem estática

Linguagens estaticamente tipadas, **não permitem que um tipo de uma variável seja alterado depois de declarado**. Um exemplo de linguagem estaticamente tipada é o c#.

Suponha que tenhamos uma variável do tipo inteiro que recebe um número qualquer, ao declararmos essa variável como ‘int’, não poderemos mais alterar o seu tipo ao longo do programa. Exemplo:
![[tipagem_estatica_csharp.png]]
No trecho de código acima, vamos ter o seguinte erro de compilação na linha 22, ‘Não é possível converter implicitamente um tipo string em int’.

Isso se deve ao fato dessas linguagens fazerem a verificação de tipos em tempo de compilação.

## Tipagem dinâmica

Já as linguagens dinamicamente tipadas, **permitem que o programador altere o tipo de uma variável declarada anteriormente, sem nenhum problema**. Vejamos o seguinte exemplo em JavaScript:

![[tipagem_dinamica_js.png]]

O trecho de código acima, vai executar normalmente.

## Tipagem Forte

Nas linguagens fortemente tipadas, **os tipos são muito importantes portanto é necessário sempre informá-los.** Além disso **esse tipo de linguagem não realiza nenhuma conversão entre os tipos automaticamente**. Exemplo:

![[tipagem_forte_csharp.png]]

No trecho de código acima, teremos um erro de compilação na linha 60 com a seguinte mensagem ‘Não é possível converter implicitamente um tipo string em int’.

## Tipagem Fraca

Nas linguagens fracamente tipadas, **não é necessário informar o tipo das variáveis, além disso, a linguagem faz conversões entre os tipos automaticamente**. Veja o exemplo abaixo em JavaScript:
![[tipagem_fraca_js.png]]
O resultado do código acima é ‘5Alisson’.

É importante salientar que nem tudo são flores, muitas vezes o fato da linguagem não acusar um erro e fazer conversões automaticamente, pode causar dor de cabeça.

## Inferência de tipos

É a capacidade da linguagem inferir o tipo de forma automática através da análise da operação. O c#, por exemplo, apesar de ser estaticamente tipada e estar mais próximo de uma linguagem fortemente tipada, disponibiliza uma diretiva ‘var’, que possibilita ao desenvolvedor declarar uma variável sem tipo. Com isso o próprio c# define o tipo analisando a operação atribuída a essa variável. Exemplo:
![[inferencia_tipos_csharp.png]]
O código acima irá imprimir no console ‘5Alisson’

## Exemplo de linguagens

### Resumo
**Tipagem Estática**: uma vez que a variável é declarada ***seu tipo não muda*** durante a execução;
**Tipagem Dinâmica**: uma variável depois de declarada ***pode mudar seu tipo*** durante a execução;
**Tipagem Forte**: ***Não realiza conversão de tipos automaticamente*** durante operações entre variáveis de tipos diferentes;
**Tipagem Fraca**: ***Realiza a conversão de tipos automaticamente*** durante operações entre variáveis de tipos diferentes;

| Tipagens  | Estática | Dinâmica   |
| --------- | -------- | ---------- |
| **Forte** | C#       | Python     |
| **Fraca** | C        | JavaScript |
