
#import "@preview/lemmify:0.1.4": *

#let (
  theorem, lemma, corollary,
  remark, proposition, example,
  proof, rules: thm-rules
) = default-theorems("thm-group", thm-numbering: thm-numbering-heading)

#show: thm-rules

#set text(font: "New Computer Modern", size: 12pt)

#let x = $mono(bold(x))$
#let circ = $ space circle.stroked.small space$
#let title = [
	Geometría Diferencial\ 
	Tarea 5
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
#set par(justify: true)

#align(center, text(17pt)[
	*#title*\
	#author
])

Del libro *#book*.

== Problema 1
Construye un difeomorfismo entre el elipsoide
$ E = {(x, y, z) in RR^3: x^2/a^2 + y^2/b^2 + z^2/c^2 = 1}, $
y la esfera $ S^2 = {(x, y, z) in RR^3: x^2 + y^2 + z^2 =1} .$

*Solución:*
Consideremos $phi: RR^3 -> RR^3$ dada por $phi(x, y, z) = (x/a, y/b, z/c)$, donde $a, b, c$ son distintos de cero.
Es claro que $phi$ es diferenciable, más aún, podemos notar que $phi$ es una biyección, claramente es inyectiva  y es sobre pues  
si $(x, y, z) in RR^3$ notemos que $phi(a x, b y, c z) = (x, y, z)$,
tenemos que su inversa $phi^(-1): RR^3 -> RR^3$ esta dada por $phi^(-1)(x, y, z) = (a x, b y, c z)$, la cual es diferenciable.
De lo anterior tenemos que $phi$ es un difeomorfismo.

Por ultimo notemos que $phi(E) = S^2$, si $p in E$ podemos notar que $phi(p) in S^2$, luego $phi(E) subset S^2$, 
por otro lado si $(x, y, z) in S^2$ notemos que $(a x, b y, c z) in E$, luego $phi(a x, b y, c z) = (x, y, z)$, por lo cual $phi(E) = S^2$.
Se sigue que $phi|_(E):E-> S^2$ es una biyección diferenciable y su inversa también es diferenciable, y por tanto $phi|_(E):E-> S^2$ 
es un difeomorfismo.


== Problema 2
Prueba que la relación "$S_1$ es difeormorfo a $S_2$" es una relación de equivalencia en el 
conjunto de todas las superficies regulares.

#proof[
  Primero recodemos que $S_1$ es difeomorfo a $S_2$ si existe un difeomorfismo $f:S_1 -> S_2$, es decir, $f$ es biyectiva y si 
  $sigma_1: U_1 subset RR^2 -> S_1$, $sigma_2: U_2 subset RR^2 -> S_2$ son parametrizaciones, entonces $sigma_2^(-1) circ f circ sigma_1 : U_1 -> U_2$ 
  y $sigma_1^(-1) circ f^(-1) circ sigma_2: U_2 -> U_1$ son suaves.

  Sea $R$ el conjunto de todas las superficies regulares, y sea "$~$" la relación.
  Es claro que $~$ es *reflexiva* a traves del mapeo identidad, 
  pues dada $S in R$ consideremos el mapeo identidad $I:S -> S$, notemos que $I$ es una biyección (es su propia inversa) y si $sigma: U-> S$ es una parametrización de $S$ 
  entonces $ sigma^(-1) circ I circ sigma = sigma^(-1) circ sigma_1 = I : U_1 -> U_1 $ es suave y por tanto $I$ es un difeomorfismo.

  Para ver que $~$ es *simétrica*, sean $S_1, S_2 in R$ tales que $S_1 ~ S_2$ entonces existe difeomorfismo $f:S_1 -> S_2$, 
  // que cumple la definición del principio, de donde 
  // podemos ver que $f^(-1): S_2 -> S_1$ también la cumple y por tanto es un difeomorfismo entre $S_2$ y $S_1$.
  veamos que $f^(-1):S_2 -> S_1$ es un difeomorfismo.
  Es claro que $f^(-1)$ es biyectiva pues $f$ lo es, luego, si $sigma_1: U_1 -> S_1$ y $sigma_2: U_2 -> S_2$ son parametrizaciones, notemos que 
  $ sigma_1^(-1) circ f^(-1) circ sigma_2 = (sigma_2^(-1) circ f circ sigma_1)^(-1), $
  dado que $f$ es un difeomorfismo tenemos que $sigma_2^(-1) circ f circ sigma_1$ es suave, luego, la regla de la cadena nos dice que su inversa es suave,
  es decir, $sigma_1^(-1) circ f^(-1) circ sigma_2$ es suave y por tanto $f^(-1): S_2 -> S_1$ es un difeomorfismo.

  Por ultimo veamos que $~$ es *transitiva*. Sean $S_1, S_2, S_3 in R$ tales que $S_1 ~ S_2$ y $S_2 ~ S_3$, etonces existen difeomorfismo $f:S_1 -> S_2$, $g:S_2->S_3$,
  veamos que $g circ f: S_1 -> S_3$ es un difeomorfismo entre $S_1$ y $S_3$. Dado que $f, g$ son biyeciones tenemos que $g circ f$ es biyección,
  luego, si $sigma_1:U_1->S_1$, $sigma_3:U_3->S_3$ son parametrizaciones notemos que 
  $ sigma_3^(-1) circ (g circ f) circ sigma_1 &= (sigma_3^(-1) circ g) circ (sigma_2 circ sigma_2^(-1)) circ (f circ sigma_1) \ 
                                              &= (sigma_3^(-1) circ g circ sigma_2) circ (sigma_2^(-1) circ f circ sigma_1), $
  donde $sigma_2: U_2 -> S_2$ es una parametrización, dado que $f, g$ son difeomorfismos tenemos que $sigma_3^(-1) circ g circ sigma_2$ y $sigma_2^(-1) circ f circ sigma_1$
  son suaves, se sigue que su composición es suave, es decir, $sigma_3^(-1) circ (g circ f) circ sigma_1$ es suave. De lo anterior tenemos que $g circ f$ es 
  un difeomorfismo entre $S_1$ y $S_3$

  Por lo an terior tenemos que $~$ es una relación de equivalencia, como queremos. 

]


