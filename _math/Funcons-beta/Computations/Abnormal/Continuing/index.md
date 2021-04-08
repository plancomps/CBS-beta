---
title: "Continuing"
math: katex
parent: Abnormal
ancestor: Funcons-beta

---
[Funcons-beta] : [Continuing.cbs] \| [PLAIN] \| [PDF]

{::comment}{% raw %}{:/}


----

### Continuing
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEREF{continuing} \\
  \KEY{Funcon} \quad & \NAMEREF{continued} \\
  \KEY{Funcon} \quad & \NAMEREF{finalise-continuing} \\
  \KEY{Funcon} \quad & \NAMEREF{continue} \\
  \KEY{Funcon} \quad & \NAMEREF{handle-continue}
  \ ]
\end{align*}$$

$$\begin{align*}
  \KEY{Meta-variables} \quad
  & \VAR{T} <: \NAMEHYPER{../../../Values}{Value-Types}{values}
\end{align*}$$

$$\begin{align*}
  \KEY{Datatype} \quad 
  \NAMEDECL{continuing} 
  \ ::= \ & \NAMEDECL{continued}
\end{align*}$$


  $$\SHADE{\NAMEREF{continued}}$$ is a reason for abrupt termination.


$$\begin{align*}
  \KEY{Funcon} \quad
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
  \KEY{Funcon} \quad
  & \NAMEDECL{continue} 
    :  \TO \NAMEHYPER{../../../Values}{Value-Types}{empty-type} \\&\quad
    \leadsto \NAMEHYPER{../.}{Abrupting}{abrupt}
               (  \NAMEREF{continued} )
\end{align*}$$


  $$\SHADE{\NAMEREF{continue}}$$ abruptly terminates all enclosing computations until it is handled.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{handle-continue}(
                       \_ :  \TO \NAMEHYPER{../../../Values/Primitive}{Null}{null-type}) 
    :  \TO \NAMEHYPER{../../../Values/Primitive}{Null}{null-type} 
\end{align*}$$


  $$\SHADE{\NAMEREF{handle-continue}
           (  \VAR{X} )}$$ terminates normally when $$\SHADE{\VAR{X}}$$ terminates abruptly for the
  reason $$\SHADE{\NAMEREF{continued}}$$.


$$\begin{align*}
  \KEY{Rule} \quad
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
  \KEY{Rule} \quad
    & \RULE{
      &  \VAR{X} \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}(  \NAMEREF{continued} )}_{} 
          \_
      }{
      &  \NAMEREF{handle-continue}
                      (  \VAR{X} ) \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}(   \  )}_{} 
          \NAMEHYPER{../../../Values/Primitive}{Null}{null-value}
      }
\\
  \KEY{Rule} \quad
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
  \KEY{Rule} \quad
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
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Abnormal/Continuing/Continuing.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Computations/Abnormal/Continuing/Continuing.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
