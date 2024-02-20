## Introdução

Como você já deve imaginar, tudo começa na API, visto que a segurança no lado do cliente é sempre fraca, todo processo deve rodar no servidor. 

Armazenar um usuário e seus perfis é uma tarefa relativamente simples, incluindo ler este dados e enviar para tela, o problema está no armazenamento destes dados do outro lado. 

Deixa eu te explicar melhor, em APIs nós nunca ficamos autenticados ou autorizados, a cada requisição este processo é feito. Isto se repete para toda requisição. 

Existe um motivo para isto, e até um tempo atrás, utilizávamos sessão para manter estes dados em memória e o usuário permanecer conectado. 

Com a distribuição das aplicações em diferentes servidores, manter o usuário conectado não é algo viável, pois os servidores não compartilham memória.

## Gerando Tokens

Neste modelo, geramos um Token de acesso, baseado em uma chave privada que só o servidor tem (Ela tem que ser comum entre os servidores) e então a cada requisição, o Frontend envia este token.

Com o Token em mãos, como temos a chave privada, conseguimos desencriptar ele e obter os valores do usuário (E quaisquer outros valores que ele tenha). 

Você pode também armazenar os Tokens para uma maior validação, mas isto implica em pelo menos uma requisição no banco de dados a cada requisição autenticada que sua API recebe.

## Armazenar Tokens

Se precisamos enviar o token a cada requisição, já que não ficamos autenticados nas APIs, precisamos armazená-los em algum lugar. Porém, no Frontend só existem quatro possíveis lugares para que ele seja armazenado:

### Session Storage
Session Storage é um local que os browsers disponibilizam para armazenarmos chave/valor como string. Ou seja, podemos armazenar algo como:

Chave                Valor 
TOKEN               eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZ 
NOME                ANDRE BALTIERI 

Tudo o que armazenamos no Session Storage vive apenas enquanto a aba estiver aberta, uma vez fechada, tudo se perde. Este modelo é amplamente utilizado quando temos cenários mais críticos em segurança, como os casos dos bancos. Imagina esquecer de fazer logout e o app do seu banco permanecer logado mesmo quando você reinicia seu computador? Em adicional, os Browsers disponibilizam uma API muito simples para trabalhar com Session Storage.

```js
sessionStorage.setItem('chave', 'valor'); // Salva um valor 
sessionStorage.getItem('chave'); // Lê um valor salvo 
sessionStorage.removeItem('chave'); // Remove um item
sessionStorage.clear(); // Limpa todos os dados
```

### Local Storage

O Local Storage age exatamente igual ao Session Storage, exceto pelo fato do seu tempo de via que persiste infinitamente. Isto significa que uma vez que você salvou um valor no Local Storage, ele permanece lá até ser removido ou você limpar os dados do Browser.

```js
localStorage.setItem('chave', 'valor'); // Salva um valor
localStorage.getItem('chave'); // Lê um valor salvo
localStorage.removeItem('chave'); // Remove um item
localStorage.clear(); // Limpa todos os dados
```

O Local Storage é o item mais indicado para salvar nossas informações. Previamente eram os Cookies, mas com alguns problemas de vazamento e compartilhamento de Cookies, esta recomendação mudou.

## Domínios e Sub Domínios

É importante lembrar também que o armazenamento local (Session e Local) são baseados nos domínios e/ou sub domínios, o que significa que informações persistidas nas sessões do site balta.io por exemplo, não serão visíveis nas sessões dentro do site microsoft.com.

Desta forma, não temos como compartilhar informações entre storages de diferentes domínios ou sub domínios.

No caso dos Cookies, existem políticas que permitem estas trocas de informações, recursos como Same Site e troca de origem, desde que atribuídos de forma correta e consciente, tornam o Cookie uma ótima opção para Single Sign On por exemplo.