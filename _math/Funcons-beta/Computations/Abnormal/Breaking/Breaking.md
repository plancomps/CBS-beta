{::comment}{% raw %}{:/}

### Breaking
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \ & \NAMEREF{breaking} \\
  \KEY{Funcon} \ & \NAMEREF{broken} \\
  \KEY{Funcon} \ & \NAMEREF{finalise-breaking} \\
  \KEY{Funcon} \ & \NAMEREF{break} \\
  \KEY{Funcon} \ & \NAMEREF{handle-break}
  \ ]
\end{align*}$$

$$\begin{align*}
  \KEY{Meta-variables} \
  & \VAR{T} <: \NAMEHYPER{../../../Values}{Value-Types}{values}
\end{align*}$$

$$\begin{align*}
  \KEY{Datatype} \ 
  \NAMEDECL{breaking} 
  \ ::= \ & \NAMEDECL{broken}
\end{align*}$$


  $$\SHADE{\NAMEREF{broken}}$$ is a reason for abrupt termination.


$$\begin{align*}
  \KEY{Funcon} \
  & \NAMEDECL{finalise-breaking}(
                       \VAR{X} :  \TO \VAR{T}) 
    :  \TO \VAR{T}  \mid \NAMEHYPER{../../../Values/Primitive}{Null}{null-type} \\&\quad
    \leadsto \NAMEHYPER{../.}{Abrupting}{finalise-abrupting}
               (  \VAR{X} )
\end{align*}$$


  $$\SHADE{\NAMEREF{finalise-breaking}
           (  \VAR{X} )}$$ handles abrupt termination of $$\SHADE{\VAR{X}}$$ due to executing
  $$\SHADE{\NAMEREF{break}}$$.


$$\begin{align*}
  \KEY{Funcon} \
  & \NAMEDECL{break} 
    :  \TO \NAMEHYPER{../../../Values}{Value-Types}{empty-type} \\&\quad
    \leadsto \NAMEHYPER{../.}{Abrupting}{abrupt}
               (  \NAMEREF{broken} )
\end{align*}$$


  $$\SHADE{\NAMEREF{break}}$$ abruptly terminates all enclosing computations until it is handled.


$$\begin{align*}
  \KEY{Funcon} \
  & \NAMEDECL{handle-break}(
                       \_ :  \TO \NAMEHYPER{../../../Values/Primitive}{Null}{null-type}) 
    :  \TO \NAMEHYPER{../../../Values/Primitive}{Null}{null-type} 
\end{align*}$$


  $$\SHADE{\NAMEREF{handle-break}
           (  \VAR{X} )}$$ terminates normally when $$\SHADE{\VAR{X}}$$ terminates abruptly for the
  reason $$\SHADE{\NAMEREF{broken}}$$.


$$\begin{align*}
  \KEY{Rule} \
    & \RULE{
      &  \VAR{X} \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}(   \  )}_{} 
          \VAR{X}'
      }{
      &  \NAMEREF{handle-break}
                      (  \VAR{X} ) \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}(   \  )}_{} 
          \NAMEREF{handle-break}
            (  \VAR{X}' )
      }
\\
  \KEY{Rule} \
    & \RULE{
      &  \VAR{X} \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}(  \NAMEREF{broken} )}_{} 
          \_
      }{
      &  \NAMEREF{handle-break}
                      (  \VAR{X} ) \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}(   \  )}_{} 
          \NAMEHYPER{../../../Values/Primitive}{Null}{null-value}
      }
\\
  \KEY{Rule} \
    & \RULE{
      &  \VAR{X} \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}(  \VAR{V} : \mathop{\sim} \NAMEREF{breaking} )}_{} 
          \VAR{X}'
      }{
      &  \NAMEREF{handle-break}
                      (  \VAR{X} ) \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}(  \VAR{V} )}_{} 
          \NAMEREF{handle-break}
            (  \VAR{X}' )
      }
\\
  \KEY{Rule} \
    & \NAMEREF{handle-break}
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
[Breaking.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Abnormal/Breaking/Breaking.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Computations/Abnormal/Breaking
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Funcons-beta/Computations/Abnormal/Breaking
  "CBS-KATEX WEB PAGE"
[PDF]: /CBS-beta/math/Funcons-beta/Computations/Abnormal/Breaking/Breaking.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}
