# Teste de Hardware e primeiras configurações
* Start config:
```
void main() {
     trisc = 0;
     ADCON1 = 15;
     CMCON = 7;
     while(1){
              rc2_bit = 1;
              DELAY_MS(500);

              rc2_bit = 0;
              DELAY_MS(1000);
     }
}
```

# Acionamento Digital

* Acionamento de apenas um bit utilizando RYX_bit = 0 ou RC2_bit = 1;
* Y porta de comunicação Y = A,B,C,D ou E;
* X = bit> 0, 1, 2, 3, 4, 5, 6, 7;
* Acionamento dos 8bits da porta de comunicação:
	* Porty = valor
	* y = A, B, C, D, E;
	* 


