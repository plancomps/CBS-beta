{::comment}{% raw %}{:/}


----

### Linking
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEREF{links} \\
  \KEY{Funcon} \quad & \NAMEREF{initialise-linking} \\
  \KEY{Funcon} \quad & \NAMEREF{link} \\
  \KEY{Funcon} \quad & \NAMEREF{fresh-link} \\
  \KEY{Funcon} \quad & \NAMEREF{fresh-initialised-link} \\
  \KEY{Alias} \quad & \NAMEREF{fresh-init-link} \\
  \KEY{Funcon} \quad & \NAMEREF{set-link} \\
  \KEY{Funcon} \quad & \NAMEREF{follow-if-link}
  \ ]
\end{align*}$$

$$\begin{align*}
  \KEY{Meta-variables} \quad
  & \VAR{T} <: \NAMEHYPER{../../../Values}{Value-Types}{values}
\end{align*}$$

$$\begin{align*}
  \KEY{Datatype} \quad 
  \NAMEDECL{links} 
  \ ::= \ & \NAMEDECL{link}(
                               \_ : \NAMEHYPER{../.}{Storing}{variables})
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{initialise-linking}(
                       \VAR{X} :  \TO \VAR{T}) 
    :  \TO \VAR{T} \\&\quad
    \leadsto \NAMEHYPER{../.}{Storing}{initialise-storing}
               (  \VAR{X} )
\end{align*}$$


  $$\SHADE{\NAMEREF{initialise-linking}
           (  \VAR{X} )}$$ ensures that the entities used by the funcons for
  linking are properly initialised.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{fresh-link}(
                       \VAR{T} ) 
    :  \TO \NAMEREF{links} \\&\quad
    \leadsto \NAMEREF{link}
               (  \NAMEHYPER{../.}{Storing}{allocate-variable}
                       (  \VAR{T} ) )
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{fresh-initialised-link}(
                       \VAR{T} , \VAR{V} : \VAR{T}) 
    :  \TO \NAMEREF{links} \\&\quad
    \leadsto \NAMEREF{link}
               (  \NAMEHYPER{../.}{Storing}{allocate-initialised-variable}
                       (  \VAR{T}, 
                              \VAR{V} ) )
\\
  \KEY{Alias} \quad
  & \NAMEDECL{fresh-init-link} = \NAMEREF{fresh-initialised-link}
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{set-link}(
                       \_ : \NAMEREF{links}, \_ : \VAR{T}) 
    :  \TO \NAMEHYPER{../../../Values/Primitive}{Null}{null-type} 
\end{align*}$$


  The value of a link can be set only once.


$$\begin{align*}
  \KEY{Rule} \quad
    & \NAMEREF{set-link}
        (  \NAMEREF{link}
                (  \VAR{Var} : \NAMEHYPER{../.}{Storing}{variables} ), 
               \VAR{V} : \VAR{T} ) \leadsto 
        \NAMEHYPER{../.}{Storing}{initialise-variable}
          (  \VAR{Var}, 
                 \VAR{V} )
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{follow-link}(
                       \_ : \NAMEREF{links}) 
    :  \TO \NAMEHYPER{../../../Values}{Value-Types}{values} 
\\
  \KEY{Rule} \quad
    & \NAMEREF{follow-link}
        (  \NAMEREF{link}
                (  \VAR{Var} : \NAMEHYPER{../.}{Storing}{variables} ) ) \leadsto 
        \NAMEHYPER{../.}{Storing}{assigned}
          (  \VAR{Var} )
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{follow-if-link}(
                       \_ : \NAMEHYPER{../../../Values}{Value-Types}{values}) 
    :  \TO \NAMEHYPER{../../../Values}{Value-Types}{values} 
\end{align*}$$


  If $$\SHADE{\VAR{V}}$$ is a link, $$\SHADE{\NAMEREF{follow-if-link}
           (  \VAR{V} )}$$ computes the set value, and
  otherwise it evaluates to $$\SHADE{\VAR{V}}$$.


$$\begin{align*}
  \KEY{Rule} \quad
    & \NAMEREF{follow-if-link}
        (  \NAMEREF{link}
                (  \VAR{Var} : \NAMEHYPER{../.}{Storing}{variables} ) ) \leadsto 
        \NAMEHYPER{../.}{Storing}{assigned}
          (  \VAR{Var} )
\\
  \KEY{Rule} \quad
    & \NAMEREF{follow-if-link}
        (  \VAR{V} : \mathop{\sim} \NAMEREF{links} ) \leadsto 
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
[Linking.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Normal/Linking/Linking.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Computations/Normal/Linking
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Funcons-beta/Computations/Normal/Linking
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Normal/Linking/Linking.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}
