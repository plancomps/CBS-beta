---
layout: default
title: "Abrupting"
math: katex
parent: Abnormal
ancestor: Funcons-beta

---

[Funcons-beta] : [Abrupting.cbs]

### Abruptly terminating
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Funcon} ~ & \NAMEREF{stuck} \\
  \KEY{Entity} ~ & \NAMEREF{abrupted} \\
  \KEY{Funcon} ~ & \NAMEREF{finalise-abrupting} \\
  \KEY{Funcon} ~ & \NAMEREF{abrupt} \\
  \KEY{Funcon} ~ & \NAMEREF{handle-abrupt} \\
  \KEY{Funcon} ~ & \NAMEREF{finally}
  ~ ]
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Meta-variables} ~ 
  & \VAR{T}, \VAR{T}', \VAR{T}'' <: \NAMEHYPER{../../../Values}{Value-Types}{values}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{stuck} :  \TO \NAMEHYPER{../../../Values}{Value-Types}{empty-type}
\end{aligned}$$


  $$\SHADE{\NAMEREF{stuck}}$$ does not have any computation. It is used to represent the result of
  a transition that causes the computation to terminate abruptly.


$$\relax\begin{aligned}\relax
  \KEY{Entity} ~ 
  & \_ \xrightarrow{\NAMEDECL{abrupted}(\_ : \NAMEHYPER{../../../Values}{Value-Types}{values}\QUERY)} \_
\end{aligned}$$


  $$\SHADE{\NAMEREF{abrupted}
           ( \VAR{V} )}$$ in a label on a tranistion indicates abrupt termination for
  reason $$\SHADE{\VAR{V}}$$. $$\SHADE{\NAMEREF{abrupted}
           (  ~  )}$$ indicates the absence of abrupt termination.


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{finalise-abrupting}(\VAR{X} :  \TO \VAR{T}) :  \TO \VAR{T} \mid \NAMEHYPER{../../../Values/Primitive}{Null}{null-type} \\
  & \quad \leadsto \NAMEREF{handle-abrupt}
                     ( \VAR{X}, \\&\quad \quad \quad \quad 
                       \NAMEHYPER{../../../Values/Primitive}{Null}{null-value} )
