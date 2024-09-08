Hardware 1:
```c
//entrada vazia em gnd
if(RA3_bit == 1) {
	while(RA3_bit == 1)
		dealy_ms(100);
	//acoes desejadas quando ra3 for acionado
}
```

Hardware 2:
```c
//entrada vazia em vcc
if(RA3_bit == 0) {
	while(RA3_bit == 0)
		dealy_ms(100);
	//acoes desejadas quando ra3 for acionado
}
```

Exemplo 3:
Acionamento com pulso de clock seguro
```c
//entrada vazia em gnd
if(RA3_bit == 0) {
	delay_ms(1000); //aguarda 1 segundo para confirmação
	
	if(RD3 == 0) {
		while(RA3_bit == 1)
			delay_ms(100);
		//acoes desejadas quando ra3 for acionado
	}
}
```