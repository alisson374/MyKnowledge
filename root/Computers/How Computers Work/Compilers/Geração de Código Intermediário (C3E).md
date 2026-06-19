Construir um tradutor de código intermediário para uma linguagem hipotética, exemplificada a seguir:
```js
var
    int cont, num;
    real cont2;

 num = 0;
	 while (cont < 10) {
    cont2 = 3.1415 contador ^ 2;
    if (cont < 5) {
       num = num + cont2;
    }
    else 
       cont = 0;
    }
    cont = cont + 1;
 }
```

O tradutor deve gerar código de três endereços como o exemplo abaixo:

```js
num = 0  
WHILE3:  
	IF cont>=10 GOTO END4	
	T1 = contador^2	
	T2 = 3.1415*T1	
	cont2 = T2	
	IF cont>=5 GOTO ELSE2	
	T3 = num+cont2	
	num = T3	
	GOTO END1
ELSE2:  
	cont = 0
END1:  
	T4 = cont+1	
	cont = T4	
	GOTO WHILE3END4:
```

Deve reconhecer:

- **Expressões aritméticas binárias:** x + y, x – y, x / y, x * y, x ^ y, etc.
- **Expressões aritméticas com parênteses balanceados:** (x + y), x * (y+z), (x / (y-z)), etc.
- **Expressões** **relacionais**: (x > y), x <= (y+z), (x <> (y-z)), etc.
- **Declaração de variáveis**: int x, y | real s | etc.
- **Declaração de vetores e matrizes**: int x[10]; | real m[10][20]; | etc.  
- **Comando de Atribuição simples**: a = b, a = expr + 78.
- **Atribuição de vetores e matrizes**: a = v[i]; | v[i] = v[j]; | v[i] = a; | a = m[i][j]; | m[i][j] = p[i][j]; | etc. 
- **Comando de** **Repetição**: while ( a > b ) { comandos }.
- **Comando de** **Fluxo de controle**: if ( a > b ) { comandos } else {comandos}.
- Exibir mensagem de erro adequada ao contexto quando a sentença de entrada não estiver de acordo com a gramática.
    
A entrada pode ser via dispositivo ou por arquivos. Poderá ter, ou não, uma interface de entrada e manipulação.
Exemplo de GLC de referência, apenas para tomar como exemplo:

![[Pasted image 20260611201201.png]]