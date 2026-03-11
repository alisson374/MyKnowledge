
_main:

;Projeto2.c,1 :: 		void main() {
;Projeto2.c,2 :: 		portd = 0;
	CLRF        PORTD+0 
;Projeto2.c,3 :: 		trisd = 0;
	CLRF        TRISD+0 
;Projeto2.c,4 :: 		portc = 0;
	CLRF        PORTC+0 
;Projeto2.c,5 :: 		trisc = 0;
	CLRF        TRISC+0 
;Projeto2.c,6 :: 		ADCON1 = 15;
	MOVLW       15
	MOVWF       ADCON1+0 
;Projeto2.c,7 :: 		CMCON = 7;
	MOVLW       7
	MOVWF       CMCON+0 
;Projeto2.c,8 :: 		porta = 0;
	CLRF        PORTA+0 
;Projeto2.c,9 :: 		trisa = 0;
	CLRF        TRISA+0 
;Projeto2.c,10 :: 		ra3_bit = 1;
	BSF         RA3_bit+0, BitPos(RA3_bit+0) 
;Projeto2.c,11 :: 		while(1){
L_main0:
;Projeto2.c,13 :: 		portd = 63;
	MOVLW       63
	MOVWF       PORTD+0 
;Projeto2.c,14 :: 		delay_ms(500);
	MOVLW       13
	MOVWF       R11, 0
	MOVLW       175
	MOVWF       R12, 0
	MOVLW       182
	MOVWF       R13, 0
L_main2:
	DECFSZ      R13, 1, 1
	BRA         L_main2
	DECFSZ      R12, 1, 1
	BRA         L_main2
	DECFSZ      R11, 1, 1
	BRA         L_main2
	NOP
;Projeto2.c,16 :: 		portd = 6;
	MOVLW       6
	MOVWF       PORTD+0 
;Projeto2.c,17 :: 		delay_ms(1000)   ;
	MOVLW       26
	MOVWF       R11, 0
	MOVLW       94
	MOVWF       R12, 0
	MOVLW       110
	MOVWF       R13, 0
L_main3:
	DECFSZ      R13, 1, 1
	BRA         L_main3
	DECFSZ      R12, 1, 1
	BRA         L_main3
	DECFSZ      R11, 1, 1
	BRA         L_main3
	NOP
;Projeto2.c,19 :: 		portd = 91;
	MOVLW       91
	MOVWF       PORTD+0 
;Projeto2.c,20 :: 		delay_ms(500);
	MOVLW       13
	MOVWF       R11, 0
	MOVLW       175
	MOVWF       R12, 0
	MOVLW       182
	MOVWF       R13, 0
L_main4:
	DECFSZ      R13, 1, 1
	BRA         L_main4
	DECFSZ      R12, 1, 1
	BRA         L_main4
	DECFSZ      R11, 1, 1
	BRA         L_main4
	NOP
;Projeto2.c,22 :: 		portd = 207;
	MOVLW       207
	MOVWF       PORTD+0 
;Projeto2.c,23 :: 		delay_ms(500);
	MOVLW       13
	MOVWF       R11, 0
	MOVLW       175
	MOVWF       R12, 0
	MOVLW       182
	MOVWF       R13, 0
L_main5:
	DECFSZ      R13, 1, 1
	BRA         L_main5
	DECFSZ      R12, 1, 1
	BRA         L_main5
	DECFSZ      R11, 1, 1
	BRA         L_main5
	NOP
;Projeto2.c,25 :: 		portd = 102;
	MOVLW       102
	MOVWF       PORTD+0 
;Projeto2.c,26 :: 		delay_ms(500);
	MOVLW       13
	MOVWF       R11, 0
	MOVLW       175
	MOVWF       R12, 0
	MOVLW       182
	MOVWF       R13, 0
L_main6:
	DECFSZ      R13, 1, 1
	BRA         L_main6
	DECFSZ      R12, 1, 1
	BRA         L_main6
	DECFSZ      R11, 1, 1
	BRA         L_main6
	NOP
;Projeto2.c,28 :: 		portd = 109;
	MOVLW       109
	MOVWF       PORTD+0 
;Projeto2.c,29 :: 		delay_ms(500);
	MOVLW       13
	MOVWF       R11, 0
	MOVLW       175
	MOVWF       R12, 0
	MOVLW       182
	MOVWF       R13, 0
L_main7:
	DECFSZ      R13, 1, 1
	BRA         L_main7
	DECFSZ      R12, 1, 1
	BRA         L_main7
	DECFSZ      R11, 1, 1
	BRA         L_main7
	NOP
;Projeto2.c,31 :: 		portd = 125;
	MOVLW       125
	MOVWF       PORTD+0 
;Projeto2.c,32 :: 		delay_ms(500);
	MOVLW       13
	MOVWF       R11, 0
	MOVLW       175
	MOVWF       R12, 0
	MOVLW       182
	MOVWF       R13, 0
L_main8:
	DECFSZ      R13, 1, 1
	BRA         L_main8
	DECFSZ      R12, 1, 1
	BRA         L_main8
	DECFSZ      R11, 1, 1
	BRA         L_main8
	NOP
;Projeto2.c,34 :: 		portd = 7;
	MOVLW       7
	MOVWF       PORTD+0 
;Projeto2.c,35 :: 		delay_ms(500);
	MOVLW       13
	MOVWF       R11, 0
	MOVLW       175
	MOVWF       R12, 0
	MOVLW       182
	MOVWF       R13, 0
L_main9:
	DECFSZ      R13, 1, 1
	BRA         L_main9
	DECFSZ      R12, 1, 1
	BRA         L_main9
	DECFSZ      R11, 1, 1
	BRA         L_main9
	NOP
;Projeto2.c,38 :: 		portd = 127;
	MOVLW       127
	MOVWF       PORTD+0 
;Projeto2.c,39 :: 		delay_ms(500);
	MOVLW       13
	MOVWF       R11, 0
	MOVLW       175
	MOVWF       R12, 0
	MOVLW       182
	MOVWF       R13, 0
L_main10:
	DECFSZ      R13, 1, 1
	BRA         L_main10
	DECFSZ      R12, 1, 1
	BRA         L_main10
	DECFSZ      R11, 1, 1
	BRA         L_main10
	NOP
;Projeto2.c,41 :: 		portd = 111;
	MOVLW       111
	MOVWF       PORTD+0 
;Projeto2.c,42 :: 		delay_ms(500);
	MOVLW       13
	MOVWF       R11, 0
	MOVLW       175
	MOVWF       R12, 0
	MOVLW       182
	MOVWF       R13, 0
L_main11:
	DECFSZ      R13, 1, 1
	BRA         L_main11
	DECFSZ      R12, 1, 1
	BRA         L_main11
	DECFSZ      R11, 1, 1
	BRA         L_main11
	NOP
;Projeto2.c,44 :: 		}
	GOTO        L_main0
;Projeto2.c,45 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
