---
title: "Throwing"
math: katex
parent: Abnormal
ancestor: Funcons-beta

---
[Funcons-beta] : [Throwing.cbs] \| [PLAIN] \| [PDF]

{::comment}{% raw %}{:/}


----

### Throwing
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEREF{throwing} \\
  \KEY{Funcon} \quad & \NAMEREF{thrown} \\
  \KEY{Funcon} \quad & \NAMEREF{finalise-throwing} \\
  \KEY{Funcon} \quad & \NAMEREF{throw} \\
  \KEY{Funcon} \quad & \NAMEREF{handle-thrown} \\
  \KEY{Funcon} \quad & \NAMEREF{handle-recursively} \\
  \KEY{Funcon} \quad & \NAMEREF{catch-else-throw}
  \ ]
\end{align*}$$

$$\begin{align*}
  \KEY{Meta-variables} \quad
  & \VAR{R}, \VAR{S}, \VAR{T}, \VAR{T}', \VAR{T}'' <: \NAMEHYPER{../../../Values}{Value-Types}{values}
\end{align*}$$

$$\begin{align*}
  \KEY{Datatype} \quad 
  \NAMEDECL{throwing} 
  \ ::= \ & \NAMEDECL{thrown}(
                               \_ : \NAMEHYPER{../../../Values}{Value-Types}{values})
\end{align*}$$


  $$\SHADE{\NAMEREF{thrown}
           (  \VAR{V} )}$$ is a reason for abrupt termination.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{finalise-throwing}(
                       \VAR{X} :  \TO \VAR{T}) 
    :  \TO \VAR{T}  \mid \NAMEHYPER{../../../Values/Primitive}{Null}{null-type} \\&\quad
    \leadsto \NAMEHYPER{../.}{Abrupting}{finalise-abrupting}
               (  \VAR{X} )
\end{align*}$$


  $$\SHADE{\NAMEREF{finalise-throwing}
           (  \VAR{X} )}$$ handles abrupt termination of $$\SHADE{\VAR{X}}$$ due to
  executing $$\SHADE{\NAMEREF{throw}
           (  \VAR{V} )}$$.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{throw}(
                       \VAR{V} : \VAR{T}) 
    :  \TO \NAMEHYPER{../../../Values}{Value-Types}{empty-type} \\&\quad
    \leadsto \NAMEHYPER{../.}{Abrupting}{abrupt}
               (  \NAMEREF{thrown}
                       (  \VAR{V} ) )
\end{align*}$$


  $$\SHADE{\NAMEREF{throw}
           (  \VAR{V} )}$$ abruptly terminates all enclosing computations uTil it is handled.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{handle-thrown}(
                       \_ : \VAR{T}' \TO \VAR{T}, \_ : \VAR{T}'' \TO \VAR{T}) 
    : \VAR{T}' \TO \VAR{T} 
\end{align*}$$


  $$\SHADE{\NAMEREF{handle-thrown}
           (  \VAR{X}, 
                  \VAR{Y} )}$$ first evaluates $$\SHADE{\VAR{X}}$$. If $$\SHADE{\VAR{X}}$$ terminates normally with
  value $$\SHADE{\VAR{V}}$$, then $$\SHADE{\VAR{V}}$$ is returned and $$\SHADE{\VAR{Y}}$$ is ignored. If $$\SHADE{\VAR{X}}$$ terminates abruptly
  with a thrown eTity having value $$\SHADE{\VAR{V}}$$, then $$\SHADE{\VAR{Y}}$$ is executed with $$\SHADE{\VAR{V}}$$ as
  $$\SHADE{\NAMEHYPER{../../Normal}{Giving}{given}}$$ value.
  
  $$\SHADE{\NAMEREF{handle-thrown}
           (  \VAR{X}, 
                  \VAR{Y} )}$$ is associative, with $$\SHADE{\NAMEREF{throw}
           (  \NAMEHYPER{../../Normal}{Giving}{given} )}$$ as unit.
  $$\SHADE{\NAMEREF{handle-thrown}
           (  \VAR{X}, 
                  \NAMEHYPER{../.}{Failing}{else}
                   (  \VAR{Y}, 
                          \NAMEREF{throw}
                           (  \NAMEHYPER{../../Normal}{Giving}{given} ) ) )}$$ ensures that if $$\SHADE{\VAR{Y}}$$ fails, the
  thrown value is re-thrown.


$$\begin{align*}
  \KEY{Rule} \quad
    & \RULE{
      &  \VAR{X} \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}(   \  )}_{} 
          \VAR{X}'
      }{
      &  \NAMEREF{handle-thrown}
                      (  \VAR{X}, 
                             \VAR{Y} ) \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}(   \  )}_{} 
          \NAMEREF{handle-thrown}
            (  \VAR{X}', 
                   \VAR{Y} )
      }
