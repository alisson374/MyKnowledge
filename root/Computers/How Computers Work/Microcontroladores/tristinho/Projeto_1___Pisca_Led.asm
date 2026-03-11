
_main:

;Projeto_1___Pisca_Led.c,1 :: 		void main() {
;Projeto_1___Pisca_Led.c,2 :: 		trisc = 0;
	CLRF        TRISC+0 
;Projeto_1___Pisca_Led.c,3 :: 		ADCON1 = 15;           //todos canais digitais
	MOVLW       15
	MOVWF       ADCON1+0 
;Projeto_1___Pisca_Led.c,4 :: 		CMCON = 7;             //todos os comparadores digitais
	MOVLW       7
	MOVWF       CMCON+0 
;Projeto_1___Pisca_Led.c,5 :: 		while(1){
L_main0:
;Projeto_1___Pisca_Led.c,6 :: 		rc2_bit = 0;
	BCF         RC2_bit+0, BitPos(RC2_bit+0) 
;Projeto_1___Pisca_Led.c,7 :: 		DELAY_MS(500);
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
;Projeto_1___Pisca_Led.c,9 :: 		rc2_bit = 1;
	BSF         RC2_bit+0, BitPos(RC2_bit+0) 
;Projeto_1___Pisca_Led.c,10 :: 		DELAY_MS(1000);
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
;Projeto_1___Pisca_Led.c,12 :: 		}
	GOTO        L_main0
;Projeto_1___Pisca_Led.c,14 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
