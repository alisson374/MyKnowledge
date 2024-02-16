```c
section .bss ; variables
  output:     resb 1
  character: resb 1
  primeiro: resb 1
  segundo: resb 1
  terceiro: resb 1
  quarto: resb 1

section .text ;main function
  global _start


_start:
  

  mov     ecx, primeiro
  call _ler
  mov     ecx, segundo
  call _ler
  mov     ecx, terceiro
  call _ler
  mov     ecx, quarto
  call _ler

  mov  ch, [primeiro]
  dec ch
  mov  [output], ch;0x61


_loop:
  inc byte [output]

  mov ch, [terceiro]
  cmp [output], ch
  jl _continue
  mov ch, [quarto]
  cmp [output], ch
  jle _loop



_continue: 
  call _write
  
  mov ch, [segundo]
  cmp byte [output], ch
  jne _loop;

  mov eax,1
  mov ebx,0
  int 0x80

_write:
  mov eax,4
  mov ebx,1
  mov edx,1
  mov ecx, output
  int 0x80
  ret

_ler:
  mov     eax, 3          ; Funcao do sistema (system call); 3 = sys_read
  mov     ebx, 0          ; Para sys_read, ebx = handle de leitura; 0 = stdin
  mov     edx, 1           ; Para sys_read, edx = tamanho maximo do buffer
  int     0x80            ; Chamar o Linux
  ret
```
