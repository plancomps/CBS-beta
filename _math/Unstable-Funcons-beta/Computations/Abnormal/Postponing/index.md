---
title: "Postponing"
math: katex
parent: Abnormal
ancestor: Unstable-Funcons-beta

---
[Unstable-Funcons-beta] : [Postponing.cbs] \| [PLAIN] \| [PDF]

{::comment}{% raw %}{:/}


----

### Postponing
               


$$\begin{align*}
  [ \
  \KEY{Entity} \quad & \NAMEREF{postponing} \\
  \KEY{Funcon} \quad & \NAMEREF{postpone} \\
  \KEY{Funcon} \quad & \NAMEREF{postpone-after-effect} \\
  \KEY{Funcon} \quad & \NAMEREF{after-effect}
  \ ]
\end{align*}$$


A funcon term can extend itself (e.g., with code to release the resources
allocated to it) using general funcons for postponed execution. When a step
from $$\SHADE{\VAR{X}}$$ to $$\SHADE{\VAR{X}'}$$ executes $$\SHADE{\NAMEREF{postpone}
           (  \VAR{Y} )}$$ (which computes $$\SHADE{\NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null}}$$),
the corresponding step of  $$\SHADE{\NAMEREF{postpone-after-effect}
           (  \VAR{X} )}$$ gives
$$\SHADE{\NAMEREF{postpone-after-effect}
           (  \NAMEREF{after-effect}
                   (  \VAR{X}', 
                          \VAR{Y} ) )}$$, so that normal termination
of $$\SHADE{\VAR{X}'}$$ is followed by the effect of $$\SHADE{\VAR{Y}}$$.

The control entity $$\SHADE{\NAMEREF{postponing}
           (  \VAR{A} )}$$ signals that the execution of the body
of the abstraction $$\SHADE{\VAR{A}}$$ is postponed:


$$\begin{align*}
  \KEY{Entity} \quad
  & \_ \xrightarrow{\NAMEDECL{postponing}(\_ : (  \NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Generic}{abstractions}
                                                                      (   \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-type} ) )\QUERY)} \_
\end{align*}$$


The funcon $$\SHADE{\NAMEREF{postpone}
           (  \VAR{X} )}$$ forms a closure from $$\SHADE{\VAR{X}}$$ and signals that its
execution is postponed:


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{postpone}(
                       \_ :  \TO \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values}) 
    :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-type} 
\\
  \KEY{Rule} \quad
    & \RULE{
      & \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Giving}{given-value} (  \VAR{V} ) \vdash \NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Generic}{closure} \ 
                      \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Giving}{give}
                        (  \VAR{V}, 
                               \VAR{X} ) \xrightarrow{\NAMEREF{postponing}(   \  )}_{} 
          \VAR{A}
      }{
      & \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Giving}{given-value} (  \VAR{V} ) \vdash \NAMEREF{postpone}
                      (  \VAR{X} ) \xrightarrow{\NAMEREF{postponing}(  \VAR{A} )}_{} 
          \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}
      }
\\
  \KEY{Rule} \quad
    & \RULE{
      & \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Giving}{given-value} (   \  ) \vdash \NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Generic}{closure} \ 
                      \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Giving}{no-given} \ 
                        \VAR{X} \xrightarrow{\NAMEREF{postponing}(   \  )}_{} 
          \VAR{A}
      }{
      & \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Giving}{given-value} (   \  ) \vdash \NAMEREF{postpone}
                      (  \VAR{X} ) \xrightarrow{\NAMEREF{postponing}(  \VAR{A} )}_{} 
          \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}
      }
\end{align*}$$


The funcon $$\SHADE{\NAMEREF{postpone-after-effect}
           (  \VAR{X} )}$$ handles each signal $$\SHADE{\NAMEREF{postponing}
           (  \VAR{A} )}$$
by adding it as an after-effect of $$\SHADE{\VAR{X}}$$:


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{postpone-after-effect}(
                       \_ :  \TO \VAR{T}) 
    :  \TO \VAR{T} 
\\
  \KEY{Rule} \quad
    & \RULE{
      &  \VAR{X} \xrightarrow{\NAMEREF{postponing}(   \  )}_{} 
          \VAR{X}'
      }{
      &  \NAMEREF{postpone-after-effect}
                      (  \VAR{X} ) \xrightarrow{\NAMEREF{postponing}(   \  )}_{} \\&\quad
          \NAMEREF{postpone-after-effect}
            (  \VAR{X}' )
      }
\\
  \KEY{Rule} \quad
    & \RULE{
      &  \VAR{X} \xrightarrow{\NAMEREF{postponing}(  \VAR{A} )}_{} 
          \VAR{X}'\\&
        \VAR{A} \leadsto 
          \NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Generic}{abstraction} \ 
            \VAR{Y}
      }{
      &  \NAMEREF{postpone-after-effect}
                      (  \VAR{X} ) \xrightarrow{\NAMEREF{postponing}(   \  )}_{} \\&\quad
          \NAMEREF{postpone-after-effect}
            (  \NAMEREF{after-effect}
                    (  \VAR{X}', 
                           \VAR{Y} ) )
      }
\\
  \KEY{Rule} \quad
    & \NAMEREF{postpone-after-effect}
        (  \VAR{V} : \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values} ) \leadsto 
        \VAR{V}
\end{align*}$$


The funcon $$\SHADE{\NAMEREF{after-effect}
           (  \VAR{X}, 
                  \VAR{Y} )}$$ first executes $$\SHADE{\VAR{X}}$$. If $$\SHADE{\VAR{X}}$$ computes a value $$\SHADE{\VAR{V}}$$,
it then executes $$\SHADE{\VAR{Y}}$$, and computes $$\SHADE{\VAR{V}}$$:


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{after-effect}(
                       \VAR{X} :  \TO \VAR{T}, \VAR{Y} :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-type}) 
    :  \TO \VAR{T} \\&\quad
    \leadsto \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Giving}{give}
               (  \VAR{X}, 
                      \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                       (  \VAR{Y}, 
                              \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Giving}{given} ) )
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
[Postponing.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Funcons-beta/Computations/Abnormal/Postponing/Postponing.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Unstable-Funcons-beta/Computations/Abnormal/Postponing
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Unstable-Funcons-beta/Computations/Abnormal/Postponing
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Funcons-beta/Computations/Abnormal/Postponing/Postponing.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Computations/Abnormal/Postponing/Postponing.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
