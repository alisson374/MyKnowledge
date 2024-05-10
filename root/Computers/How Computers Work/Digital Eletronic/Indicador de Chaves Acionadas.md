## Tabela
![[Pasted image 20240304213002.png]]

## Karnaugh saída x
![[Pasted image 20240304214110.png]]
x = *(B ° A) + (C ° A) + (C ° B)*
x = *Aº(B + C) + (C º B)*
## Karnaugh saída y
![[Pasted image 20240304214155.png]]
x = *(C º B! º A!) + (C! º B! º A) + (C º B º A) + (C! º B º A!)*
x = *A! { (C º B!) + (C! º B) } + (C! º B! º A) + (C º B º A)*
x = *A! { (C º B!) + (C! º B) } + A! { (C! º B!) + (C º B) }*
x = *A! º (C xor B) + A º (C xor B)!*
x =
x = *(A xor b xor c)*

## Circuito combinacional
![[Pasted image 20240311201149.png]]