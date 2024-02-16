## Getting Started Assembly de 8086

debug -> chama editor assembly
a -> opens editor
g -> runs program (obs: terminar o sempre com o ret)

```c
//carrega o valor a(10 em decimal) no registrador ah 
mov ah, 0a
ret
```

### Codes Exemplos
[[First Code]]: first code exemple.
[[Write name loop x times]]: this code write on console my name x times

## Getting Started Assembly 32 e 64 bits
### Links 
[Web-nasm](https://ideone.com/l/assembler-64bit-nasm)
[Linux Syscalls - 32 bits](https://www.ime.usp.br/~kon/MAC211/syscalls.html)
[Linux Syscalls - 64 bits](https://blog.rchapman.org/posts/Linux_System_Call_Table_for_x86_64/)
### Declaration of variables
[[Variables]]
### Exemples
[[Hello World]]
[[Alfabeto]]

### Compilando com asm em Linux
```powershell
$- nasm -f elf64 arquivo de input
$- ld arquivo.o -o nomeOutput
```