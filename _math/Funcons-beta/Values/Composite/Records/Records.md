### Records
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Datatype} ~ & \NAMEREF{records} \\
  \KEY{Funcon} ~ & \NAMEREF{record} \\
  \KEY{Funcon} ~ & \NAMEREF{record-map} \\
  \KEY{Funcon} ~ & \NAMEREF{record-select}
  ~ ]
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Meta-variables} ~ 
  & \VAR{T} <: \NAMEHYPER{../..}{Value-Types}{values}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Datatype} ~ 
  \NAMEDECL{records}(\VAR{T} )  
  ~ ::= ~ & \NAMEDECL{record} (\_ : \NAMEHYPER{../.}{Maps}{maps}
                                         ( \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers}, \\&\quad 
                                           \VAR{T} ))
\end{aligned}$$


  A value of type $$\SHADE{\NAMEREF{records}
           ( \VAR{T} )}$$ contains a map from identifiers to values of
  type $$\SHADE{\VAR{T}}$$.


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{record-map}(\_ : \NAMEREF{records}
                                ( \VAR{T} )) :  \TO \NAMEHYPER{../.}{Maps}{maps}
                                                                         ( \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers},   
                                                                           \VAR{T} )
\\
  \KEY{Rule} ~ 
    & \NAMEREF{record-map}
        ( \NAMEREF{record}
            ( \VAR{M} : \NAMEHYPER{../.}{Maps}{maps}
                          ( \_,     
                            \_ ) ) ) \leadsto
        \VAR{M}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{record-select}(\VAR{R} : \NAMEREF{records}
                                ( \VAR{T} ), \VAR{I} : \NAMEHYPER{../../../Computations/Normal}{Binding}{identifiers}) :  \TO \VAR{T}\QUERY \\
  & \quad \leadsto \NAMEHYPER{../.}{Maps}{map-lookup}
                     ( \NAMEREF{record-map}
                         ( \VAR{R} ), \\&\quad \quad \quad \quad 
                       \VAR{I} )
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
