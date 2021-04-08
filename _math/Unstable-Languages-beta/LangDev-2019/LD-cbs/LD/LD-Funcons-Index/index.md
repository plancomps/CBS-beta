---
title: "LD-Funcons-Index"
math: katex
parent: LD
ancestor: Unstable-Languages-beta

---
[Unstable-Languages-beta] : [LD-Funcons-Index.cbs] \| [PLAIN] \| [PDF]

{::comment}{% raw %}{:/}
<details open markdown="block">
  <summary>
    OUTLINE
  </summary>
  {: .text-delta }
- TOC
{:toc}
</details>


----




# Computations
               


## Normal computation
               


### Flowing
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{left-to-right} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{l-to-r} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{seq} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{effect} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-true-else} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-else} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{while-true} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{while}
  \ ]
\end{align*}$$

### Giving
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{give} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}
  \ ]
\end{align*}$$

### Binding
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{initialise-binding} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bind-value} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bind} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound-value} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{scope}
  \ ]
\end{align*}$$

### Generating
               


$$\begin{align*}
  [ \
  \KEY{Type} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Generating}{atoms} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Generating}{fresh-atom}
  \ ]
\end{align*}$$

### Storing
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{initialise-storing} \\
  \KEY{Datatype} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{variables} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{vars} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{allocate-initialised-variable} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{alloc-init} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned}
  \ ]
\end{align*}$$

## Abnormal computation
               


### Terminating abruptly
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Abrupting}{handle-abrupt}
  \ ]
\end{align*}$$

### Failing
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{finalise-failing} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{fail} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{checked}
  \ ]
\end{align*}$$

# Values
               


## Value Types
               


$$\begin{align*}
  [ \
  \KEY{Type} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{vals} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{is-value} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{is-val} \\
  \KEY{Type} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{ground-values} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{ground-vals}
  \ ]
\end{align*}$$

## Primitive values
               


### Booleans
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{booleans} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{bools} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{true} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{false}
  \ ]
\end{align*}$$

### Integers
               


$$\begin{align*}
  [ \
  \KEY{Type} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integers} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{ints} \\
  \KEY{Type} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{natural-numbers} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{nats} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-add} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{int-add} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-multiply} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{int-mul} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-divide} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{int-div} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-is-less-or-equal} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{is-less-or-equal} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{decimal-natural} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{decimal}
  \ ]
\end{align*}$$

### The null value
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-value} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null}
  \ ]
\end{align*}$$

## Composite values
               


### Sequences of values
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sequences}{length} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sequences}{index}
  \ ]
\end{align*}$$

### Lists
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{lists}
  \ ]
\end{align*}$$

### Sets
               


$$\begin{align*}
  [ \
  \KEY{Type} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sets}{sets} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sets}{is-in-set} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sets}{is-subset} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sets}{set-unite} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sets}{set-intersect} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sets}{set-difference} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sets}{some-element}
  \ ]
\end{align*}$$

### Maps
               


$$\begin{align*}
  [ \
  \KEY{Type} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{maps} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{map} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{map-lookup} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{lookup} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{map-domain} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{dom} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{map-override} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{map-unite} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{map-delete}
  \ ]
\end{align*}$$

## Abstraction values
               


### Generic abstractions
               


$$\begin{align*}
  [ \
  \KEY{Type} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Generic}{abstractions} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Generic}{abstraction} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Generic}{closure}
  \ ]
\end{align*}$$

### Thunks
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Thunks}{thunks} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Thunks}{thunk}
  \ ]
\end{align*}$$

### Functions
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Functions}{functions} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Functions}{function} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Functions}{apply} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Functions}{supply}
  \ ]
\end{align*}$$



[Funcons-beta]: /CBS-beta/math/Funcons-beta
  "FUNCONS-BETA"
[Unstable-Funcons-beta]: /CBS-beta/math/Unstable-Funcons-beta
  "UNSTABLE-FUNCONS-BETA"
[Languages-beta]: /CBS-beta/math/Languages-beta
  "LANGUAGES-BETA"
[Unstable-Languages-beta]: /CBS-beta/math/Unstable-Languages-beta
  "UNSTABLE-LANGUAGES-BETA"
[CBS-beta]: /CBS-beta
  "CBS-BETA"
[LD-Funcons-Index.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Languages-beta/LangDev-2019/LD-cbs/LD/LD-Funcons-Index/LD-Funcons-Index.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Unstable-Languages-beta/LangDev-2019/LD-cbs/LD/LD-Funcons-Index
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Unstable-Languages-beta/LangDev-2019/LD-cbs/LD/LD-Funcons-Index
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Languages-beta/LangDev-2019/LD-cbs/LD/LD-Funcons-Index/LD-Funcons-Index.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20LD/LD-Funcons-Index/LD-Funcons-Index.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
