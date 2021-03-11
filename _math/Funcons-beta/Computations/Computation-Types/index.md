---
layout: default
title: "Computation-Types"
math: katex
parent: Computations
ancestor: Funcons-beta

---

[Funcons-beta] : [Computation-Types.cbs]

## Computation Types
               


$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{computation-types} : \NAMEHYPER{../../Values}{Value-Types}{types}
\end{aligned}$$


  For any value type $$\SHADE{\VAR{T}}$$, the term $$\SHADE{ \TO \VAR{T}}$$ is the type of computations that
  compute values of type $$\SHADE{\VAR{T}}$$ whenever they terminate normally.
  
  For any subtypes $$\SHADE{\VAR{S}}$$, $$\SHADE{\VAR{T}}$$ of $$\SHADE{\NAMEHYPER{../../Values}{Value-Types}{values}}$$, $$\SHADE{\VAR{S} \TO \VAR{T}}$$ is the type of computations
  that compute values of type $$\SHADE{\VAR{T}}$$ whenever they terminate normally, and
  either do not refer at all to the $$\SHADE{\NAMEHYPER{../Normal}{Giving}{given}}$$ entity, or require the $$\SHADE{\NAMEHYPER{../Normal}{Giving}{given}}$$
  entity to have type $$\SHADE{\VAR{S}}$$.




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

[Computation-Types.cbs]: /CBS-beta/Funcons-beta/Computations/Computation-Types/Computation-Types.cbs
  "CBS SOURCE FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Computations/Computation-Types/Computation-Types.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
