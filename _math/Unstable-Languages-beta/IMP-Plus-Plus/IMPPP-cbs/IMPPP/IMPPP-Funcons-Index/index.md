---
title: "IMPPP-Funcons-Index"
math: katex
parent: IMPPP
ancestor: Unstable-Languages-beta

---
[Unstable-Languages-beta] : [IMPPP-Funcons-Index.cbs] \| [PLAIN] \| [PDF]

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
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{while} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{atomic}
  \ ]
\end{align*}$$

### Giving
               


$$\begin{align*}
  [ \
  \KEY{Entity} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given-value} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{give} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{no-given} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{left-to-right-filter}
  \ ]
\end{align*}$$

### Binding
               


$$\begin{align*}
  [ \
  \KEY{Type} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{environments} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{envs} \\
  \KEY{Datatype} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{identifiers} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{ids} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{initialise-binding} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bind-value} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bind} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound-value} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{scope} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{collateral}
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
  \KEY{Entity} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{store} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{initialise-storing} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{allocate-variable} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{alloc} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{allocate-initialised-variable} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{alloc-init} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{un-assign}
  \ ]
\end{align*}$$

### Interacting
               


#### Input
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Interacting}{read}
  \ ]
\end{align*}$$

#### Output
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Interacting}{print}
  \ ]
\end{align*}$$

## Abnormal computation
               


### Terminating abruptly
               


$$\begin{align*}
  [ \
  \KEY{Entity} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Abrupting}{abrupted} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Abrupting}{handle-abrupt}
  \ ]
\end{align*}$$

### Failing
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{finalise-failing} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{fail} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{else} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{checked} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{check-true}
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
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{when-true} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{when} \\
  \KEY{Type} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{ground-values} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{ground-vals} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{is-equal} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{is-eq}
  \ ]
\end{align*}$$

## Primitive values
               


### Booleans
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{booleans} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{bools} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{true} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{false} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{not} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{and}
  \ ]
\end{align*}$$

### Integers
               


$$\begin{align*}
  [ \
  \KEY{Type} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integers} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{ints} \\
  \KEY{Type} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{positive-integers} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{pos-ints} \\
  \KEY{Type} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{natural-numbers} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{nats} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{natural-successor} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{nat-succ} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{natural-predecessor} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{nat-pred} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-add} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{int-add} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-divide} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{int-div} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-negate} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{int-neg} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-is-less-or-equal} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{is-less-or-equal} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-is-greater} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{is-greater} \\
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
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sequences}{index} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sequences}{first} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sequences}{second}
  \ ]
\end{align*}$$

### Tuples
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuples} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuple-elements}
  \ ]
\end{align*}$$

### Lists
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{lists} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{list-elements} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{list-cons} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{cons} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{list-head} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{head} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{list-tail} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{tail} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{list-append}
  \ ]
\end{align*}$$

### Strings
               


$$\begin{align*}
  [ \
  \KEY{Type} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Strings}{strings} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Strings}{string-append}
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
[IMPPP-Funcons-Index.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs/IMPPP/IMPPP-Funcons-Index/IMPPP-Funcons-Index.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs/IMPPP/IMPPP-Funcons-Index
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs/IMPPP/IMPPP-Funcons-Index
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs/IMPPP/IMPPP-Funcons-Index/IMPPP-Funcons-Index.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20IMPPP/IMPPP-Funcons-Index/IMPPP-Funcons-Index.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
