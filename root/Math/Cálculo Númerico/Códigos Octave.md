## Plotar gráfico
```c
clear, clc
disp(" Plotar Gráficos");
x=linspace(0,5,100);
y=x.^2-2;
plot(x,y)
grid on
```

```c
disp("Plota gráficos");
x=[0:0.1:5];
y=x.^2-2;
plot(x,y)
grid on
```

```c
disp("Plota grafico");
x=[-7:0.1:4];
y=5+30^x+(0.5)(-9.81)x.^2;
plot(x, y);
grid on;
```

```c
% dados de entrada % 
pkg load symbolic 
a = 4; 
b = 2; 
syms x f =5+30.^x+1/2-9.81*x.^2; 
tol= 0.01; 
[r,it,erro] = bisseccao(f,a,b,tol)
```

```c
disp("calcular o erro absoluto, relativo e percentual");
exato = input("digite o valor exato");
aprox = input("digite o valor aproximado");

errabs = abs(exato-aprox);
errorel = errabs/abs(exato);
erroperc = errorel*100;
```