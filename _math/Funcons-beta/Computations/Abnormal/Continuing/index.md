---
layout: default
title: "Continuing"
math: katex
parent: Abnormal
ancestor: Funcons-beta

---

[Funcons-beta] : [Continuing.cbs]

### Continuing
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Datatype} ~ & \NAMEREF{continuing} \\
  \KEY{Funcon} ~ & \NAMEREF{continued} \\
  \KEY{Funcon} ~ & \NAMEREF{finalise-continuing} \\
  \KEY{Funcon} ~ & \NAMEREF{continue} \\
  \KEY{Funcon} ~ & \NAMEREF{handle-continue}
  ~ ]
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Meta-variables} ~ 
  & \VAR{T} <: \NAMEHYPER{../../../Values}{Value-Types}{values}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Datatype} ~ 
  \NAMEDECL{continuing}  
  ~ ::= ~ & \NAMEDECL{continued} 
\end{aligned}$$


  $$\SHADE{\NAMEREF{continued}}$$ is a reason for abrupt termination.


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{finalise-continuing}(\VAR{X} :  \TO \VAR{T}) :  \TO \VAR{T} \mid \NAMEHYPER{../../../Values/Primitive}{Null}{null-type} \\
  & \quad \leadsto \NAMEHYPER{../.}{Abrupting}{finalise-abrupting}
                     ( \VAR{X} )
\end{aligned}$$


  $$\SHADE{\NAMEREF{finalise-continuing}
           ( \VAR{X} )}$$ handles abrupt termination of $$\SHADE{\VAR{X}}$$ due to executing
  $$\SHADE{\NAMEREF{continue}}$$.


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{continue} :  \TO \NAMEHYPER{../../../Values}{Value-Types}{empty-type} \\
  & \quad \leadsto \NAMEHYPER{../.}{Abrupting}{abrupt}
                     ( \NAMEREF{continued} )
\end{aligned}$$


  $$\SHADE{\NAMEREF{continue}}$$ abruptly terminates all enclosing computations until it is handled.


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{handle-continue}(\_ :  \TO \NAMEHYPER{../../../Values/Primitive}{Null}{null-type}) :  \TO \NAMEHYPER{../../../Values/Primitive}{Null}{null-type}
\end{aligned}$$


  $$\SHADE{\NAMEREF{handle-continue}
           ( \VAR{X} )}$$ terminates normally when $$\SHADE{\VAR{X}}$$ terminates abruptly for the
  reason $$\SHADE{\NAMEREF{continued}}$$.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \RULE{
       \VAR{X} \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}(  ~  )}_{} 
        \VAR{X}'
      }{
      &  \NAMEREF{handle-continue}
                      ( \VAR{X} ) \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}(  ~  )}_{} 
          \NAMEREF{handle-continue}
            ( \VAR{X}' )
      }
\\
  \KEY{Rule} ~ 
    & \RULE{
       \VAR{X} \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}( \NAMEREF{continued} )}_{} 
        \_
      }{
      &  \NAMEREF{handle-continue}
                      ( \VAR{X} ) \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}(  ~  )}_{} 
          \NAMEHYPER{../../../Values/Primitive}{Null}{null-value}
      }
\\
  \KEY{Rule} ~ 
    & \RULE{
       \VAR{X} \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}( \VAR{V} : \mathop{\sim} \NAMEREF{continuing} )}_{} 
        \VAR{X}'
      }{
      &  \NAMEREF{handle-continue}
                      ( \VAR{X} ) \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}( \VAR{V} )}_{} 
          \NAMEREF{handle-continue}
            ( \VAR{X}' )
      }
\\
  \KEY{Rule} ~ 
    & \NAMEREF{handle-continue}
        ( \NAMEHYPER{../../../Values/Primitive}{Null}{null-value} ) \leadsto
        \NAMEHYPER{../../../Values/Primitive}{Null}{null-value}
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

[Continuing.cbs]: /CBS-beta/Funcons-beta/Computations/Abnormal/Continuing/Continuing.cbs
  "CBS SOURCE FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Computations/Abnormal/Continuing/Continuing.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