== Problema 3 
Sea $A subset S$ un subconjunto de una superficie regular $S$. Prueba que $A$ es una superficie regular 
si y solo si $A$ es abierto en $S$, es decir, $A=U sect S$, donde $U$ es un abierto en $RR^3$

#proof[
  
  Primero supongamos que $A$ es una superficie regular, dado $p in A$ se cumple que existe difeomorfismo $#x _A: U subset RR^2 -> #x _A (U) subset A$, 
  $A subset S$ implica que $p in S$,  y por tanto también existe difeomorfismo $#x _S: V subset RR^2 -> #x _S (V) subset S$.

  Notemos que $ #x _S^(-1) circ #x _A: U -> V$ es suave, luego, el Teorema de la Función Inversa nos dice que existen entorno $W$ de $#x _A^(-1)(p)$ 
  tal que $#x _S^(-1) circ #x _A (W)$ es un entorno de $#x _S^(-1) circ #x _A (#x _A^(-1)(p))$. 

  Dado que $#x _S^(-1) circ #x _A (W)$ es abierto contenido en $V$ tenemos que $#x _S (#x _S^(-1) circ #x _A (W))$ es abierto de $S$, pues $#x _S$ es 
  difeomorfismo, por otro lado notemos que $#x _A (W) = #x _S (#x _S^(-1) circ #x _A (W))$, el cual es un abierto de $A$, pues $#x _A$ es difeomorfismo y $W$ es 
  abierto.

  Por lo anterior podemos ver que para cada $p in A$ encontramos un conjunto $#x _A (W)$ el cual es abierto en $A$ y en $S$, por tanto su union 
  cubre a $A$ y ademas es abierto en $S$, como queremos.
  
  // abierto $U_p in RR^2$, un entorno $W_p$ de $p$
  // en $RR^3$ y un diferomorfismo $#x: U_p -> A sect W_p$. Luego, simplemente notemos que 
  // $ A = union_(p in A) {p} subset union_{p in A} (W_p sect A) subset union_{p in A} (W_p sect S) union_{p in A} W_p sect S $

  Supongamos ahora que $A$ es abierto en $S$, entonces $A = S sect W$ con $W$ abierto de $RR^3$.
  Dado $p in A$, se cumple que $p in S$, como $S$ es una superficie regular existe $U$ abierto de $RR^2$ y  $W_p$ entorno de $p$ en $RR^3$ 
  tal que existe un difeomorfismo (parametrización) $#x: U -> S sect W_p$.

  Podemos notar que $W sect W_p$ es entorno de $p$ en $RR^3$, por la continuidad de $#x$ tenemos que $U_p := #x^(-1)(W sect W_p)$
  es abierto en $RR^2$, luego se cumple que $ #x|_(U_p): U_p -> S sect W sect W_p, $
  es una parametrización en $p$. Dado que $p$ fue arbitrario, tenemos que $A$ es una superficie regular.

  
  // y sea $p in A$ entonces $p in S$. 
  // Dado que $S$ es una superficie regular existe $U$ abierto de $RR^2$ y  $W$ abierto de $RR^3$ tal que $p in S sect W$ 
  // y existe un difeomorfismo (parametrización) $#x: U -> S sect W$ 
]