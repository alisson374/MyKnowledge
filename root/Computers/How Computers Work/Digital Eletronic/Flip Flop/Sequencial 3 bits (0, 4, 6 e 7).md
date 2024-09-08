# Circuito Sequencial
## Tabela verdade das transições

|       | C   | B   | A   |
| ----- | --- | --- | --- |
| **0** | 0   | 0   | 0   |
| 4     | 1   | 0   | 0   |
| **6** | 1   | 1   | 0   |
| **7** | 1   | 1   | 1   |

## Mapa de de karnaugh flip flop A
### Mapa transições
|        | B! C! | B C! | B C   | B! C |
| ------ | ----- | ---- | ----- | ---- |
| **A!** | Zero  |      | Alpha | Zero |
| **A**  |       |      | Beta  |      |

### Set A
|        | B! C! | B C! | B C | B! C |
| ------ | ----- | ---- | --- | ---- |
| **A!** | 0     | *x*  | *1* | 0    |
| **A**  | x     | x    | 0   | x    |
Set A = A! º B

### Reset A
|        | B! C! | B C! | B C | B! C |
| ------ | ----- | ---- | --- | ---- |
| **A!** | x     | x    | 0   | x    |
| **A**  | *x*   | *x*  | *1* | *x*  |
Reset A: A
## Mapa de de karnaugh flip flop B

### Mapa transições
|        | B! C! | B C! | B C  | B! C |
| ------ | ----- | ---- | ---- | ---- |
| **A!** | Zero  |      | Um   | Alfa |
| **A**  |       |      | Beta |      |

### Set B
|        | B! C! | B C! | B C | B! C |
| ------ | ----- | ---- | --- | ---- |
| **A!** | 0     |      | *x* | *1*  |
| **A**  |       |      | 0   |      |
Set B = A! º C

### Reset B
|        | B! C! | B C! | B C | B! C |
| ------ | ----- | ---- | --- | ---- |
| **A!** | x     |      | 0   | 0    |
| **A**  | *x*   | *x*  | *1* | *x*  |
Reset B = A
## Mapa de de karnaugh flip flop C

### Mapa transições
|        | B! C! | B C! | B C  | B! C |
| ------ | ----- | ---- | ---- | ---- |
| **A!** | Alfa  |      | Um   | Um   |
| **A**  |       |      | Beta |      |

### Set C
|        | B! C! | B C! | B C | B! C |
| ------ | ----- | ---- | --- | ---- |
| **A!** | *1*   | *x*  | *x* | *x*  |
| **A**  |       |      | 0   |      |
Set C = A!

### Reset C
|        | B! C! | B C! | B C | B! C |
| ------ | ----- | ---- | --- | ---- |
| **A!** | x     | x    | 0   | 0    |
| **A**  | *x*   | *x*  | *1* | *x*  |
Reset C = A

## Circuito no Logisim

![[Pasted image 20240318205921.png]]