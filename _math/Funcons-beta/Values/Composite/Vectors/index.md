---
title: "Vectors"
math: katex
parent: Composite
ancestor: Funcons-beta

---
[Funcons-beta] : [Vectors.cbs] \| [PLAIN] \| [PDF]

{::comment}{% raw %}{:/}


----

### Vectors
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEREF{vectors} \\
  \KEY{Funcon} \quad & \NAMEREF{vector} \\
  \KEY{Funcon} \quad & \NAMEREF{vector-elements}
  \ ]
\end{align*}$$

$$\begin{align*}
  \KEY{Meta-variables} \quad
  & \VAR{T} <: \NAMEHYPER{../..}{Value-Types}{values}
\end{align*}$$

$$\begin{align*}
  \KEY{Datatype} \quad 
  \NAMEDECL{vectors}(
                     \VAR{T} ) 
  \ ::= \ & \NAMEDECL{vector}(
                               \_ : (  \VAR{T} )\STAR)
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{vector-elements}(
                       \_ : \NAMEREF{vectors}
                                 (  \VAR{T} )) 
    :  \TO (  \VAR{T} )\STAR 
\\
  \KEY{Rule} \quad
    & \NAMEREF{vector-elements}
        (  \NAMEREF{vector}
                (  \VAR{V}\STAR : (  \VAR{T} )\STAR ) ) \leadsto 
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
[Vectors.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Composite/Vectors/Vectors.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Values/Composite/Vectors
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Funcons-beta/Values/Composite/Vectors
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Composite/Vectors/Vectors.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Composite/Vectors/Vectors.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
