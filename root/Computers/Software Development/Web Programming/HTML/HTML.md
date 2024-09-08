## Tags

### Anatomia das tags
Abertura de tags
Fechamento de tag
Conteúdo
Elementos

Exemplos:
```html
<!-- exemplo 1 -->
<h1> O título </h1>

<!-- exemplo 1 -->
<img src="" alt="">
```

*Exemplo1*:
*h1* é uma tag de abertura
*/h1* é uma tag de fechamento
"*O título*" é o contéudo (está dentro da tag)
*elementos* é o conjunto todo (tags + conteudo)

*Exemplo2*:
Elementos Vazios
alguns elementos não possuem tag de fechamento
mas possuem atributos (nessa caso "src" e "alt")
### Atributos
```html
<!--
    Atributos HTML
    - informações extras
    - configurações
-->
<!-- No caso de img são configurações -->
<img src="imagem.png" alt="exemplo">

<!--
    Atributos booleanos
    - não precisam de conteúdo
-->

<!-- Por exemplo o disabled-->
<input type="text" disabled>

<!-- b
    Aspas
    - omissão
    - simples
    - duplas  (recomendada)
-->

<a href="endereço http"> link</a>
```
### Atributos globais
```html
<!--
    Atributos globais mais utilizados  (aplicado a todas as tags)
    - class usado pra ser acessado em js e estilização no css
    - contenteditable permite a modicação do texto no navegador
    - data-* utilizado no js
    - hidden esconde o conteúdo de uma tag
    - id
    - style estilização css
    - tabindex usado para navegação com o tab
    - title coloca um titulo no conteúdo (repousando o mouse em cima do conteúdo aparecerá)
-->
  
<div class="carrinho" contenteditable="true" tabindex="1">
    conteudo
</div>

<div class="carrinho" data-id="" tabindex="2" title="definir título">
    conteudo
</div>
<div class="carrinho" hidden tabindex="3">
    conteudo
</div>
```

### Alinhamento de tags
```html
<!--
    Aninhamento de tags
    - fluxo
    - hierarquia
    - posicionamento dos elementos
-->

<p>
    Texto de um <em>parágrafo</em>
    outro texto <br/> continuação em outra linha
</p>
```

### Prática 1
<h1> Titulo do texto</h1>
<p>
    Inicio do <strong>texto</strong> olha só, olh lá que legal.
    <br/> outro paragrafo. saiba mais em <a href="https://www.google.com/">google</a>
</p>
### Caracteres especiais
```html
<!--
    Conteúdo de texto:
    &nbsp; da um espaçamento no texto (No Break SPace)    
    Caracteres especiais:
    &lt; == <
    &gt; == >
    &quot; == "
    &amp; == &
    &apos; == '
-->

<p>
	texto qualquer
	<br>
	&nbsp; outro texto
</p>
```

### Anatomia documento html
```html
<!DOCTYPE html>
<html lang="pt">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

</body>
</html>
```

### Listas
```html
<!-- Lista ordenada-->
<ol>
	<li>cenoura</li>
  <li>feijão</li>
  <li>leite</li>
  <li>arroz</li>
</ol>
  
<!-- Lista não ordenada-->
<ul>
 <li>cenoura</li>
 <li>feijão</li>
 <li>leite</li>
 <li>arroz</li>
</ul>
```

### f