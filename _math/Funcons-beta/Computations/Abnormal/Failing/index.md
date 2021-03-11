---
layout: default
title: "Failing"
math: katex
parent: Abnormal
ancestor: Funcons-beta

---

[Funcons-beta] : [Failing.cbs]

### Failing
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Datatype} ~ & \NAMEREF{failing} \\
  \KEY{Funcon} ~ & \NAMEREF{failed} \\
  \KEY{Funcon} ~ & \NAMEREF{finalise-failing} \\
  \KEY{Funcon} ~ & \NAMEREF{fail} \\
  \KEY{Funcon} ~ & \NAMEREF{else} \\
  \KEY{Funcon} ~ & \NAMEREF{else-choice} \\
  \KEY{Funcon} ~ & \NAMEREF{checked} \\
  \KEY{Funcon} ~ & \NAMEREF{check-true}
  ~ ]
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Meta-variables} ~ 
  & \VAR{T} <: \NAMEHYPER{../../../Values}{Value-Types}{values}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Datatype} ~ 
  \NAMEDECL{failing}  
  ~ ::= ~ & \NAMEDECL{failed} 
\end{aligned}$$


  $$\SHADE{\NAMEREF{failed}}$$ is a reason for abrupt termination.


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{finalise-failing}(\VAR{X} :  \TO \VAR{T}) :  \TO \VAR{T} \mid \NAMEHYPER{../../../Values/Primitive}{Null}{null-type} \\
  & \quad \leadsto \NAMEHYPER{../.}{Abrupting}{finalise-abrupting}
                     ( \VAR{X} )
\end{aligned}$$


  $$\SHADE{\NAMEREF{finalise-failing}
           ( \VAR{X} )}$$ handles abrupt termination of $$\SHADE{\VAR{X}}$$ due to executing $$\SHADE{\NAMEREF{fail}}$$.


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{fail} :  \TO \NAMEHYPER{../../../Values}{Value-Types}{empty-type} \\
  & \quad \leadsto \NAMEHYPER{../.}{Abrupting}{abrupt}
                     ( \NAMEREF{failed} )
\end{aligned}$$


  $$\SHADE{\NAMEREF{fail}}$$ abruptly terminates all enclosing computations until it is handled.


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{else}(\_ :  \TO \VAR{T}, \_ : (  \TO \VAR{T} )\PLUS) :  \TO \VAR{T}
\end{aligned}$$


  $$\SHADE{\NAMEREF{else}
           ( \VAR{X}\SUB{1},   
             \VAR{X}\SUB{2},   
             \cdots )}$$ executes the arguments in turn until either some
  $$\SHADE{\VAR{Xi}}$$ does *not* fail, or all arguments $$\SHADE{\VAR{Xi}}$$ have been executed.
  The last argument executed determines the result.
  $$\SHADE{\NAMEREF{else}
           ( \VAR{X},   
             \VAR{Y} )}$$ is associative, with unit $$\SHADE{\NAMEREF{fail}}$$.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \RULE{
      &  \VAR{X} \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}(  ~  )}_{} 
          \VAR{X}'
      }{
      &  \NAMEREF{else}
                      ( \VAR{X},   
                        \VAR{Y} ) \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}(  ~  )}_{} 
          \NAMEREF{else}
            ( \VAR{X}',   
              \VAR{Y} )
      }
\\
  \KEY{Rule} ~ 
    & \RULE{
      &  \VAR{X} \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}( \NAMEREF{failed} )}_{} 
          \_
      }{
      &  \NAMEREF{else}
                      ( \VAR{X},   
                        \VAR{Y} ) \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}(  ~  )}_{} 
          \VAR{Y}
      }
\\
  \KEY{Rule} ~ 
    & \RULE{
      &  \VAR{X} \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}( \VAR{V} : \mathop{\sim} \NAMEREF{failing} )}_{} 
          \VAR{X}'
      }{
      &  \NAMEREF{else}
                      ( \VAR{X},   
                        \VAR{Y} ) \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}( \VAR{V} )}_{} 
          \NAMEREF{else}
            ( \VAR{X}',   
              \VAR{Y} )
      }
