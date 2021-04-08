---
title: "Records"
math: katex
parent: Composite
ancestor: Funcons-beta

---
[Funcons-beta] : [Records.cbs] \| [PLAIN] \| [PDF]

{::comment}{% raw %}{:/}


----

### Records
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEREF{records} \\
  \KEY{Funcon} \quad & \NAMEREF{record} \\
  \KEY{Funcon} \quad & \NAMEREF{record-map} \\
  \KEY{Funcon} \quad & \NAMEREF{record-select}
  \ ]
\end{align*}$$

$$\begin{align*}
  \KEY{Meta-variables} \quad
  & \VAR{T} <: \NAMEHYPER{../..}{Value-Types}{values}
\end{align*}$$

$$\begin{align*}
  \KEY{Datatype} \quad 
  \NAMEDECL{records}(
                     \VAR{T} ) 
  \ ::= \ & \NAMEDECL{record}(
                               \_ : \NAMEHYPER{../.}{Maps}{maps}
                                         (  \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers}, 
                                                \VAR{T} ))
\end{align*}$$


  A value of type $$\SHADE{\NAMEREF{records}
           (  \VAR{T} )}$$ contains a map from identifiers to values of
  type $$\SHADE{\VAR{T}}$$.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{record-map}(
                       \_ : \NAMEREF{records}
                                 (  \VAR{T} )) 
    :  \TO \NAMEHYPER{../.}{Maps}{maps}
                     (  \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers}, 
                            \VAR{T} ) 
\\
  \KEY{Rule} \quad
    & \NAMEREF{record-map}
        (  \NAMEREF{record}
                (  \VAR{M} : \NAMEHYPER{../.}{Maps}{maps}
                                  (  \_, 
                                         \_ ) ) ) \leadsto 
        \VAR{M}
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{record-select}(
                       \VAR{R} : \NAMEREF{records}
                                 (  \VAR{T} ), \VAR{I} : \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers}) 
    :  \TO \VAR{T}\QUERY \\&\quad
    \leadsto \NAMEHYPER{../.}{Maps}{map-lookup}
               (  \NAMEREF{record-map}
                       (  \VAR{R} ), 
                      \VAR{I} )
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
[Records.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Composite/Records/Records.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Values/Composite/Records
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Funcons-beta/Values/Composite/Records
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Composite/Records/Records.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Composite/Records/Records.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
