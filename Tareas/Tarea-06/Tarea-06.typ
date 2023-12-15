
#import "@preview/lemmify:0.1.4": *

#let title = [
	Geometría Diferencial\ 
	Tarea 6
]

#let author = [
	Antonio Barragán Romero
]

#let book = [
	Differential Geometry of Curves and Surfaces
]
#let (
  theorem, lemma, corollary,
  remark, proposition, example,
  proof, rules: thm-rules
) = default-theorems("thm-group", thm-numbering: thm-numbering-heading)

#show: thm-rules

#set text(font: "New Computer Modern", size: 12pt)

#let eps = $epsilon$
#let x = $mono(bold(x))$
#let circ = $ space circle.stroked.small space$


#set heading(numbering: "1.")

#align(center, text(17pt)[
	*#title*\
	#author
])

Del libro *#book*.

== Problema 1
Muestra que la ecuación del plano tangente a una superficie que es la gráfica de una función 
diferenciable $z = f(x, y)$, en el punto $p_0 = (x_0, y_0)$ esta dada por
$ z = f(x_0, y_0) + f_x (x_0, y_0)(x-x_0) + f_y (x_0, y_0)(y-y_0). $
Recuerda la definición de la diferencial $d f$ de una función $f: RR^2 -> RR$ y muestra que el plano tangente 
es la gráfica de la diferencial $d f_p.$

*Solución:*
Recordemos que la ecuación general de un plano esta dada por $ a(x -x_0) + b (y - y_0) + c(z-z_0) = 0, $
donde $(a, b, c)$ es un vector ortogonal al plano.
// Si $p= (x, y, z) in RR^3$ es otro punto en el plano tangente 
Sea $sigma(x ,y) = (x, y, f(x, y))$ una parametrización de $S$
Sabemos que el plano tangente esta dado por una base de vectores: 
$ sigma_u (p_0) = (1, 0, f_u (x_0, y_0)) quad sigma_v (p_0) = (0, 1, f_v (x_0, y_0)), $
y queremos encontrar un vector ortogonal al plano generado por ellos, el cual sabemos esta dado por 
$ sigma_u (p_0) times sigma_v (p_0) = (-f_u (x_0, y_0), - f_v (x_0, y_0), 1), $
entonces la ecuación del plano esta dada por 
$ -f_u (x_0, y_0) (x - x_0)  - f_v (x_0, y_0) (y - y_0) + (z - z_0) = 0, $
recordando que $z_0 = f(x_0, y_0)$ y desarrollando obtenemos que 
$ 0 &= -f_u (x_0, y_0) (x - x_0)  - f_v (x_0, y_0) (y - y_0) + (z - f(x_0, y_0)) \ 
=> z &= f(x_0, y_0) + f_u (x_0, y_0) (x - x_0)  + f_v (x_0, y_0) (y - y_0), $
como queremos.
== Problema 2
Un _punto critico_ de una función diferenciable $f:S ->RR$ definida en una superficie regular 
$S$ es un punto $p in S$ tal que $d f_p = 0$.

+ Sea $f:S -> RR$ dado por $f(p) = abs(p-p_0)$, $p in S$, $p_0 in.not S$. 
  Muestra que $p in S$ es un punto critico de $f$ si y solo si la linea que une $p$ con $p_0$ es normal 
  a $S$ en $p$.
+ Sea $h:S -> RR$ dada por $h(p) = p dot v$, donde $v in RR^3$ es un vector unitario.
  Muestra que $p in S$ es un punto critico de $h$ si y solo si $v$ es un vector normal a $S$ en $p$.

