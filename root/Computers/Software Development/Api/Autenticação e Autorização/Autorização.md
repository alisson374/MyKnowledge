Se autenticação diz quem você é, autorização diz o que você pode fazer, são os famosos Roles ou Perfis, e que no ASP.NET se estendem para políticas (Policies) e afirmações (Claims). 

Enquanto a autenticação segue em diversas vezes uma padronização, a autorização não tem necessariamente uma regra. 

De qualquer forma, a ideia aqui é, sabendo que o “xyz@balta.io” é o “André Baltieri”, o que ele pode fazer dentro deste sistema? 

Note que estamos falando DESTE sistema, pois a autorização varia muito, inclusive entre módulos, páginas e até mesmo botões. 

Podem haver páginas no sistema que eu posso ver, mas não posso editar e a autorização precisa tratar tudo isto. 

Na maioria dos casos também, a autorização é CUMULATIVA ou seja, eu posso ter vários perfis como “admin”, “employee”, “sales” e cada um deles ter funções distintas que são acumuladas.