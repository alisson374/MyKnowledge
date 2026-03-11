
_main:

;LCD.c,45 :: 		void main() {
;LCD.c,47 :: 		lcd_init();
	CALL        _Lcd_Init+0, 0
;LCD.c,48 :: 		lcd_cmd(_lcd_cursor_off);
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;LCD.c,49 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;LCD.c,51 :: 		while(out == 1){
L_main0:
	MOVLW       0
	XORWF       _out+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main31
	MOVLW       1
	XORWF       _out+0, 0 
L__main31:
	BTFSS       STATUS+0, 2 
	GOTO        L_main1
;LCD.c,100 :: 		lcd_out(1, 1, "Caracter ASCII ");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr1_LCD+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr1_LCD+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;LCD.c,101 :: 		lcd_chr_cp(caracter);
	MOVF        _caracter+0, 0 
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;LCD.c,102 :: 		bytetostr(caracter, txto);
	MOVF        _caracter+0, 0 
	MOVWF       FARG_ByteToStr_input+0 
	MOVLW       _txto+0
	MOVWF       FARG_ByteToStr_output+0 
	MOVLW       hi_addr(_txto+0)
	MOVWF       FARG_ByteToStr_output+1 
	CALL        _ByteToStr+0, 0
;LCD.c,103 :: 		delay_ms(500);
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
;LCD.c,104 :: 		lcd_out(2, 10, txto);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _txto+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_txto+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;LCD.c,105 :: 		caracter++;
	INCF        _caracter+0, 1 
;LCD.c,109 :: 		}
	GOTO        L_main0
L_main1:
;LCD.c,115 :: 		}
L_end_main:
	GOTO        $+0
; end of _main

_men:

;LCD.c,116 :: 		void men(char pos_row, char pos_char) {
;LCD.c,118 :: 		Lcd_Cmd(64);
	MOVLW       64
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;LCD.c,119 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character1[i]);
	CLRF        men_i_L0+0 
L_men3:
	MOVF        men_i_L0+0, 0 
	SUBLW       7
	BTFSS       STATUS+0, 0 
	GOTO        L_men4
	MOVLW       _character1+0
	ADDWF       men_i_L0+0, 0 
	MOVWF       TBLPTR+0 
	MOVLW       hi_addr(_character1+0)
	MOVWF       TBLPTR+1 
	MOVLW       0
	ADDWFC      TBLPTR+1, 1 
	MOVLW       higher_addr(_character1+0)
	MOVWF       TBLPTR+2 
	MOVLW       0
	ADDWFC      TBLPTR+2, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_Lcd_Chr_CP_out_char+0
	CALL        _Lcd_Chr_CP+0, 0
	INCF        men_i_L0+0, 1 
	GOTO        L_men3
L_men4:
;LCD.c,120 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;LCD.c,121 :: 		Lcd_Chr(pos_row, pos_char, 0);
	MOVF        FARG_men_pos_row+0, 0 
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVF        FARG_men_pos_char+0, 0 
	MOVWF       FARG_Lcd_Chr_column+0 
	CLRF        FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;LCD.c,122 :: 		}
L_end_men:
	RETURN      0
; end of _men

_walk1:

;LCD.c,123 :: 		void walk1(char pos_row, char pos_char) {
;LCD.c,125 :: 		Lcd_Cmd(64);
	MOVLW       64
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;LCD.c,126 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character2[i]);
	CLRF        walk1_i_L0+0 
L_walk16:
	MOVF        walk1_i_L0+0, 0 
	SUBLW       7
	BTFSS       STATUS+0, 0 
	GOTO        L_walk17
	MOVLW       _character2+0
	ADDWF       walk1_i_L0+0, 0 
	MOVWF       TBLPTR+0 
	MOVLW       hi_addr(_character2+0)
	MOVWF       TBLPTR+1 
	MOVLW       0
	ADDWFC      TBLPTR+1, 1 
	MOVLW       higher_addr(_character2+0)
	MOVWF       TBLPTR+2 
	MOVLW       0
	ADDWFC      TBLPTR+2, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_Lcd_Chr_CP_out_char+0
	CALL        _Lcd_Chr_CP+0, 0
	INCF        walk1_i_L0+0, 1 
	GOTO        L_walk16
