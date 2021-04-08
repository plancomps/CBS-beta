---
title: "MiniJava-Funcons-Index"
math: katex
parent: MiniJava
ancestor: Languages-beta

---
[Languages-beta] : [MiniJava-Funcons-Index.cbs] \| [PLAIN] \| [PDF]

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
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{interleave-repeat}
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
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound-value} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{scope} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{collateral} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{recursive}
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
               


#### Output
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Interacting}{print}
  \ ]
\end{align*}$$

## Abnormal computation
               


### Failing
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{finalise-failing} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{checked}
  \ ]
\end{align*}$$

# Values
               


## Value Types
               


$$\begin{align*}
  [ \
  \KEY{Type} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{value-types} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{types}
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
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-is-less} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{is-less} \\
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
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sequences}{first}
  \ ]
\end{align*}$$

### Tuples
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuples} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuple-elements}
  \ ]
\end{align*}$$

### Strings
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Strings}{to-string}
  \ ]
\end{align*}$$

### Vectors
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Vectors}{vectors} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Vectors}{vector} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Vectors}{vector-elements}
  \ ]
\end{align*}$$

### Sets
               


$$\begin{align*}
  [ \
  \KEY{Type} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sets}{sets} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sets}{set-unite}
  \ ]
\end{align*}$$

### Maps
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{map} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{map-lookup} \\
  \KEY{Alias} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{lookup}
  \ ]
\end{align*}$$

### References and pointers
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{References}{references} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{References}{reference} \\
  \KEY{Type} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{References}{pointers} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{References}{dereference}
  \ ]
\end{align*}$$

### Classes
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Classes}{class} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Classes}{class-instantiator} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Classes}{class-name-single-inheritance-feature-map}
  \ ]
\end{align*}$$

### Objects
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Objects}{objects} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Objects}{object} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Objects}{object-class-name} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Objects}{object-single-inheritance-feature-map}
  \ ]
\end{align*}$$

## Abstraction values
               


### Generic abstractions
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Generic}{abstraction} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Generic}{closure}
  \ ]
\end{align*}$$

### Thunks
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Thunks}{thunk} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Thunks}{force}
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

### Patterns
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Patterns}{patterns} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Patterns}{pattern} \\
  \KEY{Funcon} \quad & \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Patterns}{match}
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
[MiniJava-Funcons-Index.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/MiniJava/MiniJava-cbs/MiniJava/MiniJava-Funcons-Index/MiniJava-Funcons-Index.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/MiniJava/MiniJava-cbs/MiniJava/MiniJava-Funcons-Index
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Languages-beta/MiniJava/MiniJava-cbs/MiniJava/MiniJava-Funcons-Index
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/MiniJava/MiniJava-cbs/MiniJava/MiniJava-Funcons-Index/MiniJava-Funcons-Index.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20MiniJava/MiniJava-Funcons-Index/MiniJava-Funcons-Index.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
