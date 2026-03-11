#line 1 "C:/Users/tristan.alves/Documents/Obsidian/Faculdade/8º Semestre/Microcontroladores/Projeto2.c"
void main() {
 portd = 0;
 trisd = 0;
 portc = 0;
 trisc = 0;
 ADCON1 = 15;
 CMCON = 7;
 porta = 0;
 trisa = 0;
 ra3_bit = 1;
 while(1){

 portd = 63;
 delay_ms(500);

 portd = 6;
 delay_ms(1000) ;

 portd = 91;
 delay_ms(500);

 portd = 207;
 delay_ms(500);

 portd = 102;
 delay_ms(500);

 portd = 109;
 delay_ms(500);

 portd = 125;
 delay_ms(500);

 portd = 7;
 delay_ms(500);


 portd = 127;
 delay_ms(500);

 portd = 111;
 delay_ms(500);

 }
}
