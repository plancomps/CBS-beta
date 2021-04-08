{::comment}{% raw %}{:/}


----

### Failing
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEREF{failing} \\
  \KEY{Funcon} \quad & \NAMEREF{failed} \\
  \KEY{Funcon} \quad & \NAMEREF{finalise-failing} \\
  \KEY{Funcon} \quad & \NAMEREF{fail} \\
  \KEY{Funcon} \quad & \NAMEREF{else} \\
  \KEY{Funcon} \quad & \NAMEREF{else-choice} \\
  \KEY{Funcon} \quad & \NAMEREF{checked} \\
  \KEY{Funcon} \quad & \NAMEREF{check-true}
  \ ]
\end{align*}$$

$$\begin{align*}
  \KEY{Meta-variables} \quad
  & \VAR{T} <: \NAMEHYPER{../../../Values}{Value-Types}{values}
\end{align*}$$

$$\begin{align*}
  \KEY{Datatype} \quad 
  \NAMEDECL{failing} 
  \ ::= \ & \NAMEDECL{failed}
\end{align*}$$


  $$\SHADE{\NAMEREF{failed}}$$ is a reason for abrupt termination.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{finalise-failing}(
                       \VAR{X} :  \TO \VAR{T}) 
    :  \TO \VAR{T}  \mid \NAMEHYPER{../../../Values/Primitive}{Null}{null-type} \\&\quad
    \leadsto \NAMEHYPER{../.}{Abrupting}{finalise-abrupting}
               (  \VAR{X} )
\end{align*}$$


  $$\SHADE{\NAMEREF{finalise-failing}
           (  \VAR{X} )}$$ handles abrupt termination of $$\SHADE{\VAR{X}}$$ due to executing $$\SHADE{\NAMEREF{fail}}$$.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{fail} 
    :  \TO \NAMEHYPER{../../../Values}{Value-Types}{empty-type} \\&\quad
    \leadsto \NAMEHYPER{../.}{Abrupting}{abrupt}
               (  \NAMEREF{failed} )
\end{align*}$$


  $$\SHADE{\NAMEREF{fail}}$$ abruptly terminates all enclosing computations until it is handled.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{else}(
                       \_ :  \TO \VAR{T}, \_ : (   \TO \VAR{T} )\PLUS) 
    :  \TO \VAR{T} 
\end{align*}$$


  $$\SHADE{\NAMEREF{else}
           (  \VAR{X}\SUB{1}, 
                  \VAR{X}\SUB{2}, 
                  \cdots )}$$ executes the arguments in turn until either some
  $$\SHADE{\VAR{Xi}}$$ does *not* fail, or all arguments $$\SHADE{\VAR{Xi}}$$ have been executed.
  The last argument executed determines the result.
  $$\SHADE{\NAMEREF{else}
           (  \VAR{X}, 
                  \VAR{Y} )}$$ is associative, with unit $$\SHADE{\NAMEREF{fail}}$$.


$$\begin{align*}
  \KEY{Rule} \quad
    & \RULE{
      &  \VAR{X} \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}(   \  )}_{} 
          \VAR{X}'
      }{
      &  \NAMEREF{else}
                      (  \VAR{X}, 
                             \VAR{Y} ) \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}(   \  )}_{} 
          \NAMEREF{else}
            (  \VAR{X}', 
                   \VAR{Y} )
      }
\\
  \KEY{Rule} \quad
    & \RULE{
      &  \VAR{X} \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}(  \NAMEREF{failed} )}_{} 
          \_
      }{
      &  \NAMEREF{else}
                      (  \VAR{X}, 
                             \VAR{Y} ) \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}(   \  )}_{} 
          \VAR{Y}
      }
\\
  \KEY{Rule} \quad
    & \RULE{
      &  \VAR{X} \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}(  \VAR{V} : \mathop{\sim} \NAMEREF{failing} )}_{} 
          \VAR{X}'
      }{
      &  \NAMEREF{else}
                      (  \VAR{X}, 
                             \VAR{Y} ) \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}(  \VAR{V} )}_{} 
          \NAMEREF{else}
            (  \VAR{X}', 
                   \VAR{Y} )
      }
\\
  \KEY{Rule} \quad
    & \NAMEREF{else}
        (  \VAR{V} : \VAR{T}, 
               \VAR{Y} ) \leadsto 
        \VAR{V}
