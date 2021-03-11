---
layout: default
title: "Linking"
math: katex
parent: Normal
ancestor: Funcons-beta

---

[Funcons-beta] : [Linking.cbs]

### Linking
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Datatype} ~ & \NAMEREF{links} \\
  \KEY{Funcon} ~ & \NAMEREF{initialise-linking} \\
  \KEY{Funcon} ~ & \NAMEREF{link} \\
  \KEY{Funcon} ~ & \NAMEREF{fresh-link} \\
  \KEY{Funcon} ~ & \NAMEREF{fresh-initialised-link} \\
  \KEY{Alias} ~ & \NAMEREF{fresh-init-link} \\
  \KEY{Funcon} ~ & \NAMEREF{set-link} \\
  \KEY{Funcon} ~ & \NAMEREF{follow-if-link}
  ~ ]
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Meta-variables} ~ 
  & \VAR{T} <: \NAMEHYPER{../../../Values}{Value-Types}{values}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Datatype} ~ 
  \NAMEDECL{links}  
  ~ ::= ~ & \NAMEDECL{link} (\_ : \NAMEHYPER{../.}{Storing}{variables})
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{initialise-linking}(\VAR{X} :  \TO \VAR{T}) :  \TO \VAR{T} \\
  & \quad \leadsto \NAMEHYPER{../.}{Storing}{initialise-storing}
                     ( \VAR{X} )
\end{aligned}$$


  $$\SHADE{\NAMEREF{initialise-linking}
           ( \VAR{X} )}$$ ensures that the entities used by the funcons for
  linking are properly initialised.


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{fresh-link}(\VAR{T} ) :  \TO \NAMEREF{links} \\
  & \quad \leadsto \NAMEREF{link}
                     ( \NAMEHYPER{../.}{Storing}{allocate-variable}
                         ( \VAR{T} ) )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{fresh-initialised-link}(\VAR{T} , \VAR{V} : \VAR{T}) :  \TO \NAMEREF{links} \\
  & \quad \leadsto \NAMEREF{link}
                     ( \NAMEHYPER{../.}{Storing}{allocate-initialised-variable}
                         ( \VAR{T}, \\&\quad \quad \quad \quad \quad 
                           \VAR{V} ) )
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{fresh-init-link} = \NAMEREF{fresh-initialised-link}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{set-link}(\_ : \NAMEREF{links}, \_ : \VAR{T}) :  \TO \NAMEHYPER{../../../Values/Primitive}{Null}{null-type}
\end{aligned}$$


  The value of a link can be set only once.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \NAMEREF{set-link}
        ( \NAMEREF{link}
            ( \VAR{Var} : \NAMEHYPER{../.}{Storing}{variables} ),   
          \VAR{V} : \VAR{T} ) \leadsto
        \NAMEHYPER{../.}{Storing}{initialise-variable}
          ( \VAR{Var},   
            \VAR{V} )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{follow-link}(\_ : \NAMEREF{links}) :  \TO \NAMEHYPER{../../../Values}{Value-Types}{values}
\\
  \KEY{Rule} ~ 
    & \NAMEREF{follow-link}
        ( \NAMEREF{link}
            ( \VAR{Var} : \NAMEHYPER{../.}{Storing}{variables} ) ) \leadsto
        \NAMEHYPER{../.}{Storing}{assigned}
          ( \VAR{Var} )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{follow-if-link}(\_ : \NAMEHYPER{../../../Values}{Value-Types}{values}) :  \TO \NAMEHYPER{../../../Values}{Value-Types}{values}
\end{aligned}$$


  If $$\SHADE{\VAR{V}}$$ is a link, $$\SHADE{\NAMEREF{follow-if-link}
           ( \VAR{V} )}$$ computes the set value, and
  otherwise it evaluates to $$\SHADE{\VAR{V}}$$.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \NAMEREF{follow-if-link}
        ( \NAMEREF{link}
            ( \VAR{Var} : \NAMEHYPER{../.}{Storing}{variables} ) ) \leadsto
        \NAMEHYPER{../.}{Storing}{assigned}
          ( \VAR{Var} )
\\
  \KEY{Rule} ~ 
    & \NAMEREF{follow-if-link}
        ( \VAR{V} : \mathop{\sim} \NAMEREF{links} ) \leadsto
        \VAR{V}
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

[Linking.cbs]: /CBS-beta/Funcons-beta/Computations/Normal/Linking/Linking.cbs
  "CBS SOURCE FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Computations/Normal/Linking/Linking.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
