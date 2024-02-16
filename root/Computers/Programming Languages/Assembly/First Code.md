```nasm
mov ax, 05
mov [0500], ax
dec ax
dec ax
mov ax, [0500]
inc ax
mov bx, ax
mov cx, [0500]
ret
```