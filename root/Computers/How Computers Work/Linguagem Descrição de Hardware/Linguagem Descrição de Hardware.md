Linguagem utilizada: VHDL
*Bits:*  '1'  ou '0'
*Bytes*: "01010"

## Sumário
[[Funções em VHDL]]
## Anti ruído
![[Pasted image 20250326192553.png]]

## Funções em VHDL
A função deve ser declarada entre a definição da arquitetura e o begin do modelo comportamental.
```c
Archtetecture Behavioral of...
functionn <nome> (parametro de entrada: tipo)
return <tipo do parametro de retorno>
```

Ex: Fazer uma função para decodificar um número decimal e retornar o código do display

