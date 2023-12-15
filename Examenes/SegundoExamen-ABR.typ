
#import "@preview/lemmify:0.1.4": *

#let title = [
	Geometría Diferencial\ 
	Segundo Examen 
]

#let author = [
	Antonio Barragán Romero
]

#let (
  theorem, lemma, corollary,
  remark, proposition, example,
  proof, rules: thm-rules
) = default-theorems("thm-group", thm-numbering: thm-numbering-heading)

#show: thm-rules

#set text(font: "New Computer Modern", size: 12pt)

#let eps = $epsilon$
#let pi(x, y) = $angle.l #x, #y angle.r$
#let circ = $ space circle.stroked.small space$

#let x = $mono(bold(x))$

#align(center, text(17pt)[
	*#title*\
	#author
])

== Problema 1
Sea $S subset RR^3$ una superficie regular y sea $P subset RR^3$ un plano dado por la ecuación 
$P = {x in RR^3: pi(x, v) = c }$ ($v in RR^3 - {0}$, $c in RR$). Suponer que para todo $x in S$ se tiene que 
$pi(x, v) >= c$. Probar que si $p in S sect P$ entonces $T_p S = P$.

#proof[

Primero veamos que $v$ es ortogonal a $P$, por hipótesis tenemos que $p in P$, luego si $q in P$, notemos que 
$ pi(v, p-q) = pi(v, p) - pi(v, q) = c - c = 0, $
lo anterior nos dice que dado $w in T_p S$, probar que $w in P$ equivale a probar que $pi(v, w) = 0$.

Sea $gamma:-(eps, eps) -> S$ regular tal que $gamma(0) = p$ y $gamma'(0) = w$, definamos 
$g(t) = pi(gamma(t),v)$, como $gamma$ es regular tenemos que $g$ es diferenciable y ademas se cumple que 
$ g'(t) = pi(gamma'(t), v)$, más aun como $gamma subset S$ tenemos que $g >= c$, pero $g(0) = pi(p, v) = 0$, por lo cual $g(0)$ es un mínimo local, 
lo anterior implica que $g'(0) = 0$, entonces 
$ 0 = g'(0) = pi(gamma'(0), v) = pi(w, v), $
como $w$ fue arbitrario tenemos que $T_p S subset P$. Además como $T_p S$ es un plano, se cumple que $T_p S = P$, como queremos.
]

== Problema 2
Sea $S$ una superficie regular y $f: S -> R$ una función suave.
+ Dado $p in S$ considerar su diferencial $D_p f: T_p S -> R.$ Probar que existe un único $w in T_p S$ tal que 
  para todo $v in T_p S$ se tiene que $pi(v, w) = D_p f(v)$. A $w$ se lo llama el gradiente de $f$ en $p$, $nabla f(p)$.
+ Si $S$ es compacta probar que existe $p in S$ tal que $nabla f(p) = 0$.
+ Probar que $nabla f: S -> RR^3$ es un mapa suave. 

#proof[
+ Dado $p in S$ y $v in T_p S$, sea $gamma: (-eps, eps) -> S$ tal que $gamma(0) = p$ y $gamma'(0) = v$, por regla de la cadena tenemos que 
  $ D_p f (v) &= d/(d t) f(gamma(t))|_(t = 0) = d/(d t) f(x(t), y(t), z(t))|_(t = 0) \ 
              &= f_x (gamma(0)) x'(0) + f_y (gamma(0)) y'(0) + f_z (gamma(0)) z'(0) \
              &= (f_x (p), f_y (p), f_z (p)) dot (x'(0),  y'(0), z'(0)) \
              &= (f_x (p), f_y (p), f_z (p)) dot gamma'(0) \
              &= (f_x (p), f_y (p), f_z (p)) dot v $
  de donde podemos notar que $(f_x (p), f_y (p), f_z (p)) = nabla f (p) $ es el vector buscado pues $v in T_p S$ fue arbitrario. 
  Solo falta ver que $(f_x (p), f_y (p), f_z (p)) in T_p S$.

+ Dado que $S$ es compacta y $f$ es suave en particular es continua, luego alcanza su máximo, digamos que en $p in S$. Dado $w in T_p S$, 
  sea $gamma:-(eps, eps) -> S$ regular tal que $gamma(0) = p$ y $gamma'(0) = w$, como $f$ alcanza su máximo en $p = gamma(0)$ 
  se cumple que $(f circ gamma)'(0) = 0$, entonces   $D_p f (w) = 0 $. Por el inciso anterior tenemos que $D_p f(w) = nabla f(p)dot w = 0$,
  lo cual es  valido para todo $w in T_p S$, lo cual implica que $nabla f(p) = 0$, como queremos.
  $$
+ Dado $p in S$, sea $#x: U subset RR^2 -> #x (U) subset S$ con $p in #x (U)$ un difeomorfismo,
  veamos que $nabla circ #x: U -> R$ es diferenciable en $q := #x^(-1)(p)$.

]
