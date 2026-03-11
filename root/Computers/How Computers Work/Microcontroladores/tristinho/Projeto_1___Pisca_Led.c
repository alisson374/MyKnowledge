void main() {
     trisc = 0;
     ADCON1 = 15;           //todos canais digitais
     CMCON = 7;             //todos os comparadores digitais
     while(1){
              rc2_bit = 0;
              DELAY_MS(500);

              rc2_bit = 1;
              DELAY_MS(1000);
     
     }

}