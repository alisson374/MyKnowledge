## Exemplo 1
Se g(x) e h(y) são *funções contínua*, e equações de *1ª ordem*:
$$\frac{dy}{dx} = \frac{g(x)}{h(y)} ~~~~~ -> ~~~~~ h(y)\frac{dy}{dx} = \frac{g(x)}{h(y)}h(y) ~~~~~ -> ~~~~~ dx\frac{h(y)dy}{dx} = g(x)dx ~~~~~ -> ~~~~~ \int{h(y)dy}=\int{g(x)dx}$$

*a)* $\frac{dy}{dx}=sen(x)$  ->  $dy=sen(x)dx$  ->  $\int{dy}=\int{sen(x)dx}$  -> $y = -cos(x) + C$ 


*b)* $\frac{dy}{dx}=xy$   ->   $\frac{dy}{y}=xdx$   ->   $\int\frac{dy}{y}=\int{xdx}$  ->  $ln(y)=\frac{x^2}{2}+C$  ->  $y=e^{\frac{x^2}{2}+C}$ ->  $y=e^C.e^\frac{x^2}{2}$  ->   $y=C . e^{\frac{x^2}{2}}$


*c)* $(1+x)dy-ydx=0$  -> $(1+c)dy=ydx$  ->  $\frac{(1+x)dy}{y}=dx$   ->   $\frac{dy}{y}=\frac{dx}{1+x}$  ->  $\int\frac{dy}{y}=\int\frac{dx}{1+x}$  ->  $y=e^{ln(1+x)+C}$  ->   $y=C.e^{ln(1+x)+C}$    

## Exemplo 2
Obtenha a *solução particular* da equação diferencial $\frac{dy}{dx}=\frac{x^2}{y}$ quando $y(1)=2$:
*Parte 1*:
$$\int{ydy}=\int{x^2dx}~~~~->~~~~\frac{y^2}{2}=\frac{x^3}{3}~~~~->~~~~\sqrt\frac{y^2}{2}=\sqrt\frac{x^3}{3}~~~~->~~~~y=\sqrt{\frac{2x^3}{3}+C}~~~~(solucao~~geral)$$

*Parte 2*:
$$2^2=\frac{\sqrt{2.1^3}}{3}+C~~~~->~~~~4=\frac{2}{3}+C~~~~->~~~~C=\frac{10}{3}$$

*Parte 3*:
$$y=\frac{\sqrt{2x^3}}{3}+\frac{10}{3}~~~~~ (solucao~~especifica)$$

## Exemplo 3
Uma partícula move-se ao longo de um eixo s. Use essa informação para encontrar sua função posição: $a(t)=t^{-2}$; $v(1)=0$; $s(1)=2$: 
*Parte 1*:
$$a(t)=\frac{dv}{dt}=t^{-2}~~~~->~~~~dt.\frac{dv}{dt}=t^{-2}.dt~~~~->~~~~dv=t^{-2}dt~~~~->~~~~\int{dv}=\int{t^{-2}dt}~~~~->~~~~v=\frac{t^{-1}}{-1}+C~~~~->~~~~v=\frac{-1}{t}+C$$

*Parte 2*:
$$v=\frac{-1}{t}+C~~~~->~~~~0=\frac{-1}{1}+C~~~~->~~~~C=1~~~~~|~~~~~v=\frac{-1}{t}+1$$
*Parte 3*:
	$$v=\frac{-1}{t}+1~~~~->~~~~\frac{ds}{dt}=\frac{-1}{t}+1~~~~->~~~~\int{ds}=\int[\frac{-1}{t}+1]dt~~~~->~~~~s=-ln(t)+t+C$$

*Parte 4*:
$$s=-ln(t)+t+C~~~~->~~~~2=-ln(1)+1+C~~~~->~~~~C=1~~~~~|~~~~~s=-ln(t)+t+1~~~(funcao~~posicao)$$