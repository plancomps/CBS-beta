{::comment}{% raw %}{:/}

### Linking
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \ & \NAMEREF{links} \\
  \KEY{Funcon} \ & \NAMEREF{initialise-linking} \\
  \KEY{Funcon} \ & \NAMEREF{link} \\
  \KEY{Funcon} \ & \NAMEREF{fresh-link} \\
  \KEY{Funcon} \ & \NAMEREF{fresh-initialised-link} \\
  \KEY{Alias} \ & \NAMEREF{fresh-init-link} \\
  \KEY{Funcon} \ & \NAMEREF{set-link} \\
  \KEY{Funcon} \ & \NAMEREF{follow-if-link}
  \ ]
\end{align*}$$

$$\begin{align*}
  \KEY{Meta-variables} \
  & \VAR{T} <: \NAMEHYPER{../../../Values}{Value-Types}{values}
\end{align*}$$

$$\begin{align*}
  \KEY{Datatype} \ 
  \NAMEDECL{links} 
  \ ::= \ & \NAMEDECL{link}(
                               \_ : \NAMEHYPER{../.}{Storing}{variables})
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \
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
  \KEY{Funcon} \
  & \NAMEDECL{fresh-link}(
                       \VAR{T} ) 
    :  \TO \NAMEREF{links} \\&\quad
    \leadsto \NAMEREF{link}
               (  \NAMEHYPER{../.}{Storing}{allocate-variable}
                       (  \VAR{T} ) )
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \
  & \NAMEDECL{fresh-initialised-link}(
                       \VAR{T} , \VAR{V} : \VAR{T}) 
    :  \TO \NAMEREF{links} \\&\quad
    \leadsto \NAMEREF{link}
               (  \NAMEHYPER{../.}{Storing}{allocate-initialised-variable}
                       (  \VAR{T}, 
                              \VAR{V} ) )
\\
  \KEY{Alias} \
  & \NAMEDECL{fresh-init-link} = \NAMEREF{fresh-initialised-link}
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \
  & \NAMEDECL{set-link}(
                       \_ : \NAMEREF{links}, \_ : \VAR{T}) 
    :  \TO \NAMEHYPER{../../../Values/Primitive}{Null}{null-type} 
\end{align*}$$


  The value of a link can be set only once.


$$\begin{align*}
  \KEY{Rule} \
    & \NAMEREF{set-link}
        (  \NAMEREF{link}
                (  \VAR{Var} : \NAMEHYPER{../.}{Storing}{variables} ), 
               \VAR{V} : \VAR{T} ) \leadsto 
        \NAMEHYPER{../.}{Storing}{initialise-variable}
          (  \VAR{Var}, 
                 \VAR{V} )
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \
  & \NAMEDECL{follow-link}(
                       \_ : \NAMEREF{links}) 
    :  \TO \NAMEHYPER{../../../Values}{Value-Types}{values} 
\\
  \KEY{Rule} \
    & \NAMEREF{follow-link}
        (  \NAMEREF{link}
                (  \VAR{Var} : \NAMEHYPER{../.}{Storing}{variables} ) ) \leadsto 
        \NAMEHYPER{../.}{Storing}{assigned}
          (  \VAR{Var} )
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \
  & \NAMEDECL{follow-if-link}(
                       \_ : \NAMEHYPER{../../../Values}{Value-Types}{values}) 
    :  \TO \NAMEHYPER{../../../Values}{Value-Types}{values} 
\end{align*}$$


  If $$\SHADE{\VAR{V}}$$ is a link, $$\SHADE{\NAMEREF{follow-if-link}
           (  \VAR{V} )}$$ computes the set value, and
  otherwise it evaluates to $$\SHADE{\VAR{V}}$$.


$$\begin{align*}
  \KEY{Rule} \
    & \NAMEREF{follow-if-link}
        (  \NAMEREF{link}
                (  \VAR{Var} : \NAMEHYPER{../.}{Storing}{variables} ) ) \leadsto 
        \NAMEHYPER{../.}{Storing}{assigned}
          (  \VAR{Var} )
\\
  \KEY{Rule} \
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
[PDF]: /CBS-beta/math/Funcons-beta/Computations/Normal/Linking/Linking.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}
