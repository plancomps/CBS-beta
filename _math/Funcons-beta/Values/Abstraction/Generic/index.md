---
title: "Generic"
math: katex
parent: Abstraction
ancestor: Funcons-beta

---
[Funcons-beta] : [Generic.cbs] \| [PLAIN] \| [PDF]

{::comment}{% raw %}{:/}


----

### Generic abstractions
               


$$\begin{align*}
  [ \
  \KEY{Type} \quad & \NAMEREF{abstractions} \\
  \KEY{Funcon} \quad & \NAMEREF{abstraction} \\
  \KEY{Funcon} \quad & \NAMEREF{closure} \\
  \KEY{Funcon} \quad & \NAMEREF{enact}
  \ ]
\end{align*}$$

$$\begin{align*}
  \KEY{Meta-variables} \quad
  & \VAR{T} <: \NAMEHYPER{../..}{Value-Types}{values} \qquad \\& \VAR{T}\QUERY <: \NAMEHYPER{../..}{Value-Types}{values}\QUERY
\end{align*}$$

$$\begin{align*}
  \KEY{Type} \quad 
  & \NAMEDECL{abstractions}(
                       \_ : \NAMEHYPER{../../../Computations}{Computation-Types}{computation-types})  
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{abstraction}(
                       \_ : \VAR{T}\QUERY \TO \VAR{T}) 
    : \NAMEREF{abstractions}
        (  \VAR{T}\QUERY \TO \VAR{T} ) 
\end{align*}$$


  The funcon $$\SHADE{\NAMEREF{abstraction}
           (  \VAR{X} )}$$ forms abstraction values from computations.
  
  References to bindings of identifiers in $$\SHADE{\VAR{X}}$$ are dynamic.
  The funcon $$\SHADE{\NAMEREF{closure}
           (  \VAR{X} )}$$ forms abstractions with static bindings.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{closure}(
                       \_ : \VAR{T}\QUERY \TO \VAR{T}) 
    :  \TO \NAMEREF{abstractions}
                     (  \VAR{T}\QUERY \TO \VAR{T} ) 
\end{align*}$$


  $$\SHADE{\NAMEREF{closure}
           (  \VAR{X} )}$$ computes a closed abstraction from the computation $$\SHADE{\VAR{X}}$$.
  In contrast to $$\SHADE{\NAMEREF{abstraction}
           (  \VAR{X} )}$$, references to bindings of identifiers
  in $$\SHADE{\VAR{X}}$$ are static. Moreover, $$\SHADE{\NAMEREF{closure}
           (  \VAR{X} )}$$ is not a value constructor,
  so it cannot be used in pattern terms in rules.


$$\begin{align*}
  \KEY{Rule} \quad
    & \NAMEHYPER{../../../Computations/Normal}{Binding}{environment} (  \VAR{$\rho$} ) \vdash \NAMEREF{closure}
                    (  \VAR{X} ) \TRANS 
        \NAMEREF{abstraction}
          (  \NAMEHYPER{../../../Computations/Normal}{Binding}{closed}
                  (  \NAMEHYPER{../../../Computations/Normal}{Binding}{scope}
                          (  \VAR{$\rho$}, 
                                 \VAR{X} ) ) )
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{enact}(
                       \_ : \NAMEREF{abstractions}
                                 (  \VAR{T}\QUERY \TO \VAR{T} )) 
    : \VAR{T}\QUERY \TO \VAR{T} 
\end{align*}$$


  $$\SHADE{\NAMEREF{enact}
           (  \VAR{A} )}$$ executes the computation of the abstraction $$\SHADE{\VAR{A}}$$,
  with access to all the current entities.


$$\begin{align*}
  \KEY{Rule} \quad
    & \NAMEREF{enact}
        (  \NAMEREF{abstraction}
                (  \VAR{X} ) ) \leadsto 
        \VAR{X}
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
[Generic.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Abstraction/Generic/Generic.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Values/Abstraction/Generic
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Funcons-beta/Values/Abstraction/Generic
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Abstraction/Generic/Generic.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Abstraction/Generic/Generic.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
