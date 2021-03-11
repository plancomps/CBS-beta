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
