
#let title = [
	Geometria Diferencial\ 
	Tarea 1
]

#let author = [
	Antonio Barragán Romero
]

#let book = [
	Differential Geometry of Curves and Surfaces
]

#set text(12pt,font: "New Computer Modern")
#set enum(numbering: "a)")
#set math.equation(numbering: "(1)", supplement: [Eq.])

#align(center, text(17pt)[
	*#title*\
	#author
])

Del libro *#book*.

== Problemas

*Problema 1* _Sea $alpha :I -> RR^3$ una curva parametrizada, con $alpha'(t) != 0$ para todo 
$t in I$. Muestra que $norm(alpha (t))$ es constante distinto de cero si y solo si $alpha (t)$
es ortogonal a $alpha ' (t)$ para todo $t in I$._

*Solución:*
//Notemos que   
Dado que $norm(alpha(t))^2 = angle.l alpha(t), alpha(t)angle.r$, se cumple que 

$  norm(alpha(t))^2 ' = angle.l alpha(t), alpha(t)angle.r'  = 2 angle.l alpha(t), alpha'(t)angle.r. $ <dot-der>

Además podemos notar que 
$norm(alpha(t))$ es constante si y solo si $norm(alpha(t))^2$ es constante.
Entonces 
sí $norm(alpha(t))$ es constante distinto de cero obtenemos que $alpha(t) != bold(0)$, por
hipotesis $alpha'(t)!= bold(0)$ y  por @dot-der obtenemos que 
$2angle.l alpha(t), alpha'(t) angle.r =0$, lo cual implica que $alpha(t)$ y $alpha'(t)$ son ortogonales.

Ahora, sí $alpha(t)$ y $alpha'(t)$ son ortogonales  
por @dot-der obtenemos que $norm(alpha(t))^2 ' =0$, lo cual implica que $norm(alpha(t))$
es constante y además distinto de cero pues $alpha(t)!=0$.
//lo cual implica que $angle.l alpha(t), alpha'(t)angle.r = 0$.


*Problema 2* #emph[Sea $alpha(0, pi) -> RR^2$ dada por 
#footnote[Me parece que la paremetrización del libro era incorrecta.]

$ alpha(t) = (
	sin(t), ln(cot(t/2)-cos(t))
), $

donde $t$ es el angulo entre el eje $y$ y el vector $alpha(t)$. La traza de $alpha$ es llamada
*tractrix*. Muestra que
+ $alpha$ es una curva regular diferenciable excepto en $t=pi/2$
+ La longitud del segmento de la recta tangente a la tractix en el punto de tangencia y el eje $y$
 siempre es 1.  ]

*Demostración:*

//#enum[
a) Primero notemos que 
$ alpha'(t) &= (cos(t), sin(t) - 1/2csc^2(t/2)1/cot(t/2)) \
            &= (cos(t), sin(t) -1/sin(t)), $
por lo que $alpha$ es diferenciable. Además $alpha'(t) = bold(0)$ si y solo si $cos(t) = 0$ para $t in (0,pi)$,
lo cual pasa si y solo si $t=pi/2$, se sigue que $alpha$ es regular diferenciable excepto en $t=pi/2$.
 
//][Por otro lado] 
b) Dado un $t in (0, pi)without {pi/2}$ tenemos que la ecuación de la recta tangente a la tractrix que pasa por
$alpha(t)$ es $alpha(t) + lambda alpha'(t)$. Como nos interesa que $alpha(t)+lambda alpha'(t)$
intersecte al eje $y$ entonces se debe cumplir que su primera  coordenada sea cero, es decir, 

$ sin(t) + lambda cos(t) = 0, $

lo cual implica que $lambda = -sin(t)/cos(t)$. Dado que $alpha(t)$ es el punto de tangencia, tenemos
que $lambda alpha'(t)$ es el segmento de la recta tangente que une el punto de tangencia y el eje $y$,
luego, su longitud es $norm(lambda alpha'(t))$. Podemos ver que 

$ norm(lambda alpha'(t))^2 &=lambda^2( cos^2(t) + sin^2(t)-2 + 1/(sin^2(t)) )\
						   &=lambda^2(1/(sin^2(t)) -1) \
						   &=lambda^2((1-sin^2(2))/(sin^2(t)))\
						   &=(sin^2(t))/(cos^2(t)) dot (cos^2(t))/(sin^2(t))\
						   &=1, $
y por tanto $norm(lambda alpha'(t))$ = 1, como queremos.

//Para $t = pi/2$ tenemos que $alpha(t) = (1, 0)$ y por tanto 

*Problema 3*
#emph[Muestra que la ecuación de un plano que pasa por tres puntos no colineales $p_1 = (x_1, y_1, z_1)$,
$p_2 = (x_2, y_2, z_2)$, $p_3 = (x_3, y_3, z_3)$ está dada por

$ (p-p_1) and (p - p_2) dot (p-p_3) = 0, $

donde $p=(x, y, z)$ es un punto arbitrario del plano.]

*Demostración:*
Primero veamos la "idea" detras de la formula. Sabemos que un plano queda determinado por 
un punto en el plano $P_0$ y un vector normal al plano $n$,
pues dado otro punto $P$ en el plano se debe cumplir que $angle.l P_0-P, n angle.r = 0$.

En nuestro caso tenemos que $p-p_1$ y $p - p_2$ son puntos en el plano que lo generan, entonces
$(p-p_1) and (p - p_2)$ es normal al plano y como $p - p_3$ es un punto del plano, se debe 
cumplir $(p-p_1) and (p-p_2) dot (p-p_3) = 0$.  