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
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{initialise-giving} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{give} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}
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
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{closed} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{scope} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{collateral}
  \ ]
\end{align*}$$

### Generating
               


$$\begin{align*}
  [ \
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
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Abrupting}{finalise-abrupting}
  \ ]
\end{align*}$$

### Failing
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{fail} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{else} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{checked}
  \ ]
\end{align*}$$

### Returning
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Returning}{return} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Returning}{handle-return}
  \ ]
\end{align*}$$

### Breaking
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Breaking}{break} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Breaking}{handle-break}
  \ ]
\end{align*}$$

### Continuing
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Continuing}{continue} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Continuing}{handle-continue}
  \ ]
\end{align*}$$

# Values
               


## Value Types
               


$$\begin{align*}
  [ \
  \KEY{Type} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{vals} \\
  \KEY{Type} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{cast-to-type} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{cast} \\
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
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{not}
  \ ]
\end{align*}$$

### Integers
               


$$\begin{align*}
  [ \
  \KEY{Type} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integers} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{ints} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-add} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{int-add} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-subtract} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{int-sub} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-multiply} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{int-mul} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-divide} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{int-div} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-negate} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{int-neg} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-is-less} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{is-less} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-is-less-or-equal} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{is-less-or-equal} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-is-greater} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{is-greater} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-is-greater-or-equal} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{is-greater-or-equal} \\
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
               


### Lists
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{lists} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{list-nil} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{nil} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{list-cons} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{cons} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{list-head} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{head} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{list-tail} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{tail}
  \ ]
\end{align*}$$

### Strings
               


$$\begin{align*}
  [ \
  \KEY{Type} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Strings}{strings} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Strings}{string-append} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Strings}{to-string}
  \ ]
\end{align*}$$

### Maps
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{map} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{map-lookup} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{lookup} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{map-override}
  \ ]
\end{align*}$$

### Objects
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Objects}{objects} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Objects}{object} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Objects}{object-feature-map}
  \ ]
\end{align*}$$

## Abstraction values
               


### Generic abstractions
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Generic}{closure}
  \ ]
\end{align*}$$

### Functions
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Functions}{functions} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Functions}{function} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Functions}{apply}
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
[SL-Funcons-Index.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SL/SL-cbs/SL/SL-Funcons-Index/SL-Funcons-Index.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/SL/SL-cbs/SL/SL-Funcons-Index
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Languages-beta/SL/SL-cbs/SL/SL-Funcons-Index
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SL/SL-cbs/SL/SL-Funcons-Index/SL-Funcons-Index.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}
