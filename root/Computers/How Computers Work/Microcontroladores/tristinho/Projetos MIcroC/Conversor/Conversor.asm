
_main:

;Conversor.c,23 :: 		void main() {
;Conversor.c,25 :: 		porta = 0;
	CLRF        PORTA+0 
;Conversor.c,26 :: 		trisa = 1;//apenas RA0 como entrada
	MOVLW       1
	MOVWF       TRISA+0 
;Conversor.c,27 :: 		cmcon = 7;
	MOVLW       7
	MOVWF       CMCON+0 
;Conversor.c,28 :: 		adcon1 = 14;
	MOVLW       14
	MOVWF       ADCON1+0 
;Conversor.c,29 :: 		intcon2 = 0;
	CLRF        INTCON2+0 
;Conversor.c,30 :: 		ADC_init();
	CALL        _ADC_Init+0, 0
;Conversor.c,31 :: 		lcd_init();
	CALL        _Lcd_Init+0, 0
;Conversor.c,32 :: 		lcd_cmd(_LCD_CURSOR_OFF);
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Conversor.c,33 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Conversor.c,36 :: 		while(1){
L_main0:
;Conversor.c,38 :: 		read = ADC_read(0);//Lê a entrada RA0;
	CLRF        FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _read+0 
	MOVF        R1, 0 
	MOVWF       _read+1 
;Conversor.c,39 :: 		calc = (read * 0.4901) + 0.3937;
	CALL        _int2double+0, 0
	MOVLW       99
	MOVWF       R4 
	MOVLW       238
	MOVWF       R5 
	MOVLW       122
	MOVWF       R6 
	MOVLW       125
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVLW       12
	MOVWF       R4 
	MOVLW       147
	MOVWF       R5 
	MOVLW       73
	MOVWF       R6 
	MOVLW       125
	MOVWF       R7 
	CALL        _Add_32x32_FP+0, 0
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       _calc+0 
	MOVF        R1, 0 
	MOVWF       _calc+1 
;Conversor.c,40 :: 		inttostr(calc, texto);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _texto+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_texto+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;Conversor.c,41 :: 		lcd_out(1,1, "Valor =");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr1_Conversor+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr1_Conversor+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Conversor.c,42 :: 		lcd_out_cp(texto);
	MOVLW       _texto+0
	MOVWF       FARG_Lcd_Out_CP_text+0 
	MOVLW       hi_addr(_texto+0)
	MOVWF       FARG_Lcd_Out_CP_text+1 
	CALL        _Lcd_Out_CP+0, 0
;Conversor.c,46 :: 		}
	GOTO        L_main0
;Conversor.c,53 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
