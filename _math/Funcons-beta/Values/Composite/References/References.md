{::comment}{% raw %}{:/}

### References and pointers
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \ & \NAMEREF{references} \\
  \KEY{Funcon} \ & \NAMEREF{reference} \\
  \KEY{Type} \ & \NAMEREF{pointers} \\
  \KEY{Funcon} \ & \NAMEREF{pointer-null} \\
  \KEY{Funcon} \ & \NAMEREF{dereference}
  \ ]
\end{align*}$$

$$\begin{align*}
  \KEY{Meta-variables} \
  & \VAR{T} <: \NAMEHYPER{../..}{Value-Types}{values}
\end{align*}$$

$$\begin{align*}
  \KEY{Datatype} \ 
  \NAMEDECL{references}(
                     \VAR{T} ) 
  \ ::= \ & \NAMEDECL{reference}(
                               \_ : \VAR{T})
\end{align*}$$

$$\begin{align*}
  \KEY{Datatype} \ 
  \NAMEDECL{pointers}(
                     \VAR{T} ) 
  \ ::= \ &
  \NAMEDECL{pointer-null} \mid \{ \_ : \NAMEREF{references}
               (  \VAR{T} ) \}
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \
  & \NAMEDECL{dereference}(
                       \_ : \NAMEREF{pointers}
                                 (  \VAR{T} )) 
    :  \TO (  \VAR{T} )\QUERY 
\\
  \KEY{Rule} \
    & \NAMEREF{dereference}
        (  \NAMEREF{reference}
                (  \VAR{V} : \VAR{T} ) ) \leadsto 
        \VAR{V}
\\
  \KEY{Rule} \
    & \NAMEREF{dereference}
        (  \NAMEREF{pointer-null} ) \leadsto 
        (   \  )
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
[References.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Composite/References/References.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Values/Composite/References
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Funcons-beta/Values/Composite/References
  "CBS-KATEX WEB PAGE"
[PDF]: /CBS-beta/math/Funcons-beta/Values/Composite/References/References.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}
