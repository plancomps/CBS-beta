---
layout: default
title: "Generic"
math: katex
parent: Abstraction
ancestor: Funcons-beta

---

[Funcons-beta] : [Generic.cbs]

### Generic abstractions
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Type} ~ & \NAMEREF{abstractions} \\
  \KEY{Funcon} ~ & \NAMEREF{abstraction} \\
  \KEY{Funcon} ~ & \NAMEREF{closure} \\
  \KEY{Funcon} ~ & \NAMEREF{enact}
  ~ ]
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Meta-variables} ~ 
  & \VAR{T} <: \NAMEHYPER{../..}{Value-Types}{values} \VAR{T}\QUERY <: \NAMEHYPER{../..}{Value-Types}{values}\QUERY
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Type} ~  
  & \NAMEDECL{abstractions}(\_ : \NAMEHYPER{../../../Computations}{Computation-Types}{computation-types})  
  
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{abstraction}(\_ : \VAR{T}\QUERY \TO \VAR{T}) : \NAMEREF{abstractions}
                                                            ( \VAR{T}\QUERY \TO \VAR{T} )
\end{aligned}$$


  The funcon $$\SHADE{\NAMEREF{abstraction}
           ( \VAR{X} )}$$ forms abstraction values from computations.
  
  References to bindings of identifiers in $$\SHADE{\VAR{X}}$$ are dynamic.
  The funcon $$\SHADE{\NAMEREF{closure}
           ( \VAR{X} )}$$ forms abstractions with static bindings.


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{closure}(\_ : \VAR{T}\QUERY \TO \VAR{T}) :  \TO \NAMEREF{abstractions}
                                                                         ( \VAR{T}\QUERY \TO \VAR{T} )
\end{aligned}$$


  $$\SHADE{\NAMEREF{closure}
           ( \VAR{X} )}$$ computes a closed abstraction from the computation $$\SHADE{\VAR{X}}$$.
  In contrast to $$\SHADE{\NAMEREF{abstraction}
           ( \VAR{X} )}$$, references to bindings of identifiers
  in $$\SHADE{\VAR{X}}$$ are static. Moreover, $$\SHADE{\NAMEREF{closure}
           ( \VAR{X} )}$$ is not a value constructor,
  so it cannot be used in pattern terms in rules.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \NAMEHYPER{../../../Computations/Normal}{Binding}{environment} ( \VAR{$\rho$} ) \vdash \NAMEREF{closure}
                    ( \VAR{X} ) \TRANS 
        \NAMEREF{abstraction}
          ( \NAMEHYPER{../../../Computations/Normal}{Binding}{closed}
              ( \NAMEHYPER{../../../Computations/Normal}{Binding}{scope}
                  ( \VAR{$\rho$},     
                    \VAR{X} ) ) )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{enact}(\_ : \NAMEREF{abstractions}
                                ( \VAR{T}\QUERY \TO \VAR{T} )) : \VAR{T}\QUERY \TO \VAR{T}
\end{aligned}$$


  $$\SHADE{\NAMEREF{enact}
           ( \VAR{A} )}$$ executes the computation of the abstraction $$\SHADE{\VAR{A}}$$,
  with access to all the current entities.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \NAMEREF{enact}
        ( \NAMEREF{abstraction}
            ( \VAR{X} ) ) \leadsto
        \VAR{X}
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

[Generic.cbs]: /CBS-beta/Funcons-beta/Values/Abstraction/Generic/Generic.cbs
  "CBS SOURCE FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Abstraction/Generic/Generic.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
