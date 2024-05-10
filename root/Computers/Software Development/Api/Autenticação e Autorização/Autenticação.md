O processo de autenticação pode ser feita de várias maneiras , via usuário e senha, via E-mail e senha ou mesmo via redes sociais, os famosos “Login com Google”, “Login com Facebook”.

## Autenticação interna 

O primeiro passo que precisamos é garantir que uma pessoa está ligada a um E-mail ou um nome de usuário, e este processo é relativamente simples. No caso da garantia de um E-mail ser de quem ele realmente disse que é, basta no processo de registro do usuário, enviar um E-mail com um código a ele.

![[Screenshot_644.png]]

## Autenticação Externa

Outro tipo de autenticação comum é utilizando alguma rede social ou serviço externo. Dessa forma, você delega a responsabilidade para outro servidor, o que pode ser uma boa, já que o processo de verificação de contas do Google ou Microsoft por exemplo são bem mais complexos e 
completos do que possivelmente o seu será.

Nesse formato, o que fazemos é no login, gerar um token de ativação e redirecionar o usuário para uma plataforma externa.
Após autenticado, o usuário retorna para nossa plataforma com um token e assim damos andamento na requisição. 

Em suma, qualquer pessoa pode fornecer este serviço, basta realizar a implementação do OIDC (Open Id Connect), um protocolo aberto de autenticação. Existem servidores OIDCs prontos como o Identity Server ou o Keycloak, ambos fornecem uma ótima implementação e são completos em recursos. 

Resumindo, se o balta.io tivesse uma implementação do OIDC, você poderia adicionar um botão “Login com balta” em seu site. 

Como o custo e risco de manter um OIDC próprio são altos, a recomendação é sempre começar do mais básico, implementando autenticação oAuth com JWT.