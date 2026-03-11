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

char valor = 127;
int numero = 3445678;
float real = 3.1415;
char txt[15];
char txto[10];
char caracter = 32;
int out = 0;
const char character[] = {0,0,0,0,16,0,16,0};
const char character1[] = {0,0,0,16,24,16,8,0};
const char character2[] = {0,0,0,8,28,8,20,0};
const char character3[] = {0,0,0,4,14,4,2,0};
const char character4[] = {0,0,0,4,14,4,2,0};
const char character5[] = {0,0,0,2,7,2,5,0};
const char character6[] = {0,0,0,1,3,1,2,0};
const char character7[] = {0,0,0,0,1,0,1,0};
const char character0[] = {0,0,0,0,0,0,0,0};

void CustomChar(char pos_row, char pos_char);
void men(char pos_row, char pos_char);
void walk1(char pos_row, char pos_char);
void walk2(char pos_row, char pos_char) ;
void walk3(char pos_row, char pos_char) ;
void walk4(char pos_row, char pos_char) ;
void walk5(char pos_row, char pos_char) ;
void walk6(char pos_row, char pos_char) ;
void clear(char pos_row, char pos_char) ;
void clearLine();

void main() {

     lcd_init();
     lcd_cmd(_lcd_cursor_off);
     Lcd_Cmd(_LCD_CLEAR);

     while(out == 1){
             /* lcd_out(1, 1, "_");
              delay_ms(250);
              lcd_out(1, 2, "_");
              delay_ms(250);
              lcd_out(1, 3, "_");
              delay_ms(250);
              lcd_out(1, 1, " ");
              delay_ms(250);
              lcd_out(1, 2, " ");
              delay_ms(250);
              lcd_out(1, 3, " ");
              delay_ms(250);
              lcd_out(1, 1, "_");
              delay_ms(250);
              lcd_out(1, 2, "_");
              delay_ms(250);
              lcd_out(1, 3, "_");
              delay_ms(250);
              lcd_out(1, 1, " ");
              delay_ms(250);
              lcd_out(1, 2, " ");
              delay_ms(250);
              lcd_out(1, 3, " ");
              delay_ms(250);
              lcd_out(2, 1, "Valor =");
              bytetostr(valor, txt);
              lcd_out_cp(txt);
              lcd_out_cp("   ")   ;

              men(2, 8);
              delay_ms(100);
              walk1(2,8);
              delay_ms(100);
              walk2(2,8);
              delay_ms(100);
              walk3(2, 8);
              delay_ms(100);
              walk4(2, 8);
              delay_ms(100);
              walk5(2, 8);
              delay_ms(100);
              walk6(2, 8);
              delay_ms(100);
              clear(2,8);
              delay_ms(100);

              clearLine();              */

              lcd_out(1, 1, "Caracter ASCII ");
              lcd_chr_cp(caracter);
              bytetostr(caracter, txto);
              delay_ms(500);
              lcd_out(2, 10, txto);
              caracter++;



              }





}
void men(char pos_row, char pos_char) {
  char i;
    Lcd_Cmd(64);
    for (i = 0; i<=7; i++) Lcd_Chr_CP(character1[i]);
    Lcd_Cmd(_LCD_RETURN_HOME);
    Lcd_Chr(pos_row, pos_char, 0);
}
void walk1(char pos_row, char pos_char) {
  char i;
    Lcd_Cmd(64);
    for (i = 0; i<=7; i++) Lcd_Chr_CP(character2[i]);
    Lcd_Cmd(_LCD_RETURN_HOME);
    Lcd_Chr(pos_row, pos_char, 0);
}
void walk2(char pos_row, char pos_char) {
  char i;
    Lcd_Cmd(64);
    for (i = 0; i<=7; i++) Lcd_Chr_CP(character3[i]);
    Lcd_Cmd(_LCD_RETURN_HOME);
    Lcd_Chr(pos_row, pos_char, 0);
}
void walk3(char pos_row, char pos_char) {
  char i;
    Lcd_Cmd(64);
    for (i = 0; i<=7; i++) Lcd_Chr_CP(character4[i]);
    Lcd_Cmd(_LCD_RETURN_HOME);
    Lcd_Chr(pos_row, pos_char, 0);
}
void walk4(char pos_row, char pos_char) {
  char i;
    Lcd_Cmd(64);
    for (i = 0; i<=7; i++) Lcd_Chr_CP(character5[i]);
    Lcd_Cmd(_LCD_RETURN_HOME);
    Lcd_Chr(pos_row, pos_char, 0);
}
void walk5(char pos_row, char pos_char) {
  char i;
    Lcd_Cmd(64);
    for (i = 0; i<=7; i++) Lcd_Chr_CP(character6[i]);
    Lcd_Cmd(_LCD_RETURN_HOME);
    Lcd_Chr(pos_row, pos_char, 0);
}
void walk6(char pos_row, char pos_char) {
  char i;
    Lcd_Cmd(64);
    for (i = 0; i<=7; i++) Lcd_Chr_CP(character7[i]);
    Lcd_Cmd(_LCD_RETURN_HOME);
    Lcd_Chr(pos_row, pos_char, 0);
}
void clear(char pos_row, char pos_char) {
  char i;
    Lcd_Cmd(64);
    for (i = 0; i<=7; i++) Lcd_Chr_CP(character0[i]);
    Lcd_Cmd(_LCD_RETURN_HOME);
    Lcd_Chr(pos_row, pos_char, 0);
}




void CustomChar(char pos_row, char pos_char) {
  char i;
    Lcd_Cmd(64);
    for (i = 0; i<=7; i++) Lcd_Chr_CP(character[i]);
    Lcd_Cmd(_LCD_RETURN_HOME);
    Lcd_Chr(pos_row, pos_char, 0);

}

void clearLine(){

     clear(1,1);
     clear(1,2);
     clear(1,3);
     clear(1,4);
     clear(1,5);
     clear(1,6);
     clear(1,7);
     clear(1,8);
     clear(1,9);
     clear(1,10);
     clear(1,11);
     clear(1,12);
     clear(1,13);
     clear(1,14);
     clear(1,15);
     clear(1,16);


}