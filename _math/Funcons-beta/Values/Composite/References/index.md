---
layout: default
title: "References"
math: katex
parent: Composite
ancestor: Funcons-beta

---

[Funcons-beta] : [References.cbs]

### References and pointers
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Datatype} ~ & \NAMEREF{references} \\
  \KEY{Funcon} ~ & \NAMEREF{reference} \\
  \KEY{Type} ~ & \NAMEREF{pointers} \\
  \KEY{Funcon} ~ & \NAMEREF{pointer-null} \\
  \KEY{Funcon} ~ & \NAMEREF{dereference}
  ~ ]
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Meta-variables} ~ 
  & \VAR{T} <: \NAMEHYPER{../..}{Value-Types}{values}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Datatype} ~ 
  \NAMEDECL{references}(\VAR{T} )  
  ~ ::= ~ & \NAMEDECL{reference} (\_ : \VAR{T})
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Datatype} ~ 
  \NAMEDECL{pointers}(\VAR{T} )  
  ~ ::= ~ & 
  \NAMEDECL{pointer-null}  \\
  ~ \mid ~ & \{ \_ : \NAMEREF{references}
               ( \VAR{T} ) \}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{dereference}(\_ : \NAMEREF{pointers}
                                ( \VAR{T} )) :  \TO ( \VAR{T} )\QUERY
\\
  \KEY{Rule} ~ 
    & \NAMEREF{dereference}
        ( \NAMEREF{reference}
            ( \VAR{V} : \VAR{T} ) ) \leadsto
        \VAR{V}
\\
  \KEY{Rule} ~ 
    & \NAMEREF{dereference}
        ( \NAMEREF{pointer-null} ) \leadsto
        (  ~  )
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

[References.cbs]: /CBS-beta/Funcons-beta/Values/Composite/References/References.cbs
  "CBS SOURCE FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Composite/References/References.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
