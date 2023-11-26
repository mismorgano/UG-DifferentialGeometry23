#let title = [
	Geometria Diferencial\ 
	Tarea 3
]

#let author = [
	Antonio Barragán Romero
]

#let book = [
	Differential Geometry of Curves and Surfaces
]

#set text(12pt, font: "New Computer Modern")
#set enum(numbering: "a)")
#set math.equation(numbering: "(1)", supplement: [Eq.])

#align(center, text(17pt)[
	*#title*\
	#author
])

Del libro *#book*.

_A menos que se diga lo contrario, $alpha: I -> RR^3$ es una curva parametrizada por longitud de arco $s$, con curvatura $k(s) != 0,$
para todo $s in I.$_

= Problemas 

== Problema 1

Dada la curva parametrizada (helix) 
$ alpha(s) = (a cos(s/c), a sin(s/c), b(s/c)), quad s in RR, $
donde $c^2 = a^2 + b^2,$

#enum[Muestra que el parametro $s$ es la longitud de arco.
][
    Determina la curvatura y la torsión de $alpha$.
][
    Determina el plano oscilatorio de $alpha$.
][
    Muestra que las lineas que contienen $n(s)$ y pasan por $alpha(s)$ intersectan el eje $z$ bajo un angulo constante igual a $pi/2$.
][
    Muestra que las lineas tangentes a $alpha$ hacen un angulo constante con el eje $z$.
]

*Solución:*
#enum[Para ello basta ver que $|alpha'(s)| = 1$. Notemos que 
$ alpha'(s) = (-a/c sin(s/c), a/c cos(s/c), b/c), $
luego, dado que $c^2 = a^2+b^2$, se cumple que 
$ norm(alpha'(s))^2 &= (-a/c)^2sin^2(s/c) + (a/c)^2 cos^2(s/c) + (b/c)^2 \
                    &= a^2/c^2(sin^2(s/c) + cos^2(s/c)) + b^2/c^2 \
                    &= (a^2 + b^2)/c^2 \
                    &= 1, $
lo anterior implica que $alpha$ esta parametrizada por longitud de arco.                    
][
    Como $alpha$ esta parametrizada por longitud de arco tenemos que $k_alpha (s) = |alpha''(s)|$,
    notemos que 
    $ alpha''(s) = (-a/c^2 cos(s/c), -a/c^2 sin(s/c), 0), $
    por lo cual 
    $ k_alpha (s) = |alpha''(s)| = sqrt(a^2/c^4 cos^2(s/c) + a^2/c^4 sin^2(s/c)) = abs(a)/c^2 $
]

== Problema 2

Una curva parametrizada regular $alpha$ tiene la propiedad que todas sus lineas tangentes pasan por un punto fijo:
#enum[
    Prueba que la traza de $alpha$ es un (segmento de una) linea recta.
][
    ¿La conclusión de la parte *a* se sigue si $alpha$ no es regular?
]

*Solución:*


== Problema 3

Dada una función diferenciable $k(s), s in I$, muestra que la curva plana parametrizada teniendo $k(s) = k$ como curvatura esta 
dada por 
$ alpha(s) = (integral cos(theta(s)) d s + a, integral sin(theta(s)) d s +b), $
donde 
$ theta(s) = integral k(s) d s + phi, $
y que la curva es es determinada hasta una traslación del vector $(a, b)$ y una rotación del angulo $phi$.

*Demostración:*
Para ver que la curvatura de $alpha$ es $k$ primero calculemos su primera derivada. Por el Teorema Fundamental del Calculo tenemos que 
$
    alpha'(s) = (cos(theta(s)), sin(theta(s))),
$
de donde se puede ver que $alpha$ esta parametrizada por longitud de arco, luego, aplicando la regla de la cadena obtenemos 
$
    alpha''(s) = ((cos(theta(s)))', (sin(theta(s)))') = (-sin(theta(s)) dot theta'(s), cos(theta(s))dot theta'(s)).
$
El Teorema Fundamental del Calculo nos dice que $theta'(s) = k(s)$, por lo cual
$
    alpha''(s) = (-k(s)sin(theta(s)), k(s)cos(theta(s))),
$
lo cual implica que 
$
    k_alpha = norm(alpha''(s)) = sqrt(k(s)^2sin^2(theta(s)) + k(s)^2cos^2(theta(s))) = sqrt(k(s)^2) = abs(k(s)) = k(s),
$
como queremos #footnote[En este caso supones que $k$ es no negativa.].

