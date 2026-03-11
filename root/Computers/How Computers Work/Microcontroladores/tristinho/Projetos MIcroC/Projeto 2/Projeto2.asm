
_main:

;Projeto2.c,1 :: 		void main(){
;Projeto2.c,2 :: 		cmcon = 7;
	MOVLW       7
	MOVWF       CMCON+0 
;Projeto2.c,3 :: 		porta = 0;      //desliga a porta
	CLRF        PORTA+0 
;Projeto2.c,4 :: 		trisa = 48;     //define as portas que vao operar neste caso RA4 e RA5
	MOVLW       48
	MOVWF       TRISA+0 
;Projeto2.c,5 :: 		portc = 0;
	CLRF        PORTC+0 
;Projeto2.c,6 :: 		trisc = 0;
	CLRF        TRISC+0 
;Projeto2.c,7 :: 		adcon1 = 15;
	MOVLW       15
	MOVWF       ADCON1+0 
;Projeto2.c,8 :: 		portd = 0;
	CLRF        PORTD+0 
;Projeto2.c,9 :: 		trisd = 0;
	CLRF        TRISD+0 
;Projeto2.c,10 :: 		ra3_bit = 1;
	BSF         RA3_bit+0, BitPos(RA3_bit+0) 
;Projeto2.c,14 :: 		while(1){
L_main0:
;Projeto2.c,15 :: 		if(ra5_bit == 1){
	BTFSS       RA5_bit+0, BitPos(RA5_bit+0) 
	GOTO        L_main2
;Projeto2.c,16 :: 		while(ra5_bit == 1){
L_main3:
	BTFSS       RA5_bit+0, BitPos(RA5_bit+0) 
	GOTO        L_main4
;Projeto2.c,17 :: 		portc = 1;
	MOVLW       1
	MOVWF       PORTC+0 
;Projeto2.c,19 :: 		}
	GOTO        L_main3
L_main4:
;Projeto2.c,21 :: 		}else{
	GOTO        L_main5
L_main2:
;Projeto2.c,22 :: 		rc1_bit = 0;
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
;Projeto2.c,23 :: 		}
L_main5:
;Projeto2.c,24 :: 		if (ra4_bit ==1 ){
	BTFSS       RA4_bit+0, BitPos(RA4_bit+0) 
	GOTO        L_main6
;Projeto2.c,26 :: 		portd = 207;
	MOVLW       207
	MOVWF       PORTD+0 
;Projeto2.c,27 :: 		delay_ms(1000);
	MOVLW       26
	MOVWF       R11, 0
	MOVLW       94
	MOVWF       R12, 0
	MOVLW       110
	MOVWF       R13, 0
L_main7:
	DECFSZ      R13, 1, 1
	BRA         L_main7
	DECFSZ      R12, 1, 1
	BRA         L_main7
	DECFSZ      R11, 1, 1
	BRA         L_main7
	NOP
;Projeto2.c,29 :: 		portd = 91;
	MOVLW       91
	MOVWF       PORTD+0 
;Projeto2.c,30 :: 		delay_ms(1000);
	MOVLW       26
	MOVWF       R11, 0
	MOVLW       94
	MOVWF       R12, 0
	MOVLW       110
	MOVWF       R13, 0
L_main8:
	DECFSZ      R13, 1, 1
	BRA         L_main8
	DECFSZ      R12, 1, 1
	BRA         L_main8
	DECFSZ      R11, 1, 1
	BRA         L_main8
	NOP
;Projeto2.c,32 :: 		portd = 6;
	MOVLW       6
	MOVWF       PORTD+0 
;Projeto2.c,33 :: 		delay_ms(1000);
	MOVLW       26
	MOVWF       R11, 0
	MOVLW       94
	MOVWF       R12, 0
	MOVLW       110
	MOVWF       R13, 0
L_main9:
	DECFSZ      R13, 1, 1
	BRA         L_main9
	DECFSZ      R12, 1, 1
	BRA         L_main9
	DECFSZ      R11, 1, 1
	BRA         L_main9
	NOP
;Projeto2.c,35 :: 		portd = 63;
	MOVLW       63
	MOVWF       PORTD+0 
;Projeto2.c,36 :: 		delay_ms(1000);
	MOVLW       26
	MOVWF       R11, 0
	MOVLW       94
	MOVWF       R12, 0
	MOVLW       110
	MOVWF       R13, 0
L_main10:
	DECFSZ      R13, 1, 1
	BRA         L_main10
	DECFSZ      R12, 1, 1
	BRA         L_main10
	DECFSZ      R11, 1, 1
	BRA         L_main10
	NOP
;Projeto2.c,38 :: 		portc  = 0;
	CLRF        PORTC+0 
;Projeto2.c,40 :: 		ra3_bit = 0;
	BCF         RA3_bit+0, BitPos(RA3_bit+0) 
;Projeto2.c,42 :: 		}
L_main6:
;Projeto2.c,44 :: 		}
	GOTO        L_main0
;Projeto2.c,47 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
