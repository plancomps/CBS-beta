---
layout: default
title: "Strings"
math: katex
parent: Composite
ancestor: Funcons-beta

---

[Funcons-beta] : [Strings.cbs]

### Strings
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Type} ~ & \NAMEREF{strings} \\
  \KEY{Funcon} ~ & \NAMEREF{string} \\
  \KEY{Funcon} ~ & \NAMEREF{string-append} \\
  \KEY{Funcon} ~ & \NAMEREF{to-string}
  ~ ]
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Type} ~  
  & \NAMEDECL{strings}  
  \leadsto \NAMEHYPER{../.}{Lists}{lists}
             ( \NAMEHYPER{../../Primitive}{Characters}{characters} )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{string}(\VAR{C}\STAR : \NAMEHYPER{../../Primitive}{Characters}{characters}\STAR) :  \TO \NAMEREF{strings} \\
  & \quad \leadsto [ \VAR{C}\STAR ]
\end{aligned}$$


  Literal strings are written $$\SHADE{\STRING{C1.{}.{}.{}Cn}}$$.
  A double-quote or backslash needs to be escaped: $$\SHADE{\STRING{.{}.{}.{}"{}.{}.{}.{}}}$$, $$\SHADE{\STRING{.{}.{}.{}\BACKSLASH .{}.{}.{}}}$$.


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{string-append}(\VAR{S}\STAR : \NAMEREF{strings}\STAR) :  \TO \NAMEREF{strings} \\
  & \quad \leadsto \NAMEHYPER{../.}{Lists}{list-append}
                     ( \VAR{S}\STAR )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{to-string}(\_ : \NAMEHYPER{../..}{Value-Types}{ground-values}) :  \TO \NAMEREF{strings}
\end{aligned}$$


  The strings returned by $$\SHADE{\NAMEREF{to-string}
           ( \VAR{GV} )}$$ are unspecified, except that when
  $$\SHADE{\VAR{GV}}$$ is already a string, it is returned unchanged.


$$\relax\begin{aligned}\relax
  \KEY{Assert} ~ 
  & \NAMEREF{to-string}
      ( \VAR{S} : \NAMEREF{strings} ) == 
      \VAR{S}
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

[Strings.cbs]: /CBS-beta/Funcons-beta/Values/Composite/Strings/Strings.cbs
  "CBS SOURCE FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Composite/Strings/Strings.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
