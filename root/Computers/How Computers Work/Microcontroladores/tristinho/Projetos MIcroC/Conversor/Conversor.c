
 // LCD module connections
sbit LCD_RS at RE0_bit;
sbit LCD_EN at RE1_bit;
sbit LCD_D4 at RD4_bit;
sbit LCD_D5 at RD5_bit;
sbit LCD_D6 at RD6_bit;
sbit LCD_D7 at RD7_bit;

sbit LCD_RS_Direction at TRISE0_bit;
sbit LCD_EN_Direction at TRISE1_bit;
sbit LCD_D4_Direction at TRISD4_bit;
sbit LCD_D5_Direction at TRISD5_bit;
sbit LCD_D6_Direction at TRISD6_bit;
sbit LCD_D7_Direction at TRISD7_bit;
// End LCD module connections

int read = 0; // recebe leitura do conversor ad
int calc = 0;
char texto [8];


void main() {

     porta = 0;
     trisa = 1;//apenas RA0 como entrada
     cmcon = 7;
     adcon1 = 14;
     intcon2 = 0;
     ADC_init();
     lcd_init();
     lcd_cmd(_LCD_CURSOR_OFF);
     lcd_cmd(_LCD_CLEAR);
     
     
     while(1){
     
              read = ADC_read(0);//Lê a entrada RA0;
              calc = (read * 0.4901) + 0.3937;
              inttostr(calc, texto);
              lcd_out(1,1, "Valor =");
              lcd_out_cp(texto);
              
     

     }

     




}