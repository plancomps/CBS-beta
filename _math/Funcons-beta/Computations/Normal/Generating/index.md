---
layout: default
title: "Generating"
math: katex
parent: Normal
ancestor: Funcons-beta

---

[Funcons-beta] : [Generating.cbs]

### Generating
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Type} ~ & \NAMEREF{atoms} \\
  \KEY{Entity} ~ & \NAMEREF{used-atom-set} \\
  \KEY{Funcon} ~ & \NAMEREF{initialise-generating} \\
  \KEY{Funcon} ~ & \NAMEREF{fresh-atom} \\
  \KEY{Funcon} ~ & \NAMEREF{use-atom-not-in}
  ~ ]
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Meta-variables} ~ 
  & \VAR{T} <: \NAMEHYPER{../../../Values}{Value-Types}{values}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Type} ~  
  & \NAMEDECL{atoms}  
  
\end{aligned}$$


  $$\SHADE{\NAMEREF{atoms}}$$ is the type of values used as distinguishable tags.
  Notation for individual atoms is not provided.


$$\relax\begin{aligned}\relax
  \KEY{Entity} ~ 
  & \langle \_, \NAMEDECL{used-atom-set}(\_ : \NAMEHYPER{../../../Values/Composite}{Sets}{sets}
                                                            ( \NAMEREF{atoms} )) \rangle \TRANS  \langle \_, \NAME{used-atom-set}(\_ : \NAME{sets}
                                                                                               ( \NAME{atoms} )) \rangle
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{initialise-generating}(\_ :  \TO \VAR{T}) :  \TO \VAR{T}
\end{aligned}$$


  The initial value of the $$\SHADE{\NAMEREF{used-atom-set}
           ( \VAR{SA} )}$$ entity is unspecified. It could
  contains atoms that are reserved for internal use.


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{fresh-atom} :  \TO \NAMEREF{atoms}
\end{aligned}$$


  $$\SHADE{\NAMEREF{fresh-atom}}$$ computes an atom distinct from all previously computed atoms.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \RULE{
      \NAMEHYPER{../../../Values/Composite}{Sets}{element-not-in}
        ( \NAMEREF{atoms},   
          \VAR{SA} ) \leadsto
        \VAR{A}
      }{
      &  \langle \NAMEREF{fresh-atom}, \NAMEREF{used-atom-set} ( \VAR{SA} ) \rangle \TRANS 
          \langle \VAR{A}, \NAMEREF{used-atom-set} ( \NAMEHYPER{../../../Values/Composite}{Sets}{set-insert}
                                                   ( \VAR{A},   
                                                     \VAR{SA} ) ) \rangle
      }
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{use-atom-not-in}(\_ : \NAMEHYPER{../../../Values/Composite}{Sets}{sets}
                                ( \NAMEREF{atoms} )) :  \TO \NAMEREF{atoms}
\end{aligned}$$


  $$\SHADE{\NAMEREF{use-atom-not-in}
           ( \VAR{SA} )}$$ computes an atom not in the set $$\SHADE{\VAR{SA}}$$, and inserts it
  in the $$\SHADE{\NAMEREF{used-atom-set}
           ( \VAR{SA}' )}$$ entity, in case it was not previously used.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \RULE{
      \NAMEHYPER{../../../Values/Composite}{Sets}{element-not-in}
        ( \NAMEREF{atoms},   
          \VAR{SA} ) \leadsto
        \VAR{A}
      }{
      &  \langle \NAMEREF{use-atom-not-in}
                              ( \VAR{SA} : \NAMEHYPER{../../../Values/Composite}{Sets}{sets}
                                            ( \NAMEREF{atoms} ) ), \NAMEREF{used-atom-set} ( \VAR{SA}' ) \rangle \TRANS 
          \langle \VAR{A}, \NAMEREF{used-atom-set} ( \NAMEHYPER{../../../Values/Composite}{Sets}{set-insert}
                                                   ( \VAR{A},   
                                                     \VAR{SA}' ) ) \rangle
      }
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

[Generating.cbs]: /CBS-beta/Funcons-beta/Computations/Normal/Generating/Generating.cbs
  "CBS SOURCE FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Computations/Normal/Generating/Generating.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
