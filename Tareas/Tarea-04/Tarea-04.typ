#let title = [
	Geometría Diferencial\ 
	Tarea 4
]

#let author = [
	Antonio Barragán Romero
]

#let book = [
	Differential Geometry of Curves and Surfaces
]


#set text(font: "New Computer Modern", size: 12pt)
#set enum(numbering: "a)")

#align(center, text(17pt)[
	*#title*\
	#author
])

Del libro *#book*.

== Problema 1
Muestra que la superficie $S = {(x, y, z) in RR^3: x^2 + y^2 -z^2 =0}$ no es regular.

*Demostración:*
Supongamos que $S$ es regular y consideremos una parametrización $X$ en $p=(0, 0, 0) in S$.
Entonces por la proposición 3 tenemos que existe una vecindad $V$ de $p$ en $S$ tal que es la gráfica de una 
función diferenciable que tiene una de las siguientes tres formas $z=f(x, y)$, $y = g(x, z)$ o $x=h(y, z).$

Podemos notar $g$ y $h$ se pueden descartar pues la proyección de $S$ sobre 
los planos $x z$ y $y z$ no son inyectivos. Entonces si existiera $f$ debería 
coincidir con $z = plus.minus (x^2 + y^2)$ la cual no es siquiera una función.
Por lo tanto $S$ no es una superficie regular.

Otro argumento podría ser el siguiente: 
Supongamos que $sigma: U -> S sect W$ es un homeomorfismo y sea $a = sigma^(-1)(p)$, podemos suponer que $U$ es una bola abierta con centro en $a$, pues $U$
es abierto. Entonces $W$ debe contener puntos $q_1$ con $z>0$ y $q_2$ con $z<0$, sean $b = sigma^(-1)(q_1)$ y $c = sigma^(-1)(q_2)$ y sea $gamma$ una curva en $U$ que una $b$ y $c$ y no pase por $a$ entonces la imagen de $gamma$ bajo $sigma$ esta contenida en $S$ y no pasa por $p$ ,lo cual no es posible.

== Problema 2
Sea $f(x, y, z) = (x+y+z-1)^2$.
+ Encuentra los puntos y valores críticos de $f$.
+ ¿Para qué valores de $c$ es el conjunto $f(x, y, z) = c$ una superficie regular?
+ Responde las preguntas a) y b) para la función $f(x, y, z) = x y z^2$.

*Solución:*
+ En este caso tenemos que dado $p = (x, y, z) in RR^3$ se cumple que $ dif f_p = nabla f(p) &= ((diff f)/(diff x)(p), (diff f)/(diff y)(p), (diff f)/(diff z)(p)) \
  &= (2(x+y+z-1), 2(x+y+z-1), 2(x+y+z-1)) \
  &=  2(x+y+z-1) dot vec(1, 1, 1), $
  de donde podemos notar que $dif f_p$ es sobre si y solo si $2(x+y+z-1) != 0$ 
  y por tanto $p$ es un punto critico si y solo si $2(x+y+z-1) = 0$, es decir, 
  si $x+y+z-1 = 0.$
  Entonces si $p$ es un punto critico se cumple que $f(p) = 0$, lo cual 
  implica que $0$ es el único valor critico el cual corresponde al plano 
  $ {(x, y, z) in RR^3 | x+y+z-1 = 0}. $
+ Primero notemos que $f >= 0$ y además es sobre, por el inciso anterior $0$ es
  el único  valor critico, entonces si $c>0$  por la proposición 2
  tenemos que $f^(-1)(c)$ es una superficie regular.
+ En este caso, si $p=(x, y, z) in RR^3$ tenemos que 
  $ dif f_p = nabla f(p) &= ((diff f)/(diff x)(p), (diff f)/(diff y)(p), (diff f)/(diff z)(p)) \ 
  &= (y z^2, x z^2, 2x y z)\
  &= z(y z, x z , 2x y), $
  entonces $p$ es un punto critico si $ y z^2 = 0quad, x z^2 = 0 quad, 2x y z = 0, $
  es decir, si y solo si $z = 0$ o $x=y=0$. 
  De lo anterior tenemos que los puntos críticos de $f$ son: 
  $ {(x, y, 0) in RR^3} union {(0, 0, z) in RR^3}. $
  Podemos notar que si $p$ es un punto critico entonces $f(p) = 0.$

  En este caso $f(RR^3) = RR$, por lo anterior $0$ es el único punto critico, 
  por lo cual si $c in RR minus{0}$, la proposición 2 nos dice que $f^(-1)(c)$
  es una superficie regular.

== Problema 3
Encuentra una parametrización del hiperboloide de dos mantas ${(x, y, z) in RR^3: -x^2 -y^2 +z^2 =  1} $.

*Solución:*
Sea $ S = {(x, y, z) in RR^3: -x^2 -y^2 +z^2 =  1}, $
sabemos que $S$ es una superficie regular y consideremos las siguientes 
parametrizaciones $sigma_plus.minus: RR^2 -> RR^3$ dadas por:
$ sigma_plus.minus (u, v) = (u, v, plus.minus sqrt(1+u^2+v^2)), $
podemos notar que $sigma_plus.minus$ son diferenciables, pues 
tienen derivadas parciales continuas de todos los ordenes.

Además, dado $ p = (u, v) in RR^2$ tenemos que 
$ dif sigma_(plus.minus ) (p)  = mat((diff x)/(diff u), (diff x)/(diff v);
(diff y)/(diff u), (diff y)/(diff v); (diff z)/(diff u), (diff z)/(diff v))
=  mat(1, 0; 
        0, 1;
        plus.minus (2u)/sqrt(1+u^2+v^2), plus.minus (2v)/sqrt(1+u^2+v^2)), $
y se puede ver que las columnas son linealmente independientes para todo $p$, 
entonces se cumple que $dif sigma_(plus.minus ) (p)$ es inyectiva.

Más aún podemos notar que $sigma_plus.minus$ son inyectivas, luego 
por la por la proposición 4 tenemos que $sigma_plus.minus ^(-1)$ son continuas
y por tanto $sigma_plus.minus$ son parametrizaciones que cubren a $S$.