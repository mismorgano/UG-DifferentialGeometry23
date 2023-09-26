#let title = [
	Geometria Diferencial\ 
	Tarea 2
]

#let author = [
	Antonio Barragán Romero
]

#let book = [
	Differential Geometry of Curves and Surfaces
]

#let v = $bold(v)$
#let w = $bold(w)$
#let u = $bold(u)$
#let cross = $times$
#set text(12pt, font: "New Computer Modern")
#set enum(numbering: "a)")
#set math.equation(numbering: "(1)", supplement: [Eq.])

#align(center, text(17pt)[
	*#title*\
	#author
])

Del libro *#book*.

= Problemas 

== Problema 1
Dados los vectores $#v!= 0$ y $#w$, muestra que existe un vector $#u$ tal que $#u cross #v = #w$ si y solo si $#v$ es perpendicular a $#w$.
¿Este vector queda determinado de manera unica? Sino, ¿Cual es la solución mas general?

*Demostración:*
Supongamos primero que existe $#u in RR^3$ tal que $#u cross #v = #w$, entonces se cumple que $(#u cross #v) dot #v = 0$, es decir $#w dot #v = 0$.

Para la implicación contraria tenemos que $#v dot #w = 0$ y supongamos que existe $#u in RR^3$ tal que $#u cross #v = #w$, entonces se debe cumplir que
$ w_1 = u_2v_3 - u_3v_2, quad w_2 = u_3v_1 -u_1v_3, quad w_3 = u_1v_2 - u_2v_1, $
lo cual lo podemos ver como 
$ A := mat(
	0, v_3, -v_2;
	-v_3, 0, v_1;
	v_2, -v_1, 0
) dot vec(u_1, u_2, u_3) = vec(w_1, w_2, w_3). $
Notemos que $det(A) = 0$, entonces el sistema tiene infinitas soluciones o no tiene solución.tenmos los siguientes casos:
#enum[_Las tres entradas de $v$ son distintas de cero,_ En este caso se cumple que $det(A) != 0$ y por tanto 
existe solución y ademas es unica.][_Una entrdad de $v$ es cero._ Sin perdida de generalidad sea $v_1=0$.
	En este caso tenemos que 
	$ w_1 = u_2v_3 - u_3v_2, quad w_2 = -u_1v_3, quad w_3 = u_1v_2, $
	y por tanto 
	$u_1 = w_3/v_2 = -w_2/v_3$
][_Dos entradas de $v$ son cero._ Sin perdida de generalidad sean $v_1 = 0$, $v_2=0$. Tenemos que 
	$ w_1 = u_2v_3, quad w_2 = -u_1v_3, quad  w_3 = 0$, lo cual implica que $u_1 = -w_2/v_3$ y 
	$u_2 = w_1/v_3$ y $u_3 = t$, $t in RR$, por lo cual $u$ no es unico, ademas se debe cumplir que 
	$w_3 = 0$, por lo que $u$ no siempre existe.
]

== Problema 2
Sean $u(t) = (u_1(t), u_2(t), u_3(t))$ y $v(t) = (v_1(t), v_2(t), v_3(t))$ funciones diferenciables del intervalo
Las derivadas $u'(t)$ y $v'(t)$ satisfacen las condiciones 
$ u'(t) = a u(t) + b v(t), quad v'(t) = c u(t) -a v(t), $
donde $a, b, c$ son constantes. Muestra que $u(t) cross v(t)$ es un vector constante.

*Demostración:*
Para ver que $u(t) cross v(t)$ es constante probaremos que $d/(d t) (u(t) cross v(t))$ es igual a cero.
Recordemos que 
$ d/(d t) (u(t) cross v(t)) = (d u(t))/(d t) cross v(t) + u(t) cross (d v)/(d t), $
usando las hipotesis tenemos que 
$ d/(d t) (u(t) cross v(t)) = (a  u(t) + b v(t)) cross v(t) + u(t) cross (c u(t) -a v(t)), $
por un lado tenemos que 
$ (a  u(t) + b v(t)) cross v(t) &= a u(t) cross v(t) + b v(t) cross v(t) \
								&= a u(t) cross v(t), $
y por otro lado tenemos que 
$ u(t) cross (c u(t) - a v(t)) &= -(c u(t) - a v(t)) cross u(t) = (a v(t) - c u(t)) cross u(t) \
							   &= a v(t) cross u(t) - c u(t) cross u(t) \
							   &= a v(t) cross u(t). $

De lo anterior obtenemos que 
$ d/(d t) (u(t) cross v(t)) = a u(t) cross v(t) + a v(t) cross u(t) = a u(t) cross v(t)- a u(t) cross v(t) = bold(0), $
como queremos.

== Problema 3
Encuentra todos los vectores unitarios que son perpendiculares al vector $(2, 2, 1)$ y paralelos al plano determinado por los puntos 
$(0, 0, 0)$, $(1, -2, 1)$, $(-1, 1, 1)$.

*Solución:*
Sea $ a x + b y + c z +d = 0$ la ecuación del plano, entonces al sustituir los puntos que lo 
determinan obtenemos que $d =0$, 
$a - 2b +c = 0$ y $-a + b + c = 0$ lo cual implica que $2c = b$ y que $2a = 3b$, haciendo $c=1$, obtenemos
$b=2$, $a=3$, entonces la ecuación del plano es 
$ 3x+2y+z = 0, $
su vector normal es $n = (3, 2, 1)$.
Supongamos $v =(x, y, z)$  es perpendicular a $(2, 2, 1)$ y además es paralelo al plano, entonces es ortogonal al vector normal, por lo cual se cumplir que 
$ 2x + 2y+z = 0  quad "y" quad 3x + 2y +z = 0. $
De lo anterior tenemos que $x=0$ y que $z = -2y$, se sigue que $v = (0, y, -2y)$, para que 
$v$ sea unitario debemos normalizarlo por su norma, la cual vale:
$ norm(v) = sqrt(y^2 + 4y^2) = sqrt(5)abs(y), $
es decir $v = 1/sqrt(5)(0, y/abs(y), -2y/abs(y))$, si $y>0$ entonces $v=(0, 1/sqrt(5), -2/sqrt(5))$ y si 
$y<0$ obtenemos $v = (0, -1/sqrt(5), 2/sqrt(5))$.
