{::comment}{% raw %}{:/}


----

### Returning
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEREF{returning} \\
  \KEY{Funcon} \quad & \NAMEREF{returned} \\
  \KEY{Funcon} \quad & \NAMEREF{finalise-returning} \\
  \KEY{Funcon} \quad & \NAMEREF{return} \\
  \KEY{Funcon} \quad & \NAMEREF{handle-return}
  \ ]
\end{align*}$$

$$\begin{align*}
  \KEY{Meta-variables} \quad
  & \VAR{T} <: \NAMEHYPER{../../../Values}{Value-Types}{values}
\end{align*}$$

$$\begin{align*}
  \KEY{Datatype} \quad 
  \NAMEDECL{returning} 
  \ ::= \ & \NAMEDECL{returned}(
                               \_ : \NAMEHYPER{../../../Values}{Value-Types}{values})
\end{align*}$$


  $$\SHADE{\NAMEREF{returned}
           (  \VAR{V}\QUERY )}$$ is a reason for abrupt termination.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{finalise-returning}(
                       \VAR{X} :  \TO \VAR{T}) 
    :  \TO \VAR{T}  \mid \NAMEHYPER{../../../Values/Primitive}{Null}{null-type} \\&\quad
    \leadsto \NAMEHYPER{../.}{Abrupting}{finalise-abrupting}
               (  \VAR{X} )
\end{align*}$$


  $$\SHADE{\NAMEREF{finalise-returning}
           (  \VAR{X} )}$$ handles abrupt termination of $$\SHADE{\VAR{X}}$$ due to
  executing $$\SHADE{\NAMEREF{return}
           (  \VAR{V} )}$$.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{return}(
                       \VAR{V} : \VAR{T}) 
    :  \TO \NAMEHYPER{../../../Values}{Value-Types}{empty-type} \\&\quad
    \leadsto \NAMEHYPER{../.}{Abrupting}{abrupt}
               (  \NAMEREF{returned}
                       (  \VAR{V} ) )
\end{align*}$$


  $$\SHADE{\NAMEREF{return}
           (  \VAR{V} )}$$ abruptly terminates all enclosing computations until it is
  handled, then giving $$\SHADE{\VAR{V}}$$. Note that $$\SHADE{\VAR{V}}$$ may be $$\SHADE{\NAMEHYPER{../../../Values/Primitive}{Null}{null-value}}$$.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{handle-return}(
                       \_ :  \TO \VAR{T}) 
    :  \TO \VAR{T} 
\end{align*}$$


  $$\SHADE{\NAMEREF{handle-return}
           (  \VAR{X} )}$$ first evaluates $$\SHADE{\VAR{X}}$$. If $$\SHADE{\VAR{X}}$$ either terminates abruptly for 
  reason $$\SHADE{\NAMEREF{returned}
           (  \VAR{V} )}$$, or terminates normally with value $$\SHADE{\VAR{V}}$$, it gives $$\SHADE{\VAR{V}}$$.


$$\begin{align*}
  \KEY{Rule} \quad
    & \RULE{
      &  \VAR{X} \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}(   \  )}_{} 
          \VAR{X}'
      }{
      &  \NAMEREF{handle-return}
                      (  \VAR{X} ) \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}(   \  )}_{} 
          \NAMEREF{handle-return}
            (  \VAR{X}' )
      }
\\
  \KEY{Rule} \quad
    & \RULE{
      &  \VAR{X} \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}(  \NAMEREF{returned}
                                                                                  (  \VAR{V} : \NAMEHYPER{../../../Values}{Value-Types}{values} ) )}_{} 
          \VAR{X}'
      }{
      &  \NAMEREF{handle-return}
                      (  \VAR{X} ) \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}(   \  )}_{} 
          \VAR{V}
      }
\\
  \KEY{Rule} \quad
    & \RULE{
      &  \VAR{X} \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}(  \VAR{V}' : \mathop{\sim} \NAMEREF{returning} )}_{} 
          \VAR{X}'
      }{
      &  \NAMEREF{handle-return}
                      (  \VAR{X} ) \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}(  \VAR{V}' )}_{} 
          \NAMEREF{handle-return}
            (  \VAR{X}' )
      }
\\
  \KEY{Rule} \quad
    & \NAMEREF{handle-return}
        (  \VAR{V} : \VAR{T} ) \leadsto 
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
[Returning.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Abnormal/Returning/Returning.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Computations/Abnormal/Returning
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Funcons-beta/Computations/Abnormal/Returning
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Abnormal/Returning/Returning.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}
