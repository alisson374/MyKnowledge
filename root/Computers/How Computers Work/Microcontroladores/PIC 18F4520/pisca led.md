```c
void main() {
 PORTD = 0;
 TRISD = 0;
 ADCON1 = 15;
 CMCON = 7;

 while(1){
  rc2_bit = 1;
  delay_ms(5000);
  rc2_bit = 0;
  delay_ms(5000);
 }
}
```