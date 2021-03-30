---
title: "Variants"
math: katex
parent: Composite
ancestor: Funcons-beta

---
[Funcons-beta] : [Variants.cbs] \| [PLAIN] \| [PDF]

{::comment}{% raw %}{:/}

### Variants
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \ & \NAMEREF{variants} \\
  \KEY{Funcon} \ & \NAMEREF{variant} \\
  \KEY{Funcon} \ & \NAMEREF{variant-id} \\
  \KEY{Funcon} \ & \NAMEREF{variant-value}
  \ ]
\end{align*}$$

$$\begin{align*}
  \KEY{Meta-variables} \
  & \VAR{T} <: \NAMEHYPER{../..}{Value-Types}{values}
\end{align*}$$

$$\begin{align*}
  \KEY{Datatype} \ 
  \NAMEDECL{variants}(
                     \VAR{T} ) 
  \ ::= \ & \NAMEDECL{variant}(
                               \_ : \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers}, \_ : \VAR{T})
\end{align*}$$


  A value of type $$\SHADE{\NAMEREF{variants}
           (  \VAR{T} )}$$ is a pair formed from an identifier and 
  a value of type $$\SHADE{\VAR{T}}$$.


$$\begin{align*}
  \KEY{Funcon} \
  & \NAMEDECL{variant-id}(
                       \_ : \NAMEREF{variants}
                                 (  \VAR{T} )) 
    :  \TO \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers} 
\\
  \KEY{Rule} \
    & \NAMEREF{variant-id}
        (  \NAMEREF{variant}
                (  \VAR{I} : \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers}, 
                       \_ : \VAR{T} ) ) \leadsto 
        \VAR{I}
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \
  & \NAMEDECL{variant-value}(
                       \_ : \NAMEREF{variants}
                                 (  \VAR{T} )) 
    :  \TO \VAR{T} 
\\
  \KEY{Rule} \
    & \NAMEREF{variant-value}
        (  \NAMEREF{variant}
                (  \_ : \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers}, 
                       \VAR{V} : \VAR{T} ) ) \leadsto 
        \VAR{V}
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
[Variants.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Composite/Variants/Variants.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Values/Composite/Variants
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Funcons-beta/Values/Composite/Variants
  "CBS-KATEX WEB PAGE"
[PDF]: /CBS-beta/math/Funcons-beta/Values/Composite/Variants/Variants.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}

____
From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Composite/Variants/Variants.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
