### Variants
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Datatype} ~ & \NAMEREF{variants} \\
  \KEY{Funcon} ~ & \NAMEREF{variant} \\
  \KEY{Funcon} ~ & \NAMEREF{variant-id} \\
  \KEY{Funcon} ~ & \NAMEREF{variant-value}
  ~ ]
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Meta-variables} ~ 
  & \VAR{T} <: \NAMEHYPER{../..}{Value-Types}{values}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Datatype} ~ 
  \NAMEDECL{variants}(\VAR{T} )  
  ~ ::= ~ & \NAMEDECL{variant} (\_ : \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers}, \_ : \VAR{T})
\end{aligned}$$


  A value of type $$\SHADE{\NAMEREF{variants}
           ( \VAR{T} )}$$ is a pair formed from an identifier and 
  a value of type $$\SHADE{\VAR{T}}$$.


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{variant-id}(\_ : \NAMEREF{variants}
                                ( \VAR{T} )) :  \TO \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers}
\\
  \KEY{Rule} ~ 
    & \NAMEREF{variant-id}
        ( \NAMEREF{variant}
            ( \VAR{I} : \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers},    
              \_ : \VAR{T} ) ) \leadsto
        \VAR{I}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{variant-value}(\_ : \NAMEREF{variants}
                                ( \VAR{T} )) :  \TO \VAR{T}
\\
  \KEY{Rule} ~ 
    & \NAMEREF{variant-value}
        ( \NAMEREF{variant}
            ( \_ : \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers},    
              \VAR{V} : \VAR{T} ) ) \leadsto
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
