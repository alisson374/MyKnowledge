# Como utilizar

As regras são muito simples, como demonstrado abaixo temos um tipo de _commit_ (_type_), o escopo/contexto do _commit_ (_scope_) e o assunto/mensagem do _commit_ (_subject_), mas adiante irei detalhar cada um.

```
!type(?scope): !subject
<?body>
<?footer>
```

Dessa maneira, `!` indica os atributos obrigatórios e `?` indica os atributos não obrigatórios. Nesse artigo não iremos falar sobre o `body` e nem o `footer` do commit. Mas tratam-se de especificações simples, que vocês podem ver mais [aqui](https://www.conventionalcommits.org/pt-br/v1.0.0-beta.4/#especifica%C3%A7%C3%A3o).

## **Subject: Imperativo ao invés de pretérito (modo passado)**

![https://miro.medium.com/v2/resize:fit:700/1*0f5ghtG-5gTmr33W4ToQdw.png](https://miro.medium.com/v2/resize:fit:700/1*0f5ghtG-5gTmr33W4ToQdw.png)

O primeiro exemplo com o subject no pretérito e o segundo com o subject no imperativo

Sei que pode parecer estranho ao primeiro momento escrever a mensagem no imperativo, pois a mudança implementada foi uma ação passada, mas escrevendo _subjects_ utilizando o imperativo nós estamos dizendo à nossa equipe **o que fará o _commit_ se aplicado**. No [artigo](https://chris.beams.io/posts/git-commit/#imperative) de Chris Beams ele diz um pouco mais sobre a escolha do imperativo e traz uma grande notação, ao qual, todo _subject_ deve se enquadrar:

> “If applied, this commit will <message>”

Em português: “Se aplicado, esse _commit_ irá <mensagem>”. Se pensarmos no exemplo representado acima, o resultado seria:

> “If applied, this commit will change the markup”, o que faz muito mais sentido do que: “If applied, this commit will changed the markup”

## **Type: Quais são os tipos de commit**

O ***type** é *****responsável por nos dizer qual o tipo de alteração ou iteração está sendo feita, das regras da convenção, temos os seguintes tipos:

   *test*: indica qualquer tipo de criação ou alteração de códigos de teste. **Exemplo:** Criação de testes unitários.
- `feat`: indica o desenvolvimento de uma nova _feature a_o projeto. **Exemplo:** Acréscimo de um serviço, funcionalidade, _endpoint_, etc.
- `refactor`: usado quando houver uma refatoração de código que não tenha qualquer tipo de impacto na lógica/regras de negócio do sistema. **Exemplo:** Mudanças de código após um _code review_
- `style`: empregado quando há mudanças de formatação e estilo do código que **não alteram** o sistema de nenhuma forma.**Exemplo:** Mudar o _style-guide_, mudar de convenção _lint_, arrumar indentações, remover espaços em brancos, remover comentários, etc..
- `fix`: utilizado quando há correção de erros que estão gerando bugs no sistema.**Exemplo:** Aplicar tratativa para uma função que não está tendo o comportamento esperado e retornando erro.
- `chore`: indica mudanças no projeto que não afetem o sistema ou arquivos de testes. São mudanças de desenvolvimento.**Exemplo:** Mudar regras do _eslint_, adicionar _prettier_, adicionar mais extensões de arquivos ao ._gitignore_
- `docs`: usado quando há mudanças na documentação do projeto.**Exemplo:** adicionar informações na documentação da API, mudar o _README_, etc.
- `build`: utilizada para indicar mudanças que afetam o processo de build do projeto ou dependências externas.**Exemplo:** _Gulp_, adicionar/remover dependências do _npm_, etc.
- `perf`: indica uma alteração que melhorou a performance do sistema.**Exemplo:** alterar _ForEach_ por _while_, melhorar a query ao banco, etc.
- `ci`: utilizada para mudanças nos arquivos de configuração de CI.**Exemplo:** _Circle_, _Travis_, _BrowserStack_, etc.
- `revert`: indica a reverão de um _commit_ anterior.

![[Pasted image 20240319193958.png]]

Exemplos dos tipos de commit citados anteriormente

Assim, conseguimos de forma simples e direta ver qual tipo de mudança está ocorrendo, melhorando bastante a visibilidade e alinhamento com a equipe.

**Observações**:

- Só pode ser utilizado um _type_ por _commit;_
- O _type_ é **obrigatório;**
- Caso esteja indeciso sobre qual _type_ usar, provavelmente trata-se de uma grande mudança e é possível separar esse _commit_ em dois ou mais _commits;_
- A diferença entre `build` e `chore` pode ser um tanto quanto sutil e pode gerar confusão, por isso devemos ficar atentos quanto ao tipo correto. No caso do Node.js por exemplo, podemos pensar que quando há uma adição/alteração de certa dependência de desenvolvimento presente em `devDependencies,` utilizamos o `chore.` Já para alterações/adições de dependências comuns aos projeto, e que haja impacto direto e real sobre o sistema, utilizamos o `build`.

## **Scope: contextualizando o _commit_**

Nesse ponto — e seguindo as convenções passadas — conseguimos entender o _tipo_ de alteração que foi realizada no _commit_ (_commit type_) e entender com clareza o que o _commit_ irá trazer se aplicado (_commit subject_).

Entretanto, até aonde essa mudança pode afetar ?

Em repositórios enormes, como _[monorepos](https://en.wikipedia.org/wiki/Monorepo)_, ou projetos com várias _features_ e mudanças paralelas, não fica bastante claro até onde a mudança que irá chegar pode alterar. Para isso, podemos utilizar o escopo(_scope_) do _commit_.

![https://miro.medium.com/v2/resize:fit:700/1*IZPTYtwxI-UgULgOjf8GKQ.png](https://miro.medium.com/v2/resize:fit:700/1*IZPTYtwxI-UgULgOjf8GKQ.png)

Exemplo de commit utilizando o scope

Mesmo o _scope_ **não sendo obrigatório**, ele ****pode ser utilizado para contextualizar o _commit_ e trazer menos responsabilidade para a _subject_, uma vez que dispondo do tipo de _commit_ e o contexto que foi aplicado, a mensagem deve ser o mais breve e concisa possível. **Lembrando que o _scope_ deve ser inserido no _commit_ entre parênteses**.

Além disso, no caso do _scope_ é possível adicionarmos múltiplos valores, como por exemplo: Caso houvesse uma refatoração de código em um repositório com versões mobile, web e desktop. A qual afeta o contexto mobile e web, poderíamos escrever o _commit_ da seguinte maneira:

![https://miro.medium.com/v2/resize:fit:700/1*L1hcIpv-XNGUsdfqTjtV8A.png](https://miro.medium.com/v2/resize:fit:700/1*L1hcIpv-XNGUsdfqTjtV8A.png)

Dessa maneira indicamos que é um commit de refatoração que afetara os contextos mobile e web da aplicação

**Observação:** Os escopos devem ser separados com `/` , `\\` ou `,`.