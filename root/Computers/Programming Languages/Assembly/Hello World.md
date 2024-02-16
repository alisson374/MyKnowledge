To begin with Assembly see the first exemple, "hello world !":
```nasm
section .data                           ; Inicio da seccao de dados

msg     db      "Ola mundo!", 0xA       ; A mensagem a exibir
LEN     equ     $ - msg                 ; O tamanho (length) dessa mensagem (constante);
                                        ; E' uma convencao comum entre algumas linguagens de
                                        ; programacao que constantes se escrevam em maiusculas


section .text                           ; Inicio da seccao de codigo

        global  _start                  ; Exportar a etiqueta que tem o endereco de
                                        ; arranque do meu programa; por convencao
                                        ; chama-se "_start" a esta etiqueta; usar
                                        ; "ld -e ..." para alterar este nome

_start:

; BLOCO 1
; Escreve a mensagem para o ecra (saida padrao, ou "stdout")

        mov     eax, 4                  ; Funcao do sistema (system call); 4 = sys_write
        mov     ebx, 1                  ; Para sys_write, ebx = handle de escrita; 1 = stdout
        mov     ecx, msg                ; Para sys_write, ecx = endereco da mensagem a escrever
        mov     edx, LEN                ; Para sys_write, edx = tamanho da mensagem a escrever
        int     0x80                    ; Chamar o Linux


; BLOCO 2
; Termina o programa

        mov     eax, 1                  ; Funcao do sistema (system call); 1 = sys_exit
        mov     ebx, 0                  ; Para sys_exit, ebx = codigo de saida; 0 = sucesso
        int     0x80                    ; Chamar o Linux