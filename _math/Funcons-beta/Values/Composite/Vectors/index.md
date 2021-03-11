---
layout: default
title: "Vectors"
math: katex
parent: Composite
ancestor: Funcons-beta

---

[Funcons-beta] : [Vectors.cbs]

### Vectors
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Datatype} ~ & \NAMEREF{vectors} \\
  \KEY{Funcon} ~ & \NAMEREF{vector} \\
  \KEY{Funcon} ~ & \NAMEREF{vector-elements}
  ~ ]
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Meta-variables} ~ 
  & \VAR{T} <: \NAMEHYPER{../..}{Value-Types}{values}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Datatype} ~ 
  \NAMEDECL{vectors}(\VAR{T} )  
  ~ ::= ~ & \NAMEDECL{vector} (\_ : ( \VAR{T} )\STAR)
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{vector-elements}(\_ : \NAMEREF{vectors}
                                ( \VAR{T} )) :  \TO ( \VAR{T} )\STAR
\\
  \KEY{Rule} ~ 
    & \NAMEREF{vector-elements}
        ( \NAMEREF{vector}
            ( \VAR{V}\STAR : ( \VAR{T} )\STAR ) ) \leadsto
        \VAR{V}\STAR
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

[Vectors.cbs]: /CBS-beta/Funcons-beta/Values/Composite/Vectors/Vectors.cbs
  "CBS SOURCE FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Composite/Vectors/Vectors.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
