---
title: "Datatypes"
math: katex
parent: Composite
ancestor: Funcons-beta

---
[Funcons-beta] : [Datatypes.cbs] \| [PLAIN] \| [PDF]

{::comment}{% raw %}{:/}


----

### Datatypes
               


$$\begin{align*}
  [ \
  \KEY{Type} \quad & \NAMEREF{datatype-values} \\
  \KEY{Funcon} \quad & \NAMEREF{datatype-value} \\
  \KEY{Funcon} \quad & \NAMEREF{datatype-value-id} \\
  \KEY{Funcon} \quad & \NAMEREF{datatype-value-elements}
  \ ]
\end{align*}$$


  A datatype value consists of an identifier and a sequence of values.

  'Datatype T ::= ...' declares the type $$\SHADE{\VAR{T}}$$ to refer to a fresh value
  constructor in $$\SHADE{\NAMEHYPER{../..}{Value-Types}{types}}$$, and asserts $$\SHADE{\VAR{T} <: \NAMEREF{datatype-values}}$$. 
  
  Each constructor funcon 'F(\_:T_1,...,\_:T_n)' of the datatype declaration
  generates values in $$\SHADE{\VAR{T}}$$ of the form $$\SHADE{\NAMEREF{datatype-value}
           (  \STRING{F}, 
                  \VAR{V}\SUB{1}, 
                  \cdots, 
                  \VAR{V}\SUB{n} )}$$ from
  $$\SHADE{\VAR{V}\SUB{1} : \VAR{T}\SUB{1}}$$, ..., $$\SHADE{\VAR{V}\SUB{n} : \VAR{T}\SUB{n}}$$.
  
  Note that a computation $$\SHADE{\VAR{X}}$$ cannot be directly included in datatype values:
  it is necessary to encapsulate it in $$\SHADE{\NAMEHYPER{../../Abstraction}{Generic}{abstraction}
           (  \VAR{X} )}$$.
  
  'Datatype T', followed by declarations of constructor funcons for 'T',
  allows specification of GADTs.


$$\begin{align*}
  \KEY{Built-in Type} \quad 
  & \NAMEDECL{datatype-values}  
\end{align*}$$

$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{datatype-value}(
                       \_ : \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers}, \_ : \NAMEHYPER{../..}{Value-Types}{values}\STAR) 
    : \NAMEREF{datatype-values} 
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{datatype-value-id}(
                       \_ : \NAMEREF{datatype-values}) 
    :  \TO \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers} 
\\
  \KEY{Rule} \quad
    & \NAMEREF{datatype-value-id}
        (  \NAMEREF{datatype-value}
                (  \VAR{I} : \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers}, 
                       \_\STAR : \NAMEHYPER{../..}{Value-Types}{values}\STAR ) ) \leadsto 
        \VAR{I}
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{datatype-value-elements}(
                       \_ : \NAMEREF{datatype-values}) 
    :  \TO \NAMEHYPER{../..}{Value-Types}{values}\STAR 
\\
  \KEY{Rule} \quad
    & \NAMEREF{datatype-value-elements}
        (  \NAMEREF{datatype-value}
                (  \_ : \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers}, 
                       \VAR{V}\STAR : \NAMEHYPER{../..}{Value-Types}{values}\STAR ) ) \leadsto 
        \VAR{V}\STAR
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
[Datatypes.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Composite/Datatypes/Datatypes.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Values/Composite/Datatypes
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Funcons-beta/Values/Composite/Datatypes
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Composite/Datatypes/Datatypes.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Composite/Datatypes/Datatypes.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
