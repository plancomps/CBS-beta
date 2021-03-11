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
