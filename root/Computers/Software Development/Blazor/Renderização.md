## Renderização
### Renderização do lado do cliente (CSR)
Significa que a marcação HTML final é gerada pelo runtime Blazor WebAssembly no cliente. Nenhum HTML para a interface do usuário gerada pelo cliente do aplicativo é enviado de um servidor para o cliente para esse tipo de renderização. A interatividade do usuário com a página é presumida.
### Renderização do lado do servidor (SSR)
Significa que a marcação HTML final é gerada pelo runtime do ASP.NET Core no servidor. O HTML é enviado ao cliente através de uma rede para exibição pelo navegador do cliente. Nenhum HTML para a interface do usuário gerada pelo servidor do aplicativo é criado pelo cliente para esse tipo de renderização. O SSR pode ser de duas variedades:

- *SSR estática*: o servidor produz HTML estático que não fornece interatividade do usuário nem mantém o estado do componente Razor.
- *SSR interativa*: os eventos Blazor permitem a interatividade do usuário e o estado do componente Razor é mantido pela estrutura Blazor.
### Pré-renderização
É o processo de renderizar inicialmente o conteúdo da página no servidor sem habilitar manipuladores de eventos para controles renderizados. O servidor gera a interface do usuário HTML da página o mais rápido possível em resposta à solicitação inicial, o que dá a sensação de que o aplicativo é mais responsivo aos usuários. A pré-renderização também pode melhorar a [SEO (Otimização do Mecanismo de Pesquisa)](https://developer.mozilla.org/docs/Glossary/SEO) ao renderizar conteúdos de resposta ao HTTP inicial no quais os mecanismos de pesquisa usam para calcular a classificação da página. A pré-renderização é sempre seguida pela renderização final, seja no servidor ou no cliente.
## Modos de renderização
### Servidor estático
Renderização do lado do servidor estática (SSR estática).
*Local de renderização*: servidor.
### Servidor interativo
Renderização interativa no lado do servidor (SSR interativo) usando Blazor Server.
*Local de renderização*: servidor.
### WebAssembly interativo
Renderização do lado do cliente (CSR) usando Blazor WebAssembly. 
*Local de renderização*: cliente.
### Auto interativo
SSR interativa usando Blazor Server inicialmente e, em seguida, CSR em visitas subsequentes depois que o pacote Blazor é baixado.
*Local de renderização*: servidor, depois clientes.
