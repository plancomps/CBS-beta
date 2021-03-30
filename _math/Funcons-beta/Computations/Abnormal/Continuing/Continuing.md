{::comment}{% raw %}{:/}

### Continuing
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \ & \NAMEREF{continuing} \\
  \KEY{Funcon} \ & \NAMEREF{continued} \\
  \KEY{Funcon} \ & \NAMEREF{finalise-continuing} \\
  \KEY{Funcon} \ & \NAMEREF{continue} \\
  \KEY{Funcon} \ & \NAMEREF{handle-continue}
  \ ]
\end{align*}$$

$$\begin{align*}
  \KEY{Meta-variables} \
  & \VAR{T} <: \NAMEHYPER{../../../Values}{Value-Types}{values}
\end{align*}$$

$$\begin{align*}
  \KEY{Datatype} \ 
  \NAMEDECL{continuing} 
  \ ::= \ & \NAMEDECL{continued}
\end{align*}$$


  $$\SHADE{\NAMEREF{continued}}$$ is a reason for abrupt termination.


$$\begin{align*}
  \KEY{Funcon} \
  & \NAMEDECL{finalise-continuing}(
                       \VAR{X} :  \TO \VAR{T}) 
    :  \TO \VAR{T}  \mid \NAMEHYPER{../../../Values/Primitive}{Null}{null-type} \\&\quad
    \leadsto \NAMEHYPER{../.}{Abrupting}{finalise-abrupting}
               (  \VAR{X} )
\end{align*}$$


  $$\SHADE{\NAMEREF{finalise-continuing}
           (  \VAR{X} )}$$ handles abrupt termination of $$\SHADE{\VAR{X}}$$ due to executing
  $$\SHADE{\NAMEREF{continue}}$$.


$$\begin{align*}
  \KEY{Funcon} \
  & \NAMEDECL{continue} 
    :  \TO \NAMEHYPER{../../../Values}{Value-Types}{empty-type} \\&\quad
    \leadsto \NAMEHYPER{../.}{Abrupting}{abrupt}
               (  \NAMEREF{continued} )
\end{align*}$$


  $$\SHADE{\NAMEREF{continue}}$$ abruptly terminates all enclosing computations until it is handled.


$$\begin{align*}
  \KEY{Funcon} \
  & \NAMEDECL{handle-continue}(
                       \_ :  \TO \NAMEHYPER{../../../Values/Primitive}{Null}{null-type}) 
    :  \TO \NAMEHYPER{../../../Values/Primitive}{Null}{null-type} 
\end{align*}$$


  $$\SHADE{\NAMEREF{handle-continue}
           (  \VAR{X} )}$$ terminates normally when $$\SHADE{\VAR{X}}$$ terminates abruptly for the
  reason $$\SHADE{\NAMEREF{continued}}$$.


$$\begin{align*}
  \KEY{Rule} \
    & \RULE{
      &  \VAR{X} \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}(   \  )}_{} 
          \VAR{X}'
      }{
      &  \NAMEREF{handle-continue}
                      (  \VAR{X} ) \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}(   \  )}_{} 
          \NAMEREF{handle-continue}
            (  \VAR{X}' )
      }
\\
  \KEY{Rule} \
    & \RULE{
      &  \VAR{X} \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}(  \NAMEREF{continued} )}_{} 
          \_
      }{
      &  \NAMEREF{handle-continue}
                      (  \VAR{X} ) \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}(   \  )}_{} 
          \NAMEHYPER{../../../Values/Primitive}{Null}{null-value}
      }
\\
  \KEY{Rule} \
    & \RULE{
      &  \VAR{X} \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}(  \VAR{V} : \mathop{\sim} \NAMEREF{continuing} )}_{} 
          \VAR{X}'
      }{
      &  \NAMEREF{handle-continue}
                      (  \VAR{X} ) \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}(  \VAR{V} )}_{} 
          \NAMEREF{handle-continue}
            (  \VAR{X}' )
      }
\\
  \KEY{Rule} \
    & \NAMEREF{handle-continue}
        (  \NAMEHYPER{../../../Values/Primitive}{Null}{null-value} ) \leadsto 
        \NAMEHYPER{../../../Values/Primitive}{Null}{null-value}
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
[Continuing.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Abnormal/Continuing/Continuing.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Computations/Abnormal/Continuing
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Funcons-beta/Computations/Abnormal/Continuing
  "CBS-KATEX WEB PAGE"
[PDF]: /CBS-beta/math/Funcons-beta/Computations/Abnormal/Continuing/Continuing.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}
