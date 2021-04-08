---
title: "Abrupting"
math: katex
parent: Abnormal
ancestor: Funcons-beta

---
[Funcons-beta] : [Abrupting.cbs] \| [PLAIN] \| [PDF]

{::comment}{% raw %}{:/}


----

### Abruptly terminating
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEREF{stuck} \\
  \KEY{Entity} \quad & \NAMEREF{abrupted} \\
  \KEY{Funcon} \quad & \NAMEREF{finalise-abrupting} \\
  \KEY{Funcon} \quad & \NAMEREF{abrupt} \\
  \KEY{Funcon} \quad & \NAMEREF{handle-abrupt} \\
  \KEY{Funcon} \quad & \NAMEREF{finally}
  \ ]
\end{align*}$$

$$\begin{align*}
  \KEY{Meta-variables} \quad
  & \VAR{T}, \VAR{T}', \VAR{T}'' <: \NAMEHYPER{../../../Values}{Value-Types}{values}
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{stuck} 
    :  \TO \NAMEHYPER{../../../Values}{Value-Types}{empty-type} 
\end{align*}$$


  $$\SHADE{\NAMEREF{stuck}}$$ does not have any computation. It is used to represent the result of
  a transition that causes the computation to terminate abruptly.


$$\begin{align*}
  \KEY{Entity} \quad
  & \_ \xrightarrow{\NAMEDECL{abrupted}(\_ : \NAMEHYPER{../../../Values}{Value-Types}{values}\QUERY)} \_
\end{align*}$$


  $$\SHADE{\NAMEREF{abrupted}
           (  \VAR{V} )}$$ in a label on a tranistion indicates abrupt termination for
  reason $$\SHADE{\VAR{V}}$$. $$\SHADE{\NAMEREF{abrupted}
           (   \  )}$$ indicates the absence of abrupt termination.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{finalise-abrupting}(
                       \VAR{X} :  \TO \VAR{T}) 
    :  \TO \VAR{T}  \mid \NAMEHYPER{../../../Values/Primitive}{Null}{null-type} \\&\quad
    \leadsto \NAMEREF{handle-abrupt}
               (  \VAR{X}, 
                      \NAMEHYPER{../../../Values/Primitive}{Null}{null-value} )
\end{align*}$$


  $$\SHADE{\NAMEREF{finalise-abrupting}
           (  \VAR{X} )}$$ handles abrupt termination of $$\SHADE{\VAR{X}}$$ for any reason.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{abrupt}(
                       \_ : \NAMEHYPER{../../../Values}{Value-Types}{values}) 
    :  \TO \NAMEHYPER{../../../Values}{Value-Types}{empty-type} 
\end{align*}$$


  $$\SHADE{\NAMEREF{abrupt}
           (  \VAR{V} )}$$ terminates abruptly for reason $$\SHADE{\VAR{V}}$$.