\\
  \KEY{Rule} \quad
    & \RULE{
      &  \VAR{X} \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}(  \NAMEREF{thrown}
                                                                                  (  \VAR{V}'' : \NAMEHYPER{../../../Values}{Value-Types}{values} ) )}_{} 
          \VAR{X}'
      }{
      &  \NAMEREF{handle-thrown}
                      (  \VAR{X}, 
                             \VAR{Y} ) \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}(   \  )}_{} 
          \NAMEHYPER{../../Normal}{Giving}{give}
            (  \VAR{V}'', 
                   \VAR{Y} )
      }
\\
  \KEY{Rule} \quad
    & \RULE{
      &  \VAR{X} \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}(  \VAR{V}' : \mathop{\sim} \NAMEREF{throwing} )}_{} 
          \VAR{X}'
      }{
      &  \NAMEREF{handle-thrown}
                      (  \VAR{X}, 
                             \VAR{Y} ) \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}(  \VAR{V}' )}_{} 
          \NAMEREF{handle-thrown}
            (  \VAR{X}', 
                   \VAR{Y} )
      }
\\
  \KEY{Rule} \quad
    & \NAMEREF{handle-thrown}
        (  \VAR{V} : \VAR{T}, 
               \VAR{Y} ) \leadsto 
        \VAR{V}
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{handle-recursively}(
                       \VAR{X} : \VAR{S} \TO \VAR{T}, \VAR{Y} : \VAR{R} \TO \VAR{T}) 
    : \VAR{S} \TO \VAR{T} \\&\quad
    \leadsto \NAMEREF{handle-thrown}
               (  \VAR{X}, 
                      \NAMEHYPER{../.}{Failing}{else}
                       (  \NAMEREF{handle-recursively}
                               (  \VAR{Y}, 
                                      \VAR{Y} ), 
                              \NAMEREF{throw}
                               (  \NAMEHYPER{../../Normal}{Giving}{given} ) ) )
\end{align*}$$


  $$\SHADE{\NAMEREF{handle-recursively}
           (  \VAR{X}, 
                  \VAR{Y} )}$$ behaves similarly to $$\SHADE{\NAMEREF{handle-thrown}
           (  \VAR{X}, 
                  \VAR{Y} )}$$, except
  that another copy of the handler attempts to handle any values thrown by $$\SHADE{\VAR{Y}}$$.
  Thus, many thrown values may get handled by the same handler. 


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{catch-else-throw}(
                       \VAR{P} : \NAMEHYPER{../../../Values}{Value-Types}{values}, \VAR{Y} :  \TO \VAR{T}) 
    :  \TO \VAR{T} \\&\quad
    \leadsto \NAMEHYPER{../.}{Failing}{else}
               (  \NAMEHYPER{../../../Values/Abstraction}{Patterns}{case-match}
                       (  \VAR{P}, 
                              \VAR{Y} ), 
                      \NAMEREF{throw}
                       (  \NAMEHYPER{../../Normal}{Giving}{given} ) )
\end{align*}$$


   $$\SHADE{\NAMEREF{handle-thrown}
           (  \VAR{X}, 
                  \NAMEREF{catch-else-throw}
                   (  \VAR{P}, 
                          \VAR{Y} ) )}$$ handles those values thrown by $$\SHADE{\VAR{X}}$$
   that match pattern $$\SHADE{\VAR{P}}$$.  Other thrown values are re-thrown.  
 



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
[Throwing.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Abnormal/Throwing/Throwing.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Computations/Abnormal/Throwing
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Funcons-beta/Computations/Abnormal/Throwing
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Abnormal/Throwing/Throwing.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Computations/Abnormal/Throwing/Throwing.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
