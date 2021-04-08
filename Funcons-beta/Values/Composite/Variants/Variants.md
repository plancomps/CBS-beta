{::comment}{% raw %}{:/}


----

### Variants
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEREF{variants} \\
  \KEY{Funcon} \quad & \NAMEREF{variant} \\
  \KEY{Funcon} \quad & \NAMEREF{variant-id} \\
  \KEY{Funcon} \quad & \NAMEREF{variant-value}
  \ ]
\end{align*}$$

$$\begin{align*}
  \KEY{Meta-variables} \quad
  & \VAR{T} <: \NAMEHYPER{../..}{Value-Types}{values}
\end{align*}$$

$$\begin{align*}
  \KEY{Datatype} \quad 
  \NAMEDECL{variants}(
                     \VAR{T} ) 
  \ ::= \ & \NAMEDECL{variant}(
                               \_ : \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers}, \_ : \VAR{T})
\end{align*}$$


  A value of type $$\SHADE{\NAMEREF{variants}
           (  \VAR{T} )}$$ is a pair formed from an identifier and 
  a value of type $$\SHADE{\VAR{T}}$$.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{variant-id}(
                       \_ : \NAMEREF{variants}
                                 (  \VAR{T} )) 
    :  \TO \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers} 
\\
  \KEY{Rule} \quad
    & \NAMEREF{variant-id}
        (  \NAMEREF{variant}
                (  \VAR{I} : \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers}, 
                       \_ : \VAR{T} ) ) \leadsto 
        \VAR{I}
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{variant-value}(
                       \_ : \NAMEREF{variants}
                                 (  \VAR{T} )) 
    :  \TO \VAR{T} 
\\
  \KEY{Rule} \quad
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
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Composite/Variants/Variants.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}