\\
  \KEY{Rule} ~ 
    & \NAMEREF{else}
        ( \VAR{V} : \VAR{T},   
          \VAR{Y} ) \leadsto
        \VAR{V}
\\
  \KEY{Rule} ~ 
    & \NAMEREF{else}
        ( \VAR{X},   
          \VAR{Y},   
          \VAR{Z}\PLUS ) \leadsto
        \NAMEREF{else}
          ( \VAR{X},   
            \NAMEREF{else}
              ( \VAR{Y},    
                \VAR{Z}\PLUS ) )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{else-choice}(\_ : (  \TO \VAR{T} )\PLUS) :  \TO \VAR{T}
\end{aligned}$$


  $$\SHADE{\NAMEREF{else-choice}
           ( \VAR{X},   
             \cdots )}$$ executes the arguments in any order until either some
  $$\SHADE{\VAR{Xi}}$$ does *not* fail, or all arguments $$\SHADE{\VAR{Xi}}$$ have been executed.
  The last argument executed determines the result.
  $$\SHADE{\NAMEREF{else}
           ( \VAR{X},   
             \VAR{Y} )}$$ is associative and commutative, with unit $$\SHADE{\NAMEREF{fail}}$$.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \NAMEREF{else-choice}
        ( \VAR{W}\STAR,   
          \VAR{X},   
          \VAR{Y},   
          \VAR{Z}\STAR ) \leadsto
        \NAMEHYPER{../../Normal}{Flowing}{choice}
          ( \NAMEREF{else}
              ( \VAR{X},    
                \NAMEREF{else-choice}
                  ( \VAR{W}\STAR,     
                    \VAR{Y},     
                    \VAR{Z}\STAR ),    
                \NAMEREF{else}
                  ( \VAR{Y},     
                    \NAMEREF{else-choice}
                      ( \VAR{W}\STAR,      
                        \VAR{X},      
                        \VAR{Z}\STAR ) ) ) )
\\
  \KEY{Rule} ~ 
    & \NAMEREF{else-choice}
        ( \VAR{X} ) \leadsto
        \VAR{X}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{check-true}(\_ : \NAMEHYPER{../../../Values/Primitive}{Booleans}{booleans}) :  \TO \NAMEHYPER{../../../Values/Primitive}{Null}{null-type}
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{check} = \NAMEREF{check-true}
\end{aligned}$$


  $$\SHADE{\NAMEREF{check-true}
           ( \VAR{X} )}$$ terminates normally if the value computed by $$\SHADE{\VAR{X}}$$ is $$\SHADE{\NAMEHYPER{../../../Values/Primitive}{Booleans}{true}}$$,
  and fails if it is $$\SHADE{\NAMEHYPER{../../../Values/Primitive}{Booleans}{false}}$$.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \NAMEREF{check-true}
        ( \NAMEHYPER{../../../Values/Primitive}{Booleans}{true} ) \leadsto
        \NAMEHYPER{../../../Values/Primitive}{Null}{null-value}
\\
  \KEY{Rule} ~ 
    & \NAMEREF{check-true}
        ( \NAMEHYPER{../../../Values/Primitive}{Booleans}{false} ) \leadsto
        \NAMEREF{fail}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{checked}(\_ : ( \VAR{T} )\QUERY) :  \TO \VAR{T}
\end{aligned}$$


  $$\SHADE{\NAMEREF{checked}
           ( \VAR{X} )}$$ fails when $$\SHADE{\VAR{X}}$$ gives the empty sequence of values $$\SHADE{(  ~  )}$$,
  representing that an optional value has not been computed. It otherwise
  computes the same as $$\SHADE{\VAR{X}}$$.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \NAMEREF{checked}
        ( \VAR{V} : \VAR{T} ) \leadsto
        \VAR{V}
\\
  \KEY{Rule} ~ 
    & \NAMEREF{checked}
        (  ~  ) \leadsto
        \NAMEREF{fail}
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

[Failing.cbs]: /CBS-beta/Funcons-beta/Computations/Abnormal/Failing/Failing.cbs
  "CBS SOURCE FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Computations/Abnormal/Failing/Failing.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