L_walk17:
;LCD.c,127 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;LCD.c,128 :: 		Lcd_Chr(pos_row, pos_char, 0);
	MOVF        FARG_walk1_pos_row+0, 0 
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVF        FARG_walk1_pos_char+0, 0 
	MOVWF       FARG_Lcd_Chr_column+0 
	CLRF        FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;LCD.c,129 :: 		}
L_end_walk1:
	RETURN      0
; end of _walk1

_walk2:

;LCD.c,130 :: 		void walk2(char pos_row, char pos_char) {
;LCD.c,132 :: 		Lcd_Cmd(64);
	MOVLW       64
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;LCD.c,133 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character3[i]);
	CLRF        walk2_i_L0+0 
L_walk29:
	MOVF        walk2_i_L0+0, 0 
	SUBLW       7
	BTFSS       STATUS+0, 0 
	GOTO        L_walk210
	MOVLW       _character3+0
	ADDWF       walk2_i_L0+0, 0 
	MOVWF       TBLPTR+0 
	MOVLW       hi_addr(_character3+0)
	MOVWF       TBLPTR+1 
	MOVLW       0
	ADDWFC      TBLPTR+1, 1 
	MOVLW       higher_addr(_character3+0)
	MOVWF       TBLPTR+2 
	MOVLW       0
	ADDWFC      TBLPTR+2, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_Lcd_Chr_CP_out_char+0
	CALL        _Lcd_Chr_CP+0, 0
	INCF        walk2_i_L0+0, 1 
	GOTO        L_walk29
L_walk210:
;LCD.c,134 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;LCD.c,135 :: 		Lcd_Chr(pos_row, pos_char, 0);
	MOVF        FARG_walk2_pos_row+0, 0 
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVF        FARG_walk2_pos_char+0, 0 
	MOVWF       FARG_Lcd_Chr_column+0 
	CLRF        FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;LCD.c,136 :: 		}
L_end_walk2:
	RETURN      0
; end of _walk2

_walk3:

;LCD.c,137 :: 		void walk3(char pos_row, char pos_char) {
;LCD.c,139 :: 		Lcd_Cmd(64);
	MOVLW       64
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;LCD.c,140 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character4[i]);
	CLRF        walk3_i_L0+0 
L_walk312:
	MOVF        walk3_i_L0+0, 0 
	SUBLW       7
	BTFSS       STATUS+0, 0 
	GOTO        L_walk313
	MOVLW       _character4+0
	ADDWF       walk3_i_L0+0, 0 
	MOVWF       TBLPTR+0 
	MOVLW       hi_addr(_character4+0)
	MOVWF       TBLPTR+1 
	MOVLW       0
	ADDWFC      TBLPTR+1, 1 
	MOVLW       higher_addr(_character4+0)
	MOVWF       TBLPTR+2 
	MOVLW       0
	ADDWFC      TBLPTR+2, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_Lcd_Chr_CP_out_char+0
	CALL        _Lcd_Chr_CP+0, 0
	INCF        walk3_i_L0+0, 1 
	GOTO        L_walk312
L_walk313:
;LCD.c,141 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;LCD.c,142 :: 		Lcd_Chr(pos_row, pos_char, 0);
	MOVF        FARG_walk3_pos_row+0, 0 
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVF        FARG_walk3_pos_char+0, 0 
	MOVWF       FARG_Lcd_Chr_column+0 
	CLRF        FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;LCD.c,143 :: 		}
L_end_walk3:
	RETURN      0
; end of _walk3

_walk4:

;LCD.c,144 :: 		void walk4(char pos_row, char pos_char) {
;LCD.c,146 :: 		Lcd_Cmd(64);
	MOVLW       64
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;LCD.c,147 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character5[i]);
	CLRF        walk4_i_L0+0 
L_walk415:
	MOVF        walk4_i_L0+0, 0 
	SUBLW       7
	BTFSS       STATUS+0, 0 
	GOTO        L_walk416
	MOVLW       _character5+0
	ADDWF       walk4_i_L0+0, 0 
	MOVWF       TBLPTR+0 
	MOVLW       hi_addr(_character5+0)
	MOVWF       TBLPTR+1 
	MOVLW       0
	ADDWFC      TBLPTR+1, 1 
	MOVLW       higher_addr(_character5+0)
	MOVWF       TBLPTR+2 
	MOVLW       0
	ADDWFC      TBLPTR+2, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_Lcd_Chr_CP_out_char+0
	CALL        _Lcd_Chr_CP+0, 0
	INCF        walk4_i_L0+0, 1 
	GOTO        L_walk415
L_walk416:
;LCD.c,148 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;LCD.c,149 :: 		Lcd_Chr(pos_row, pos_char, 0);
	MOVF        FARG_walk4_pos_row+0, 0 
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVF        FARG_walk4_pos_char+0, 0 
	MOVWF       FARG_Lcd_Chr_column+0 
	CLRF        FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;LCD.c,150 :: 		}
L_end_walk4:
	RETURN      0
; end of _walk4

_walk5:

;LCD.c,151 :: 		void walk5(char pos_row, char pos_char) {
;LCD.c,153 :: 		Lcd_Cmd(64);
	MOVLW       64
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;LCD.c,154 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character6[i]);
	CLRF        walk5_i_L0+0 
L_walk518:
	MOVF        walk5_i_L0+0, 0 
	SUBLW       7
	BTFSS       STATUS+0, 0 
	GOTO        L_walk519
	MOVLW       _character6+0
	ADDWF       walk5_i_L0+0, 0 
	MOVWF       TBLPTR+0 
	MOVLW       hi_addr(_character6+0)
	MOVWF       TBLPTR+1 
	MOVLW       0
	ADDWFC      TBLPTR+1, 1 
	MOVLW       higher_addr(_character6+0)
	MOVWF       TBLPTR+2 
	MOVLW       0
	ADDWFC      TBLPTR+2, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_Lcd_Chr_CP_out_char+0
	CALL        _Lcd_Chr_CP+0, 0
	INCF        walk5_i_L0+0, 1 
	GOTO        L_walk518
L_walk519:
;LCD.c,155 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;LCD.c,156 :: 		Lcd_Chr(pos_row, pos_char, 0);
	MOVF        FARG_walk5_pos_row+0, 0 
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVF        FARG_walk5_pos_char+0, 0 
	MOVWF       FARG_Lcd_Chr_column+0 
	CLRF        FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;LCD.c,157 :: 		}
L_end_walk5:
	RETURN      0
; end of _walk5

_walk6:

;LCD.c,158 :: 		void walk6(char pos_row, char pos_char) {
;LCD.c,160 :: 		Lcd_Cmd(64);
	MOVLW       64
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;LCD.c,161 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character7[i]);
	CLRF        walk6_i_L0+0 
L_walk621:
	MOVF        walk6_i_L0+0, 0 
	SUBLW       7
	BTFSS       STATUS+0, 0 
	GOTO        L_walk622
	MOVLW       _character7+0
	ADDWF       walk6_i_L0+0, 0 
	MOVWF       TBLPTR+0 
	MOVLW       hi_addr(_character7+0)
	MOVWF       TBLPTR+1 
	MOVLW       0
	ADDWFC      TBLPTR+1, 1 
	MOVLW       higher_addr(_character7+0)
	MOVWF       TBLPTR+2 
	MOVLW       0
	ADDWFC      TBLPTR+2, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_Lcd_Chr_CP_out_char+0
	CALL        _Lcd_Chr_CP+0, 0
	INCF        walk6_i_L0+0, 1 
	GOTO        L_walk621
