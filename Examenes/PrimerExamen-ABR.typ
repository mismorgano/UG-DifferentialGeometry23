
#set text(font: "New Computer Modern Math")
== Problema 1

Sea $gamma : I -> RR^3 without {0}$ una curva regular tal que $gamma''(t) != 0$ para todo $t in I$ ($I subset RR $ es un intervalo).
Supongamos que para todo $t in I$ existe una constante $lambda(t)$ tal que $gamma(t) + lambda(t)n(t) = bold(0) in RR^3$.
Pribar que existe $c in RR_(>0)$ tal que $angle.l gamma(t), gamma(t) angle.r = c$ para todo $t in I$.


*Demostración:*
Dado que $gamma$ es regular, podemos suponer sin perdidad de generalidad que $gamma$ esta parametrizada
por longitud de arco. Queremos probar que $angle.l gamma(t), gamma(t) angle.r = c$ para todo $t in I$,
lo cual equivale a probar que $(angle.l gamma(t), gamma(t) angle.r)' = 0$, mas aún, sabemos que 
$(angle.l gamma(t), gamma(t) angle.r)' = 2angle.l gamma(t), gamma'(t) angle.r$, por lo cual 
probaremos que $angle.l gamma(t), gamma'(t) angle.r = 0$.

Por hipotesis tenemos que $gamma(t) + lambda(t)n(t) = bold(0)$, lo que implica $gamma(t) = -lambda(t)n(t)$, 
entonces:
$ angle.l gamma(t), gamma'(t) angle.r = angle.l -lambda(t)n(t) , gamma'(t) angle.r = -lambda(t) angle.l n(t), gamma'(t) angle.r, $
como $gamma$ esta parametrizada por longitud de arco tenemos que $gamma'$ y $n$ son ortogonales pues $gamma'$ y $gamma''$ lo son. Se sigue que $-lambda(t) angle.l n(t), gamma'(t) angle.r = 0$ y 
por tanto $angle.l gamma(t), gamma'(t) angle.r = 0$ como queremos.

== Problema 2
Sean $A = (-r, 0), B=(r, 0) in RR^2$. $A B = [-r, r] subset RR subset^2$, el segmento  que los une, de longitud $2r$.

+ Para todo $l>2r$ probar que existe un circulo $C subset RR^2$ tal que $A, B in C$ y si $C=C_1 union C_2$ 
  donde $C_1$ y $C_2$ son los arcos con bordes $A$ y $ B$, entonces $l$ es la longitud de $C_1$ (o $C_2$).
+ Sea $lambda$ una curva que une $A$ con $B$. Supongamos que el segmento $A B$ seguido de $lambda$ forman
  una curva cerrada, simple y convexa. Sea $R_1$ la region acotada con borde esta curva. Sea $R_2$ la region acotada por $A B$ y $C_1$. 
  Probar que el area de $R_2$ es mayor o igual que el area de $R_1$.

*Solución:*
+ Por simpliciadad consideremos $C$ con centro $O = (0, k) in RR^2, $  con $k>0$, sea $C_1$ el arco $A B$ y 
  sea $C_2$ el arco $B A$ #footnote[En dirección de las manecillas del reloj.]. 
  Podemos notar que el radio del circulo es $sqrt(r^2 + k^2)$ y por tanto 
  su longitud es $l(C) = 2pi sqrt(r^2 + k^2)$, sin embargo estamos interesados en $l(C_1)$.
  Sea $alpha = angle B A O$, como $triangle.stroked.t A O B$ es isoceles tenemos que $angle A B O = alpha$, 
  por lo cual $angle A O B = pi - 2alpha$, ($alpha in (0, 2pi)$ ).
  De lo anterior haciendo una regla de tres obtenemos que 
  $ l(C_1) = (2pi sqrt(r^2 + k^2)(pi - 2alpha)) / (2pi) = sqrt(r^2 + k^2)(pi - 2alpha), $
  ademas notemos que $tan(alpha) = k/r$, entonces $alpha = arctan(k/r)$, se sigue que 
  $ l(C_1) = sqrt(r^2 + k^2)(pi - 2arctan(k/r)), $
  la cual es una funicón continua en $k$ ($r$ fijo).
  Por ultimo notemos que 
  $ lim_(k -> 0) l(C_1) = lim_(k -> 0) sqrt(r^2 + k^2)(pi - 2arctan(k/r)) = pi r, $
  y que 
  $ lim_(k -> infinity) l(C_1) = lim_(k -> infinity) sqrt(r^2 + k^2)(pi - 2arctan(k/r)) =infinity, $
  dado que $pi r < l < infinity$ y la continuidad de $l(C_1)$ obtenemos que existe un circulo $C$ tal 
  que $l(C_1) = l$, como queremos.
+ En este caso podemos suponer que $l(C_1) = l(gamma)$, sea $D$ la curva $C_2$ o su reflejo sobre el eje $x$
  de tal forma que $gamma$ y $D$ queden en distintas partes del plano,
  se cumple que $gamma$ seguida de $D$ sige siendo una curva cerrada simple. 
  Podemos notar que el area encerrada por $gamma$ seguida de $D$ es igual a $A(gamma) + A(D)$ 
  #footnote[Aqui consideramos el area entre la curva y $A B$.] y el area encerrada por $C_1$ y $C_2$ es $A(C_1) + A(C_2)$,
  por como definimos $D$ tenemos que $A(C_2) = A(D)$.
  De lo anterior podemos notar que $l(C) = l(C_1 union C_2) = l(gamma union D)$, luego, por la desigualdad 
  isoperimetrica, pues $gamma union D$ es una curva cerrada simple, tenemos que $A(gamma union D) <= A(C_1 union C_2)$, es decir, 
  $ A(gamma) + A(D) <= A(C_1) + A(C_2), $
  de donde obtenemos lo deaseado, pues $A(gamma) = R_1$ y $A(C_1) = R_2$.