*Solución:*
+ Supongamos que $p in S$ es un punto critico de $f$, entonces $d f_p(w) = 0$ para todo $w in T_p S$. Sea $w in T_p S$ y $alpha: (-eps, eps)-> S$ 
  una curva diferenciable con $alpha(0) = p$, $alpha'(0) = w $, notemos que $f(alpha(t)) = abs(alpha(t) - p_0)$, dado que $p_0 in.not S$  tenemos que 
  $alpha(t) != p_0$ para todo $t$ y por tanto $f$ es diferenciable, luego
  $ d f_p(w) &= d/(d t) f(alpha(t))|_(t = 0) =  d/(d t) abs(alpha(t) - p_0)|_(t = 0) \
             &= (2 angle.l alpha'(t), alpha(t) - p_0 angle.r)/(2abs(alpha(t) - p_0)) |_(t=0) \
             &= ( angle.l w, p - p_0 angle.r)/(abs(p - p_0)). $
  Dado que $p$ es punto critico tenemos que $d f_p(w) = 0$, lo cual implica que $angle.l w, p - p_0 angle.r = 0$, como lo anterior es valido para todo 
  $w in T_p S$ tenemos que $p - p_0$ es normal a $T_p S$.

  Ahora si, $p - p_0$ es normal a $S$ en p$$, se cumple que $angle.l w, p - p_0 angle.r = 0$ para todo $w in T_p S$ y por lo notado anteriormente tenemos que 
  $ d f_p(w) = (angle.l w, p - p_0 angle.r)/(abs(p - p_0)) = 0, $
  para todo $w in T_p S$, como queremos.

+ Supongamos que $p in S$ es un punto critico de $h$, entonces $d h_p(w) = 0$, para todo $w in T_p S$. Sea $w in T_p S$ notemos que 
  dada $alpha: (-eps, eps) -> S$ con $alpha(0) = p$, $alpha'(0) = w$, como $h(alpha(t)) = alpha(t) dot v$ y por tanto
  $ d h_p (w) = d/(d t) h(alpha(t))|_(t = 0) = alpha'(0) dot v = w dot v, $
  como lo anterior es valido para todo $w in T_p S$ tenemos que $v$ es normal a $T_p S$, como queremos.

  Supongamos ahora que $v$ es un vector normal a $S$ en $p$, entonces tenemos que $w dot v = 0$ para todo $w in T_p S$, de manera similar 
  tenemos que $ d h_p (w) = w dot v  = 0$ para todo $w in T_p S$ y por tanto $p$ es punto critico de $h$.

== Problema 3
Muestra que si todas las normales a una superficie conexa pasan por un punto, la superficie esta
contenida en una esfera.

*Solución:*

Primero probaremos el siguiente resultado más general, 
#proposition[ Sea $f: S -> RR$ una función diferenciable en una superficie regular conexa $S$. Si $D_p f = 0$ para todo $p in S$ entonces $f$ es constante ]

#proof[ Dado $p in S$, sea $#x: U subset RR^2 -> #x (U) subset S$ con $p in #x (U)$ un difeomorfismo tal que $#x (U)$ es conexo por caminos, como $f$ es diferenciable tenemos que  $f circ #x: U -> R$ es diferenciable, 

Primero veamos que $f$ en $#x (U)$ es constante
Definamos $a:= #x^(-1)(p) in U$ y sea $b$ un punto en una bola contenida en $U$, entonces podemos unir $a$ y $b$ por una linea recta $beta:[0, 1] -> U$ dad por 
$beta(t) = t a + (1-t)b$. Como $U$ es abierto podemos extender $beta$  a 
$(-eps, 1+eps)$, entonces $f circ #x circ beta:(-eps, 1+eps) -> RR$,
esta definida en un intervalo abierto y se cumple que 

$ d (f circ #x circ beta) = (d_p f circ d #x circ d beta)_t = 0, $
para todo $ t in (-eps, 1+eps)$ pues $d_p f$ es identicamente cero.
Se sigue que $f circ #x circ beta$ es constante y por tanto 
$ f(#x (beta(0))) = f(#x (b)) = f(#x (a)) = f(#x (beta(1)))$.
Como $b$ fue arbitrario tenemos que $f$ es constante en una bola contenida en $U$.


Como $#x (U)$ es conexo por caminos entonces $U = #x^(-1) (#x (U))$ es conexo por caminos , pues $#x^(-1)$ es un homeomorfismo. 
Luego si $r$ es otro punto en $U$, existe una curva continua $alpha:[0, 1] -> U$ tal que $alpha(0) = p$ y $alpha(1) = r$, la función 
$f circ #x circ alpha: [0, 1] -> RR$ es continua en $[0, 1]$.

Notemos que para todo $t in [0, 1]$ tenemos un punto $alpha(t)$ en $U$, y por lo notado al principio existe un entorno contenido en $U$ donde $f circ #x$ es constante, luego existe un intervalo $I_t$ abierto en $[0, 1]$
donde $f circ #x circ alpha$ es constante.
De lo anterior  $[0, 1] = union.big_t I_t$ es una cubierta abierta,  por lo cual existe una subcubierta finita $I_1, dots, I_k$ tal que $[0, 1] = union.big_i I_i$ para $i = 1, dots, k$.
Como $I_i$ son intervalos abiertos tenemos que se intersectan, 
sin perdida de generalidad podemos suponer que los intervalos consecutivos se intersectan, entonces $f circ #x circ alpha$ es constante en la union de intervalos consecutivos, se sigue que $f circ #x circ alpha$ es constante en $[a, b]$, en especial 
$ f(#x (alpha(0))) = f(#x (a)) = f(#x (r)) = f(#x (alpha(1)))$.

Lo anterior nos dice que $f circ #x$ es constante en todo $U$, como $#x$ es un difeomorfismo tenemos que $f$ es constante en $#x (U)$.

Veamos ahora que $f$ es constante en todo $S$.
Sean $p, q in S$, como $S$ es conexa por caminos existe una curva continua $gamma:[0, 1] -> S$ tal que $gamma(0) = p$ y $gamma(1) = q$
y simplemente notemos que para todo $t in [0, 1]$ por lo notado anteriormente existe un entorno de $gamma(t) in S$ donde $f$ es constante 
y por tanto obtenemos un intervalo abierto $I_t$ donde $f circ gamma$ es constante, el resultado se concluye de manera similar a lo hecho anteriormente. 
] 

Ahora,  siguiendo con la demostración,
dada $S$ una superficie regular  sea $p_0$ el punto de intersección de las normales y consideremos $f:S -> RR$ dado por $f(p) = abs(p-p_0)$, 
donde $p_0 in.not S$. Por hipótesis tenemos que para todo $p in S$ la linea que une a $p$ con $p_0$ es normal, por el ejercicio anterior tenemos que $p$ es un punto critico de $S$, por lo cual $D_p f = 0$.
La proposición anterior nos dice que $f$ es constante, es decir $abs(p -p_0) = r$ para todo $p in S$ y algún $r in RR$.
Lo anterior nos dice que $S$ esta contenida en la circunferencia centrada en $p_0$ de radio $r$, como queremos.
