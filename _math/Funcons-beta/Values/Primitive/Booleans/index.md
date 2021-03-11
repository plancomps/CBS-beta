---
layout: default
title: "Booleans"
math: katex
parent: Primitive
ancestor: Funcons-beta

---

[Funcons-beta] : [Booleans.cbs]

### Booleans
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Datatype} ~ & \NAMEREF{booleans} \\
  \KEY{Alias} ~ & \NAMEREF{bools} \\
  \KEY{Funcon} ~ & \NAMEREF{true} \\
  \KEY{Funcon} ~ & \NAMEREF{false} \\
  \KEY{Funcon} ~ & \NAMEREF{not} \\
  \KEY{Funcon} ~ & \NAMEREF{implies} \\
  \KEY{Funcon} ~ & \NAMEREF{and} \\
  \KEY{Funcon} ~ & \NAMEREF{or} \\
  \KEY{Funcon} ~ & \NAMEREF{exclusive-or} \\
  \KEY{Alias} ~ & \NAMEREF{xor}
  ~ ]
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Datatype} ~ 
  \NAMEDECL{booleans}  
  ~ ::= ~ & 
  \NAMEDECL{true}  \\
  ~ \mid ~ & \NAMEDECL{false} 
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Alias} ~ 
  & \NAMEDECL{bools} = \NAMEREF{booleans}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{not}(\_ : \NAMEREF{booleans}) :  \TO \NAMEREF{booleans}
\end{aligned}$$


  $$\SHADE{\NAMEREF{not}
           ( \VAR{B} )}$$   is logical negation.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \NAMEREF{not}
        ( \NAMEREF{false} ) \leadsto
        \NAMEREF{true}
\\
  \KEY{Rule} ~ 
    & \NAMEREF{not}
        ( \NAMEREF{true} ) \leadsto
        \NAMEREF{false}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{implies}(\_ : \NAMEREF{booleans}, \_ : \NAMEREF{booleans}) :  \TO \NAMEREF{booleans}
\end{aligned}$$


  $$\SHADE{\NAMEREF{implies}
           ( \VAR{B}\SUB{1},   
             \VAR{B}\SUB{2} )}$$ is logical implication.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \NAMEREF{implies}
        ( \NAMEREF{false},   
          \NAMEREF{false} ) \leadsto
        \NAMEREF{true}
\\
  \KEY{Rule} ~ 
    & \NAMEREF{implies}
        ( \NAMEREF{false},   
          \NAMEREF{true} ) \leadsto
        \NAMEREF{true}
\\
  \KEY{Rule} ~ 
    & \NAMEREF{implies}
        ( \NAMEREF{true},   
          \NAMEREF{true} ) \leadsto
        \NAMEREF{true}
\\
  \KEY{Rule} ~ 
    & \NAMEREF{implies}
        ( \NAMEREF{true},   
          \NAMEREF{false} ) \leadsto
        \NAMEREF{false}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{and}(\_ : \NAMEREF{booleans}\STAR) :  \TO \NAMEREF{booleans}
\end{aligned}$$


  $$\SHADE{\NAMEREF{and}
           ( \VAR{B},   
             \cdots )}$$ is logical conjunction of any number of Boolean values.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \NAMEREF{and}
        (  ~  ) \leadsto
        \NAMEREF{true}
\\
  \KEY{Rule} ~ 
    & \NAMEREF{and}
        ( \NAMEREF{false},   
          \_\STAR : \NAMEREF{booleans}\STAR ) \leadsto
        \NAMEREF{false}
\\
  \KEY{Rule} ~ 
    & \NAMEREF{and}
        ( \NAMEREF{true},   
          \VAR{B}\STAR : \NAMEREF{booleans}\STAR ) \leadsto
        \NAMEREF{and}
          ( \VAR{B}\STAR )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{or}(\_ : \NAMEREF{booleans}\STAR) :  \TO \NAMEREF{booleans}
\end{aligned}$$


  $$\SHADE{\NAMEREF{or}
           ( \VAR{B},   
             \cdots )}$$ is logical disjunction of any number of Boolean values.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \NAMEREF{or}
        (  ~  ) \leadsto
        \NAMEREF{false}
\\
  \KEY{Rule} ~ 
    & \NAMEREF{or}
        ( \NAMEREF{true},   
          \_\STAR : \NAMEREF{booleans}\STAR ) \leadsto
        \NAMEREF{true}
\\
  \KEY{Rule} ~ 
    & \NAMEREF{or}
        ( \NAMEREF{false},   
          \VAR{B}\STAR : \NAMEREF{booleans}\STAR ) \leadsto
        \NAMEREF{or}
          ( \VAR{B}\STAR )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{exclusive-or}(\_ : \NAMEREF{booleans}, \_ : \NAMEREF{booleans}) :  \TO \NAMEREF{booleans}
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{xor} = \NAMEREF{exclusive-or}
\end{aligned}$$


  $$\SHADE{\NAMEREF{exclusive-or}
           ( \VAR{B}\SUB{1},   
             \VAR{B}\SUB{2} )}$$ is exclusive disjunction.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \NAMEREF{exclusive-or}
        ( \NAMEREF{false},   
          \NAMEREF{false} ) \leadsto
        \NAMEREF{false}
\\
  \KEY{Rule} ~ 
    & \NAMEREF{exclusive-or}
        ( \NAMEREF{false},   
          \NAMEREF{true} ) \leadsto
        \NAMEREF{true}
\\
  \KEY{Rule} ~ 
    & \NAMEREF{exclusive-or}
        ( \NAMEREF{true},   
          \NAMEREF{false} ) \leadsto
        \NAMEREF{true}
\\
  \KEY{Rule} ~ 
    & \NAMEREF{exclusive-or}
        ( \NAMEREF{true},   
          \NAMEREF{true} ) \leadsto
        \NAMEREF{false}
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

[Booleans.cbs]: /CBS-beta/Funcons-beta/Values/Primitive/Booleans/Booleans.cbs
  "CBS SOURCE FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Primitive/Booleans/Booleans.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
