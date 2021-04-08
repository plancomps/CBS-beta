---
title: "Thunks"
math: katex
parent: Abstraction
ancestor: Funcons-beta

---
[Funcons-beta] : [Thunks.cbs] \| [PLAIN] \| [PDF]

{::comment}{% raw %}{:/}


----

### Thunks
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEREF{thunks} \\
  \KEY{Funcon} \quad & \NAMEREF{thunk} \\
  \KEY{Funcon} \quad & \NAMEREF{force}
  \ ]
\end{align*}$$

$$\begin{align*}
  \KEY{Meta-variables} \quad
  & \VAR{T} <: \NAMEHYPER{../..}{Value-Types}{values}
\end{align*}$$

$$\begin{align*}
  \KEY{Datatype} \quad 
  \NAMEDECL{thunks}(
                     \VAR{T} ) 
  \ ::= \ & \NAMEDECL{thunk}(
                               \_ : \NAMEHYPER{../.}{Generic}{abstractions}
                                         (  (   \  ) \TO \VAR{T} ))
\end{align*}$$


  $$\SHADE{\NAMEREF{thunks}
           (  \VAR{T} )}$$ consists of abstractions whose bodies do not depend on
  a given value, and whose executions normally compute values of type $$\SHADE{\VAR{T}}$$.
  $$\SHADE{\NAMEREF{thunk}
           (  \NAMEHYPER{../.}{Generic}{abstraction}
                   (  \VAR{X} ) )}$$ evaluates to a thunk with dynamic bindings,
  $$\SHADE{\NAMEREF{thunk}
           (  \NAMEHYPER{../.}{Generic}{closure}
                   (  \VAR{X} ) )}$$ computes a thunk with static bindings.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{force}(
                       \_ : \NAMEREF{thunks}
                                 (  \VAR{T} )) 
    :  \TO \VAR{T} 
\end{align*}$$


  $$\SHADE{\NAMEREF{force}
           (  \VAR{H} )}$$ enacts the abstraction of the thunk $$\SHADE{\VAR{H}}$$.


$$\begin{align*}
  \KEY{Rule} \quad
    & \NAMEREF{force}
        (  \NAMEREF{thunk}
                (  \NAMEHYPER{../.}{Generic}{abstraction}
                        (  \VAR{X} ) ) ) \leadsto 
        \NAMEHYPER{../../../Computations/Normal}{Giving}{no-given}
          (  \VAR{X} )
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
[Thunks.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Abstraction/Thunks/Thunks.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Values/Abstraction/Thunks
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Funcons-beta/Values/Abstraction/Thunks
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Abstraction/Thunks/Thunks.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Abstraction/Thunks/Thunks.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