\end{aligned}$$


  $$\SHADE{\NAMEREF{finalise-abrupting}
           ( \VAR{X} )}$$ handles abrupt termination of $$\SHADE{\VAR{X}}$$ for any reason.


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{abrupt}(\_ : \NAMEHYPER{../../../Values}{Value-Types}{values}) :  \TO \NAMEHYPER{../../../Values}{Value-Types}{empty-type}
\end{aligned}$$


  $$\SHADE{\NAMEREF{abrupt}
           ( \VAR{V} )}$$ terminates abruptly for reason $$\SHADE{\VAR{V}}$$.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    &  \NAMEREF{abrupt}
                    ( \VAR{V} : \NAMEHYPER{../../../Values}{Value-Types}{values} ) \xrightarrow{\NAMEREF{abrupted}( \VAR{V} )}_{} 
        \NAMEREF{stuck}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{handle-abrupt}(\_ : \VAR{T}' \TO \VAR{T}, \_ : \VAR{T}'' \TO \VAR{T}) : \VAR{T}' \TO \VAR{T}
\end{aligned}$$


  $$\SHADE{\NAMEREF{handle-abrupt}
           ( \VAR{X},   
             \VAR{Y} )}$$ first evaluates $$\SHADE{\VAR{X}}$$. If $$\SHADE{\VAR{X}}$$ terminates normally with
  value $$\SHADE{\VAR{V}}$$, then $$\SHADE{\VAR{V}}$$ is returned and $$\SHADE{\VAR{Y}}$$ is ignored. If $$\SHADE{\VAR{X}}$$ terminates abruptly
  for reason $$\SHADE{\VAR{V}}$$, then $$\SHADE{\VAR{Y}}$$ is executed with $$\SHADE{\VAR{V}}$$ as $$\SHADE{\NAMEHYPER{../../Normal}{Giving}{given}}$$ value.

  $$\SHADE{\NAMEREF{handle-abrupt}
           ( \VAR{X},   
             \VAR{Y} )}$$ is associative, with $$\SHADE{\NAMEREF{abrupt}
           ( \NAMEHYPER{../../Normal}{Giving}{given} )}$$ as left and right
  unit. $$\SHADE{\NAMEREF{handle-abrupt}
           ( \VAR{X},   
             \NAMEHYPER{../.}{Failing}{else}
               ( \VAR{Y},    
                 \NAMEREF{abrupt}
                   ( \NAMEHYPER{../../Normal}{Giving}{given} ) ) )}$$ ensures propagation of 
  abrupt termination for the given reason if $$\SHADE{\VAR{Y}}$$ fails


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \RULE{
       \VAR{X} \xrightarrow{\NAMEREF{abrupted}(  ~  )}_{} 
        \VAR{X}'
      }{
      &  \NAMEREF{handle-abrupt}
                      ( \VAR{X},   
                        \VAR{Y} ) \xrightarrow{\NAMEREF{abrupted}(  ~  )}_{} 
          \NAMEREF{handle-abrupt}
            ( \VAR{X}',   
              \VAR{Y} )
      }
\\
  \KEY{Rule} ~ 
    & \RULE{
       \VAR{X} \xrightarrow{\NAMEREF{abrupted}( \VAR{V} : \VAR{T}'' )}_{} 
        \VAR{X}'
      }{
      &  \NAMEREF{handle-abrupt}
                      ( \VAR{X},   
                        \VAR{Y} ) \xrightarrow{\NAMEREF{abrupted}(  ~  )}_{} 
          \NAMEHYPER{../../Normal}{Giving}{give}
            ( \VAR{V},   
              \VAR{Y} )
      }
\\
  \KEY{Rule} ~ 
    & \NAMEREF{handle-abrupt}
        ( \VAR{V} : \VAR{T},   
          \VAR{Y} ) \leadsto
        \VAR{V}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{finally}(\_ :  \TO \VAR{T}, \_ :  \TO \NAMEHYPER{../../../Values/Primitive}{Null}{null-type}) :  \TO \VAR{T}
\end{aligned}$$


  $$\SHADE{\NAMEREF{finally}
           ( \VAR{X},   
             \VAR{Y} )}$$ first executes $$\SHADE{\VAR{X}}$$. If $$\SHADE{\VAR{X}}$$ terminates normally with 
  value $$\SHADE{\VAR{V}}$$, then $$\SHADE{\VAR{Y}}$$ is executed before terminating normally with value $$\SHADE{\VAR{V}}$$.
  If $$\SHADE{\VAR{X}}$$ terminates abruptly for reason $$\SHADE{\VAR{V}}$$, then $$\SHADE{\VAR{Y}}$$ is executed before
  terminating abruptly with the same reason $$\SHADE{\VAR{V}}$$.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \RULE{
       \VAR{X} \xrightarrow{\NAMEREF{abrupted}(  ~  )}_{} 
        \VAR{X}'
      }{
      &  \NAMEREF{finally}
                      ( \VAR{X},   
                        \VAR{Y} ) \xrightarrow{\NAMEREF{abrupted}(  ~  )}_{} 
          \NAMEREF{finally}
            ( \VAR{X}',   
              \VAR{Y} )
      }
\\
  \KEY{Rule} ~ 
    & \RULE{
       \VAR{X} \xrightarrow{\NAMEREF{abrupted}( \VAR{V} : \NAMEHYPER{../../../Values}{Value-Types}{values} )}_{} 
        \VAR{X}'
      }{
      &  \NAMEREF{finally}
                      ( \VAR{X},   
                        \VAR{Y} ) \xrightarrow{\NAMEREF{abrupted}(  ~  )}_{} 
          \NAMEHYPER{../../Normal}{Flowing}{sequential}
            ( \VAR{Y},   
              \NAMEREF{abrupt}
                ( \VAR{V} ) )
      }
\\
  \KEY{Rule} ~ 
    & \NAMEREF{finally}
        ( \VAR{V} : \VAR{T},   
          \VAR{Y} ) \leadsto
        \NAMEHYPER{../../Normal}{Flowing}{sequential}
          ( \VAR{Y},   
            \VAR{V} )
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

[Abrupting.cbs]: /CBS-beta/Funcons-beta/Computations/Abnormal/Abrupting/Abrupting.cbs
  "CBS SOURCE FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Computations/Abnormal/Abrupting/Abrupting.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
