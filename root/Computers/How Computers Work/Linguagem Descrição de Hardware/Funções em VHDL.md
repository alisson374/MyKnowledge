## Definição
A função deve ser declarada entre a definição da arquitetura e o begin do modelo comportamental.
```VHDL
Archtetecture Behavioral of...
functionn <nome> (parametro de entrada: tipo)
	return <tipo do parametro de retorno>
```

Ex: Fazer uma função para decodificar um número decimal e retornar o código do display
```VHDL
Archtetecture Behavioral of...

function decodifica (numero: integer)
return std_logic_vector is
	variable codigo: std_logic_vector (7 downto 0);

begin
	if numero = 0 then codigo := "10000000";
		elsif numero = 1 then codigo := "11111001";
		elsif numero = 2 then codigo := "10100100";
		elsif numero = 3 then codigo := "10110000";
		elsif numero = 4 then codigo := "10011001";
		elsif numero = 5 then codigo := "10010010";
		elsif numero = 6 then codigo := "10000010";
		elsif numero = 7 then codigo := "11111000";
		elsif numero = 8 then codigo := "10000000";
		else codigo := "00010000"
	end if;
	return codigo;
end decodifica;
```;
