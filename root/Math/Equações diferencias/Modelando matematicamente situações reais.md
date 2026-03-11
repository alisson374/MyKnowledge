#### Cabeçalho

Grupo: Alisson dos Santos, Felipe de Sá Correa e Tristan Piamolini
Curso: Engenharia da computação
Disciplina: Equações diferencias
Grau: A
Tipo: Modelando matematicamente situações reais



### Crescimento/Decrescimento Populacional
#### Etapa 1 Coleta de dados
##### População por ano:

| **Ano**       | 1997    | 2010    | 2022    |
| ------------- | ------- | ------- | ------- |
| **População** | 117.541 | 116.794 | 117.878 |
**Cidade:** Bagé

#### Etapa 2 Definição de modelo matemático
Equação para crescimento/decrescimento populacional  $P=C*e^{kt}$, nesse caso utilizada para prever o crescimento populacional.

**1º Encontrar a variável C**
$$
P=C*e^{kt}~~~~->~~~~117.541=C*e^{k~*~0}~~~~~~ | ~~~~~~C=117.541
$$

**2º Encontrar a variável k para $t=2010-1997=13$**
$$
P=C*e^{kt}~~~~->~~~~116.749=117.541*e^{k~*~0}~~~~~~ | ~~~~~~k=-3,7196*10^{-4}
$$

**3º Definir modelo matemático utilizando-se as informações anteriores**
$$
P=117.541*e^{(-3,7196*10^{-4})~t}
$$

**4º Calcular população usando o modelo**
$P(0)=117.541*e^{(-3,7196*10^{-4})~0} ~~~~~~~ | ~~~~~~~ P(0)=117.541$
$P(2010-1997)=117.541*e^{(-3,7196*10^{-4})~13} ~~~~~~~ | ~~~~~~~ P(13)=116.749$
$P(2022-1997)=117.541*e^{(-3,7196*10^{-4})~25} ~~~~~~~ | ~~~~~~~ P(25)=116.453$

#### Etapa 3 Comparação calculado X pesquisado
**Calculado:**

| **Ano**       | 2022    |
| ------------- | ------- |
| **População** | 116.543 |

**Pesquisado**

| **Ano**       | 2022    |
| ------------- | ------- |
| **População** | 117.978 |
**Erro percentual**

Equação:
   $E=|\frac{Pc-Pp}{Pp}|*100$

Neste caso houve um erro percentual para o ano de 2022 de 1,21% pois ao contrário do esperado em 2022 a população sofreu crescimento ao invés de decrescimento. 
### Lei de resfriamento de Newton
#### Etapa 1 Coleta de dados

**Temperatura do ambiente** (Tm): 20°C; 
**Líquido**: refrigerante.
**Temperaturas** T(t) medidas:
$T(0)=10,5°C$
$T(5)=11,2°C$
$T(10)=12,2°C$
$T(20)=13,7°C$
#### Etapa 2 Definição de modelo matemático

Equação do resfriamento de Newton $(T-Tm)=C*e^{kt}$, nesse caso utilizada para prever o aquecimento do refrigerante.

**1º Encontrar a variável C**
$$
(T-Tm)=C*e^{kt}~~~~->~~~~(10,5~-~20)=C*e^{k~*~0}~~~~~~ | ~~~~~~C=-9,5
$$


**2º Encontrar a variável k**
$$
\frac{dT}{dt}=k~(T-Tm) ~~~~~~ -> ~~~~~~~~ \frac{13,7-10,5}{20}=k~(10,5~-~20) ~~~~~~ | ~~~~~~~~ k=-0,0168
 $$

**3º Definir modelo matemático utilizando-se as informações anteriores**
$$T(t)=20+(-9,5*e^{-0,0168~*~t})$$

**4º Calcular temperaturas usando o modelo**
$T(10)=20+(-9,5*e^{-0,0168~*~10}) ~~~~~~~ | ~~~~~~~ T(10)=11,97°C$
$T(20)=20+(-9,5*e^{-0,0168~*~20}) ~~~~~~~ | ~~~~~~~ T(20)=13,21°C$

#### Etapa 3 Comparação calculado X medido

**Calculado:**

| **Tempo**       | t=10min | t=20min |
| --------------- | ------- | ------- |
| **Temperatura** | 11,97°C | 13,21°C |

**Medido:**

| **Tempo**       | t=10min | t=20min |
| --------------- | ------- | ------- |
| **Temperatura** | 12,2°C  | 13,7°C  |

**Erro percentual**

Equação:
   $E=|\frac{Tc-Tm}{Tm}|*100$

Erro para t=10min: 1,88%
Erro para t=20min: 3,57%