\\
  \KEY{Rule} \quad
    & \NAMEREF{else}
        (  \VAR{X}, 
               \VAR{Y}, 
               \VAR{Z}\PLUS ) \leadsto 
        \NAMEREF{else}
          (  \VAR{X}, 
                 \NAMEREF{else}
                  (  \VAR{Y}, 
                         \VAR{Z}\PLUS ) )
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{else-choice}(
                       \_ : (   \TO \VAR{T} )\PLUS) 
    :  \TO \VAR{T} 
\end{align*}$$


  $$\SHADE{\NAMEREF{else-choice}
           (  \VAR{X}, 
                  \cdots )}$$ executes the arguments in any order until either some
  $$\SHADE{\VAR{Xi}}$$ does *not* fail, or all arguments $$\SHADE{\VAR{Xi}}$$ have been executed.
  The last argument executed determines the result.
  $$\SHADE{\NAMEREF{else}
           (  \VAR{X}, 
                  \VAR{Y} )}$$ is associative and commutative, with unit $$\SHADE{\NAMEREF{fail}}$$.


$$\begin{align*}
  \KEY{Rule} \quad
    & \NAMEREF{else-choice}
        (  \VAR{W}\STAR, 
               \VAR{X}, 
               \VAR{Y}, 
               \VAR{Z}\STAR ) \leadsto \\&\quad
        \NAMEHYPER{../../Normal}{Flowing}{choice}
          ( \\&\quad\quad \NAMEREF{else}
                  ( \\&\quad\quad\quad \VAR{X}, \\&\quad\quad\quad
                         \NAMEREF{else-choice}
                          (  \VAR{W}\STAR, 
                                 \VAR{Y}, 
                                 \VAR{Z}\STAR ), \\&\quad\quad\quad
                         \NAMEREF{else}
                          (  \VAR{Y}, 
                                 \NAMEREF{else-choice}
                                  (  \VAR{W}\STAR, 
                                         \VAR{X}, 
                                         \VAR{Z}\STAR ) ) ) )
\\
  \KEY{Rule} \quad
    & \NAMEREF{else-choice}
        (  \VAR{X} ) \leadsto 
        \VAR{X}
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{check-true}(
                       \_ : \NAMEHYPER{../../../Values/Primitive}{Booleans}{booleans}) 
    :  \TO \NAMEHYPER{../../../Values/Primitive}{Null}{null-type} 
\\
  \KEY{Alias} \quad
  & \NAMEDECL{check} = \NAMEREF{check-true}
\end{align*}$$


  $$\SHADE{\NAMEREF{check-true}
           (  \VAR{X} )}$$ terminates normally if the value computed by $$\SHADE{\VAR{X}}$$ is $$\SHADE{\NAMEHYPER{../../../Values/Primitive}{Booleans}{true}}$$,
  and fails if it is $$\SHADE{\NAMEHYPER{../../../Values/Primitive}{Booleans}{false}}$$.


$$\begin{align*}
  \KEY{Rule} \quad
    & \NAMEREF{check-true}
        (  \NAMEHYPER{../../../Values/Primitive}{Booleans}{true} ) \leadsto 
        \NAMEHYPER{../../../Values/Primitive}{Null}{null-value}
\\
  \KEY{Rule} \quad
    & \NAMEREF{check-true}
        (  \NAMEHYPER{../../../Values/Primitive}{Booleans}{false} ) \leadsto 
        \NAMEREF{fail}
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{checked}(
                       \_ : (  \VAR{T} )\QUERY) 
    :  \TO \VAR{T} 
\end{align*}$$


  $$\SHADE{\NAMEREF{checked}
           (  \VAR{X} )}$$ fails when $$\SHADE{\VAR{X}}$$ gives the empty sequence of values $$\SHADE{(   \  )}$$,
  representing that an optional value has not been computed. It otherwise
  computes the same as $$\SHADE{\VAR{X}}$$.


$$\begin{align*}
  \KEY{Rule} \quad
    & \NAMEREF{checked}
        (  \VAR{V} : \VAR{T} ) \leadsto 
        \VAR{V}
\\
  \KEY{Rule} \quad
    & \NAMEREF{checked}
        (   \  ) \leadsto 
        \NAMEREF{fail}
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
[Failing.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Abnormal/Failing/Failing.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Computations/Abnormal/Failing
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Funcons-beta/Computations/Abnormal/Failing
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Abnormal/Failing/Failing.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}
