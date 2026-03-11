#line 1 "C:/Users/tristan.alves/Documents/Obsidian/Faculdade/8º Semestre/Microcontroladores/Projetos MIcroC/Projeto 2/Projeto2.c"
void main(){
 cmcon = 7;
 porta = 0;
 trisa = 48;
 portc = 0;
 trisc = 0;
 adcon1 = 15;
 portd = 0;
 trisd = 0;
 ra3_bit = 1;



 while(1){
 if(ra5_bit == 1){
 while(ra5_bit == 1){
 portc = 1;

 }

 }else{
 rc1_bit = 0;
 }
 if (ra4_bit ==1 ){

 portd = 207;
 delay_ms(1000);

 portd = 91;
 delay_ms(1000);

 portd = 6;
 delay_ms(1000);

 portd = 63;
 delay_ms(1000);

 portc = 0;

 ra3_bit = 0;

 }

 }


}
