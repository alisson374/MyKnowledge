# Interrupções de Temporizador/Contador

* Registro de configuração TMR0;
|  |  |  |  |  |  |  |  |

| TMR0ON | T08BIT | T0CS | T0SE | PSA | T0PS2 | T0PS1 | T0PS0 |
| :----: | :----: | :--: | :--: | :-: | :---: | :---: | :---: |
|  128   |   64   |  32  |  16  |  8  |   4   |   2   |   1   |
|        |        |      |      |     |       |       |       |
* TMR0ON - liga o timer 0;
* T0B8BIT -> liga o timer 8 bits;
* T0CS -> Fonte do clock do timer 0
	* 0 clock interno
	* 1 clock externo ou ray
* T0SE -> Borda de leitura
	* 0 leitura ou zero;
	* 1 leitura ou um;;
* PSA -> Assinalamento do prescaler
	* 1 sem prescaler;
	* 0 prescaler ligado do TMR0;
* Pino RA4 pode ser utilizado para interrupção;
* T0CON = 199; liga o timer;
```
  

char conta_interrupcao = 0; // conta interrupcao

  

void main() {

     portb = 0;

     trisb = 0;     //portb como saida

     t0con = 199; //liga o tmr0

     intcon = 0; //desliga todas as interrup��es

     tmr0ie_bit = 1; //liga interrup��o tmr0

     gie_bit = 1; //liga o sistema de interrup��o;

     while(1){

  
  

     }

}

  

void interrupt(){

  

     tmr0if_bit = 0; //desliga o sinalizador do tmr0

     conta_interrupcao ++;

     if(conta_interrupcao == 30){

     //passou um segundo

               conta_interrupcao = 0;

               portb ++;

     }

  

}
```

# Interrupcoes Emergenciais do pino RB0

* Ligar interrupção: RB0IE_bit = 1;
* Para verificar se a interrupção ocorreu:
``` 
if(rb0if == 1){
	rb0if = 0;
}
```
* 





