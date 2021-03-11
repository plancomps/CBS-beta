---
layout: default
title: "Postponing"
math: katex
parent: Abnormal
ancestor: Unstable-Funcons-beta

---

[Unstable-Funcons-beta] : [Postponing.cbs]

### Postponing
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Entity} ~ & \NAMEREF{postponing} \\
  \KEY{Funcon} ~ & \NAMEREF{postpone} \\
  \KEY{Funcon} ~ & \NAMEREF{postpone-after-effect} \\
  \KEY{Funcon} ~ & \NAMEREF{after-effect}
  ~ ]
\end{aligned}$$


A funcon term can extend itself (e.g., with code to release the resources
allocated to it) using general funcons for postponed execution. When a step
from $$\SHADE{\VAR{X}}$$ to $$\SHADE{\VAR{X}'}$$ executes $$\SHADE{\NAMEREF{postpone}
           (\VAR{Y})}$$ (which computes $$\SHADE{\NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null}}$$),
the corresponding step of  $$\SHADE{\NAMEREF{postpone-after-effect}
           (\VAR{X})}$$ gives
$$\SHADE{\NAMEREF{postpone-after-effect}
           (\NAMEREF{after-effect}
              (\VAR{X}',    
               \VAR{Y}))}$$, so that normal termination
of $$\SHADE{\VAR{X}'}$$ is followed by the effect of $$\SHADE{\VAR{Y}}$$.

The control entity $$\SHADE{\NAMEREF{postponing}
           (\VAR{A})}$$ signals that the execution of the body
of the abstraction $$\SHADE{\VAR{A}}$$ is postponed:


$$\relax\begin{aligned}\relax
  \KEY{Entity} ~ 
  & \_ \xrightarrow{\NAMEDECL{postponing}(\_ : (\NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Generic}{abstractions}
                                                                 ( \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-type}))\QUERY)} \_
\end{aligned}$$


The funcon $$\SHADE{\NAMEREF{postpone}
           (\VAR{X})}$$ forms a closure from $$\SHADE{\VAR{X}}$$ and signals that its
execution is postponed:


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{postpone}(\_ :  \TO \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values}) :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-type}
\\
  \KEY{Rule} ~ 
    & \RULE{
      \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Giving}{given-value} (\VAR{V}) \vdash \NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Generic}{closure} ~
                    \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Giving}{give}
                      (\VAR{V},    
                       \VAR{X}) \xrightarrow{\NAMEREF{postponing}( ~ )}_{} \VAR{A}
      }{
      \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Giving}{given-value} (\VAR{V}) \vdash \NAMEREF{postpone}
                    (\VAR{X}) \xrightarrow{\NAMEREF{postponing}(\VAR{A})}_{} \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}
      }
\\
  \KEY{Rule} ~ 
    & \RULE{
      \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Giving}{given-value} ( ~ ) \vdash \NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Generic}{closure} ~
                    \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Giving}{no-given} ~
                      \VAR{X} \xrightarrow{\NAMEREF{postponing}( ~ )}_{} \VAR{A}
      }{
      \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Giving}{given-value} ( ~ ) \vdash \NAMEREF{postpone}
                    (\VAR{X}) \xrightarrow{\NAMEREF{postponing}(\VAR{A})}_{} \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}
      }
\end{aligned}$$


The funcon $$\SHADE{\NAMEREF{postpone-after-effect}
           (\VAR{X})}$$ handles each signal $$\SHADE{\NAMEREF{postponing}
           (\VAR{A})}$$
by adding it as an after-effect of $$\SHADE{\VAR{X}}$$:


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{postpone-after-effect}(\_ :  \TO \VAR{T}) :  \TO \VAR{T}
\\
  \KEY{Rule} ~ 
    & \RULE{
       \VAR{X} \xrightarrow{\NAMEREF{postponing}( ~ )}_{} \VAR{X}'
      }{
       \NAMEREF{postpone-after-effect}
                    (\VAR{X}) \xrightarrow{\NAMEREF{postponing}( ~ )}_{} \NAMEREF{postpone-after-effect}
                                                               (\VAR{X}')
      }
\\
  \KEY{Rule} ~ 
    & \RULE{
       \VAR{X} \xrightarrow{\NAMEREF{postponing}(\VAR{A})}_{} \VAR{X}'\\n\VAR{A} \leadsto \NAMEHYPER{../../../../Funcons-beta/Values/Abstraction}{Generic}{abstraction} ~
                                                 \VAR{Y}
      }{
       \NAMEREF{postpone-after-effect}
                    (\VAR{X}) \xrightarrow{\NAMEREF{postponing}( ~ )}_{} \NAMEREF{postpone-after-effect}
                                                               (\NAMEREF{after-effect}
                                                                  (\VAR{X}',    
                                                                   \VAR{Y}))
      }
\\
  \KEY{Rule} ~ 
    & \NAMEREF{postpone-after-effect}
        (\VAR{V} : \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values}) \leadsto \VAR{V}
\end{aligned}$$


The funcon $$\SHADE{\NAMEREF{after-effect}
           (\VAR{X},   
            \VAR{Y})}$$ first executes $$\SHADE{\VAR{X}}$$. If $$\SHADE{\VAR{X}}$$ computes a value $$\SHADE{\VAR{V}}$$,
it then executes $$\SHADE{\VAR{Y}}$$, and computes $$\SHADE{\VAR{V}}$$:


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{after-effect}(\VAR{X} :  \TO \VAR{T}, \VAR{Y} :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-type}) :  \TO \VAR{T} \\
  & \quad \leadsto \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Giving}{give}
                     (\VAR{X}, \\&\quad 
                      \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                        (\VAR{Y}, \\&\quad \quad 
                         \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Giving}{given}))
\end{aligned}$$



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


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[Postponing.cbs]: /CBS-beta/Unstable-Funcons-beta/Computations/Abnormal/Postponing/Postponing.cbs
  "CBS SOURCE FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Computations/Abnormal/Postponing/Postponing.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
