#line 1 "C:/Users/tristan.alves/Documents/Obsidian/Faculdade/8º Semestre/Microcontroladores/Projeto_1___Pisca_Led.c"
void main() {
 trisc = 0;
 ADCON1 = 15;
 CMCON = 7;
 while(1){
 rc2_bit = 0;
 DELAY_MS(500);

 rc2_bit = 1;
 DELAY_MS(1000);

 }

}