L_walk622:
;LCD.c,162 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;LCD.c,163 :: 		Lcd_Chr(pos_row, pos_char, 0);
	MOVF        FARG_walk6_pos_row+0, 0 
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVF        FARG_walk6_pos_char+0, 0 
	MOVWF       FARG_Lcd_Chr_column+0 
	CLRF        FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;LCD.c,164 :: 		}
L_end_walk6:
	RETURN      0
; end of _walk6

_clear:

;LCD.c,165 :: 		void clear(char pos_row, char pos_char) {
;LCD.c,167 :: 		Lcd_Cmd(64);
	MOVLW       64
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;LCD.c,168 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character0[i]);
	CLRF        clear_i_L0+0 
L_clear24:
	MOVF        clear_i_L0+0, 0 
	SUBLW       7
	BTFSS       STATUS+0, 0 
	GOTO        L_clear25
	MOVLW       _character0+0
	ADDWF       clear_i_L0+0, 0 
	MOVWF       TBLPTR+0 
	MOVLW       hi_addr(_character0+0)
	MOVWF       TBLPTR+1 
	MOVLW       0
	ADDWFC      TBLPTR+1, 1 
	MOVLW       higher_addr(_character0+0)
	MOVWF       TBLPTR+2 
	MOVLW       0
	ADDWFC      TBLPTR+2, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_Lcd_Chr_CP_out_char+0
	CALL        _Lcd_Chr_CP+0, 0
	INCF        clear_i_L0+0, 1 
	GOTO        L_clear24
L_clear25:
;LCD.c,169 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;LCD.c,170 :: 		Lcd_Chr(pos_row, pos_char, 0);
	MOVF        FARG_clear_pos_row+0, 0 
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVF        FARG_clear_pos_char+0, 0 
	MOVWF       FARG_Lcd_Chr_column+0 
	CLRF        FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;LCD.c,171 :: 		}
L_end_clear:
	RETURN      0
; end of _clear

_CustomChar:

;LCD.c,176 :: 		void CustomChar(char pos_row, char pos_char) {
;LCD.c,178 :: 		Lcd_Cmd(64);
	MOVLW       64
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;LCD.c,179 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character[i]);
	CLRF        CustomChar_i_L0+0 
L_CustomChar27:
	MOVF        CustomChar_i_L0+0, 0 
	SUBLW       7
	BTFSS       STATUS+0, 0 
	GOTO        L_CustomChar28
	MOVLW       _character+0
	ADDWF       CustomChar_i_L0+0, 0 
	MOVWF       TBLPTR+0 
	MOVLW       hi_addr(_character+0)
	MOVWF       TBLPTR+1 
	MOVLW       0
	ADDWFC      TBLPTR+1, 1 
	MOVLW       higher_addr(_character+0)
	MOVWF       TBLPTR+2 
	MOVLW       0
	ADDWFC      TBLPTR+2, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_Lcd_Chr_CP_out_char+0
	CALL        _Lcd_Chr_CP+0, 0
	INCF        CustomChar_i_L0+0, 1 
	GOTO        L_CustomChar27
L_CustomChar28:
;LCD.c,180 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;LCD.c,181 :: 		Lcd_Chr(pos_row, pos_char, 0);
	MOVF        FARG_CustomChar_pos_row+0, 0 
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVF        FARG_CustomChar_pos_char+0, 0 
	MOVWF       FARG_Lcd_Chr_column+0 
	CLRF        FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;LCD.c,183 :: 		}
L_end_CustomChar:
	RETURN      0
; end of _CustomChar

_clearLine:

;LCD.c,185 :: 		void clearLine(){
;LCD.c,187 :: 		clear(1,1);
	MOVLW       1
	MOVWF       FARG_clear_pos_row+0 
	MOVLW       1
	MOVWF       FARG_clear_pos_char+0 
	CALL        _clear+0, 0
;LCD.c,188 :: 		clear(1,2);
	MOVLW       1
	MOVWF       FARG_clear_pos_row+0 
	MOVLW       2
	MOVWF       FARG_clear_pos_char+0 
	CALL        _clear+0, 0
;LCD.c,189 :: 		clear(1,3);
	MOVLW       1
	MOVWF       FARG_clear_pos_row+0 
	MOVLW       3
	MOVWF       FARG_clear_pos_char+0 
	CALL        _clear+0, 0
;LCD.c,190 :: 		clear(1,4);
	MOVLW       1
	MOVWF       FARG_clear_pos_row+0 
	MOVLW       4
	MOVWF       FARG_clear_pos_char+0 
	CALL        _clear+0, 0
;LCD.c,191 :: 		clear(1,5);
	MOVLW       1
	MOVWF       FARG_clear_pos_row+0 
	MOVLW       5
	MOVWF       FARG_clear_pos_char+0 
	CALL        _clear+0, 0
;LCD.c,192 :: 		clear(1,6);
	MOVLW       1
	MOVWF       FARG_clear_pos_row+0 
	MOVLW       6
	MOVWF       FARG_clear_pos_char+0 
	CALL        _clear+0, 0
;LCD.c,193 :: 		clear(1,7);
	MOVLW       1
	MOVWF       FARG_clear_pos_row+0 
	MOVLW       7
	MOVWF       FARG_clear_pos_char+0 
	CALL        _clear+0, 0
;LCD.c,194 :: 		clear(1,8);
	MOVLW       1
	MOVWF       FARG_clear_pos_row+0 
	MOVLW       8
	MOVWF       FARG_clear_pos_char+0 
	CALL        _clear+0, 0
;LCD.c,195 :: 		clear(1,9);
	MOVLW       1
	MOVWF       FARG_clear_pos_row+0 
	MOVLW       9
	MOVWF       FARG_clear_pos_char+0 
	CALL        _clear+0, 0
;LCD.c,196 :: 		clear(1,10);
	MOVLW       1
	MOVWF       FARG_clear_pos_row+0 
	MOVLW       10
	MOVWF       FARG_clear_pos_char+0 
	CALL        _clear+0, 0
;LCD.c,197 :: 		clear(1,11);
	MOVLW       1
	MOVWF       FARG_clear_pos_row+0 
	MOVLW       11
	MOVWF       FARG_clear_pos_char+0 
	CALL        _clear+0, 0
;LCD.c,198 :: 		clear(1,12);
	MOVLW       1
	MOVWF       FARG_clear_pos_row+0 
	MOVLW       12
	MOVWF       FARG_clear_pos_char+0 
	CALL        _clear+0, 0
;LCD.c,199 :: 		clear(1,13);
	MOVLW       1
	MOVWF       FARG_clear_pos_row+0 
	MOVLW       13
	MOVWF       FARG_clear_pos_char+0 
	CALL        _clear+0, 0
;LCD.c,200 :: 		clear(1,14);
	MOVLW       1
	MOVWF       FARG_clear_pos_row+0 
	MOVLW       14
	MOVWF       FARG_clear_pos_char+0 
	CALL        _clear+0, 0
;LCD.c,201 :: 		clear(1,15);
	MOVLW       1
	MOVWF       FARG_clear_pos_row+0 
	MOVLW       15
	MOVWF       FARG_clear_pos_char+0 
	CALL        _clear+0, 0
;LCD.c,202 :: 		clear(1,16);
	MOVLW       1
	MOVWF       FARG_clear_pos_row+0 
	MOVLW       16
	MOVWF       FARG_clear_pos_char+0 
	CALL        _clear+0, 0
;LCD.c,205 :: 		}
L_end_clearLine:
	RETURN      0
; end of _clearLine
