DOC: [JSON Web Token Introduction - jwt.io](https://jwt.io/introduction)
## Token JWT
O token jwt é formado em 3 partes: *header.payload.signature*
*Header*    -> Contém o tipo de token (jwt) e criptografia utilizada (HMAC ou RSA);
*Payload*   -> Contém "pedidos". São declarações ou claims associadas ao usuário do token;
*Signature* -> Assinatura usada na validação do token usando uma *chave secreta*.

## Processo de criptografia do token
Usando um algoritmo definido no *header*, o **Header** e o **Payload** são concatenados a assinados usando uma chave *secreta*.
A assinatura é anexada no final do *token* que pode ser usado (por quem tiver a chave secreta) para verificar se o emissor é quem ele afirma ser e se o **token** é válido (claims).