$$\begin{align*}
  \KEY{Rule} \quad
    &  \NAMEREF{abrupt}
                    (  \VAR{V} : \NAMEHYPER{../../../Values}{Value-Types}{values} ) \xrightarrow{\NAMEREF{abrupted}(  \VAR{V} )}_{} 
        \NAMEREF{stuck}
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{handle-abrupt}(
                       \_ : \VAR{T}' \TO \VAR{T}, \_ : \VAR{T}'' \TO \VAR{T}) 
    : \VAR{T}' \TO \VAR{T} 
\end{align*}$$


  $$\SHADE{\NAMEREF{handle-abrupt}
           (  \VAR{X}, 
                  \VAR{Y} )}$$ first evaluates $$\SHADE{\VAR{X}}$$. If $$\SHADE{\VAR{X}}$$ terminates normally with
  value $$\SHADE{\VAR{V}}$$, then $$\SHADE{\VAR{V}}$$ is returned and $$\SHADE{\VAR{Y}}$$ is ignored. If $$\SHADE{\VAR{X}}$$ terminates abruptly
  for reason $$\SHADE{\VAR{V}}$$, then $$\SHADE{\VAR{Y}}$$ is executed with $$\SHADE{\VAR{V}}$$ as $$\SHADE{\NAMEHYPER{../../Normal}{Giving}{given}}$$ value.

  $$\SHADE{\NAMEREF{handle-abrupt}
           (  \VAR{X}, 
                  \VAR{Y} )}$$ is associative, with $$\SHADE{\NAMEREF{abrupt}
           (  \NAMEHYPER{../../Normal}{Giving}{given} )}$$ as left and right
  unit. $$\SHADE{\NAMEREF{handle-abrupt}
           (  \VAR{X}, 
                  \NAMEHYPER{../.}{Failing}{else}
                   (  \VAR{Y}, 
                          \NAMEREF{abrupt}
                           (  \NAMEHYPER{../../Normal}{Giving}{given} ) ) )}$$ ensures propagation of 
  abrupt termination for the given reason if $$\SHADE{\VAR{Y}}$$ fails


$$\begin{align*}
  \KEY{Rule} \quad
    & \RULE{
      &  \VAR{X} \xrightarrow{\NAMEREF{abrupted}(   \  )}_{} 
          \VAR{X}'
      }{
      &  \NAMEREF{handle-abrupt}
                      (  \VAR{X}, 
                             \VAR{Y} ) \xrightarrow{\NAMEREF{abrupted}(   \  )}_{} 
          \NAMEREF{handle-abrupt}
            (  \VAR{X}', 
                   \VAR{Y} )
      }
\\
  \KEY{Rule} \quad
    & \RULE{
      &  \VAR{X} \xrightarrow{\NAMEREF{abrupted}(  \VAR{V} : \VAR{T}'' )}_{} 
          \VAR{X}'
      }{
      &  \NAMEREF{handle-abrupt}
                      (  \VAR{X}, 
                             \VAR{Y} ) \xrightarrow{\NAMEREF{abrupted}(   \  )}_{} 
          \NAMEHYPER{../../Normal}{Giving}{give}
            (  \VAR{V}, 
                   \VAR{Y} )
      }
\\
  \KEY{Rule} \quad
    & \NAMEREF{handle-abrupt}
        (  \VAR{V} : \VAR{T}, 
               \VAR{Y} ) \leadsto 
        \VAR{V}
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{finally}(
                       \_ :  \TO \VAR{T}, \_ :  \TO \NAMEHYPER{../../../Values/Primitive}{Null}{null-type}) 
    :  \TO \VAR{T} 
\end{align*}$$


  $$\SHADE{\NAMEREF{finally}
           (  \VAR{X}, 
                  \VAR{Y} )}$$ first executes $$\SHADE{\VAR{X}}$$. If $$\SHADE{\VAR{X}}$$ terminates normally with 
  value $$\SHADE{\VAR{V}}$$, then $$\SHADE{\VAR{Y}}$$ is executed before terminating normally with value $$\SHADE{\VAR{V}}$$.
  If $$\SHADE{\VAR{X}}$$ terminates abruptly for reason $$\SHADE{\VAR{V}}$$, then $$\SHADE{\VAR{Y}}$$ is executed before
  terminating abruptly with the same reason $$\SHADE{\VAR{V}}$$.


$$\begin{align*}
  \KEY{Rule} \quad
    & \RULE{
      &  \VAR{X} \xrightarrow{\NAMEREF{abrupted}(   \  )}_{} 
          \VAR{X}'
      }{
      &  \NAMEREF{finally}
                      (  \VAR{X}, 
                             \VAR{Y} ) \xrightarrow{\NAMEREF{abrupted}(   \  )}_{} 
          \NAMEREF{finally}
            (  \VAR{X}', 
                   \VAR{Y} )
      }
\\
  \KEY{Rule} \quad
    & \RULE{
      &  \VAR{X} \xrightarrow{\NAMEREF{abrupted}(  \VAR{V} : \NAMEHYPER{../../../Values}{Value-Types}{values} )}_{} 
          \VAR{X}'
      }{
      &  \NAMEREF{finally}
                      (  \VAR{X}, 
                             \VAR{Y} ) \xrightarrow{\NAMEREF{abrupted}(   \  )}_{} 
          \NAMEHYPER{../../Normal}{Flowing}{sequential}
            (  \VAR{Y}, 
                   \NAMEREF{abrupt}
                    (  \VAR{V} ) )
      }
\\
  \KEY{Rule} \quad
    & \NAMEREF{finally}
        (  \VAR{V} : \VAR{T}, 
               \VAR{Y} ) \leadsto 
        \NAMEHYPER{../../Normal}{Flowing}{sequential}
          (  \VAR{Y}, 
                 \VAR{V} )
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
[Abrupting.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Abnormal/Abrupting/Abrupting.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Computations/Abnormal/Abrupting
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Funcons-beta/Computations/Abnormal/Abrupting
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Abnormal/Abrupting/Abrupting.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Computations/Abnormal/Abrupting/Abrupting.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
