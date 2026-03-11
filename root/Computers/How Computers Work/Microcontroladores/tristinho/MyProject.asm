
_main:

;MyProject.c,1 :: 		void main() {
;MyProject.c,2 :: 		trisc = 0;
	CLRF        TRISC+0 
;MyProject.c,3 :: 		ADCON1 = 15;
	MOVLW       15
	MOVWF       ADCON1+0 
;MyProject.c,4 :: 		CMCON = 7;
	MOVLW       7
	MOVWF       CMCON+0 
;MyProject.c,5 :: 		while(1){
L_main0:
;MyProject.c,6 :: 		rc2_bit = 1;
	BSF         RC2_bit+0, BitPos(RC2_bit+0) 
;MyProject.c,7 :: 		DELAY_MS(500);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_main2:
	DECFSZ      R13, 1, 1
	BRA         L_main2
	DECFSZ      R12, 1, 1
	BRA         L_main2
	DECFSZ      R11, 1, 1
	BRA         L_main2
	NOP
	NOP
;MyProject.c,9 :: 		rc2_bit = 0;
	BCF         RC2_bit+0, BitPos(RC2_bit+0) 
;MyProject.c,10 :: 		DELAY_MS(1000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main3:
	DECFSZ      R13, 1, 1
	BRA         L_main3
	DECFSZ      R12, 1, 1
	BRA         L_main3
	DECFSZ      R11, 1, 1
	BRA         L_main3
	NOP
	NOP
;MyProject.c,12 :: 		}
	GOTO        L_main0
;MyProject.c,14 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
