### Tuples
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Datatype} ~ & \NAMEREF{tuples} \\
  \KEY{Funcon} ~ & \NAMEREF{tuple-elements} \\
  \KEY{Funcon} ~ & \NAMEREF{tuple-zip}
  ~ ]
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Meta-variables} ~ 
  & \VAR{T}\SUB{1}, \VAR{T}\SUB{2} <: \NAMEHYPER{../..}{Value-Types}{values} \VAR{T}\SUB{1}\PLUS, \VAR{T}\SUB{2}\PLUS <: \NAMEHYPER{../..}{Value-Types}{values}\PLUS \VAR{T}\STAR, \VAR{T}\SUB{1}\STAR, \VAR{T}\SUB{2}\STAR <: \NAMEHYPER{../..}{Value-Types}{values}\STAR
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Datatype} ~ 
  \NAMEDECL{tuples}(\VAR{T}\STAR )  
  ~ ::= ~ & \NAMEDECL{tuple} (\_ : \VAR{T}\STAR)
\end{aligned}$$


  $$\SHADE{\VAR{T}\STAR}$$ can be any sequence of types, including $$\SHADE{(  ~  )}$$ and $$\SHADE{\NAMEHYPER{../..}{Value-Types}{values}\STAR}$$.
  
  The values of type $$\SHADE{\NAMEREF{tuples}
           ( \VAR{T}\SUB{1},   
             \cdots,   
             \VAR{Tn} )}$$ are of the form $$\SHADE{\NAMEREF{tuple}
           ( \VAR{V}\SUB{1},   
             \cdots,   
             \VAR{Vn} )}$$
  with $$\SHADE{\VAR{V}\SUB{1} : \VAR{T}\SUB{1}}$$, ..., $$\SHADE{\VAR{Vn} : \VAR{Tn}}$$.


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{tuple-elements}(\_ : \NAMEREF{tuples}
                                ( \VAR{T}\STAR )) :  \TO ( \VAR{T}\STAR )
\\
  \KEY{Rule} ~ 
    & \NAMEREF{tuple-elements}
        ( \NAMEREF{tuple}
            ( \VAR{V}\STAR : \VAR{T}\STAR ) ) \leadsto
        \VAR{V}\STAR
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{tuple-zip}(\_ : \NAMEREF{tuples}
                                ( \NAMEHYPER{../..}{Value-Types}{values}\STAR ), \_ : \NAMEREF{tuples}
                                ( \NAMEHYPER{../..}{Value-Types}{values}\STAR )) :  \TO ( \NAMEREF{tuples}
                                                                           ( \NAMEHYPER{../..}{Value-Types}{values},   
                                                                             \NAMEHYPER{../..}{Value-Types}{values} ) )\STAR
\end{aligned}$$


  $$\SHADE{\NAMEREF{tuple-zip}
           ( \VAR{TV}\SUB{1},   
             \VAR{TV}\SUB{2} )}$$ takes two tuples, and returns the sequence of pairs of
  their elements, provided that they have the same length. If they have
  different lengths, the last elements of the longer sequence are ignored.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \NAMEREF{tuple-zip}
        ( \NAMEREF{tuple}
            ( \VAR{V}\SUB{1} : \VAR{T}\SUB{1},    
              \VAR{V}\SUB{1}\STAR : \VAR{T}\SUB{1}\STAR ),   
          \NAMEREF{tuple}
            ( \VAR{V}\SUB{2} : \VAR{T}\SUB{2},    
              \VAR{V}\SUB{2}\STAR : \VAR{T}\SUB{2}\STAR ) ) \leadsto
        ( \NAMEREF{tuple}
            ( \VAR{V}\SUB{1},   
              \VAR{V}\SUB{2} ),  
          \NAMEREF{tuple-zip}
            ( \NAMEREF{tuple}
                ( \VAR{V}\SUB{1}\STAR ),   
              \NAMEREF{tuple}
                ( \VAR{V}\SUB{2}\STAR ) ) )
\\
  \KEY{Rule} ~ 
    & \NAMEREF{tuple-zip}
        ( \NAMEREF{tuple}
            (  ~  ),   
          \NAMEREF{tuple}
            (  ~  ) ) \leadsto
        (  ~  )
\\
  \KEY{Rule} ~ 
    & \NAMEREF{tuple-zip}
        ( \NAMEREF{tuple}
            ( \VAR{V}\SUB{1}\PLUS : \VAR{T}\SUB{1}\PLUS ),   
          \NAMEREF{tuple}
            (  ~  ) ) \leadsto
        (  ~  )
\\
  \KEY{Rule} ~ 
    & \NAMEREF{tuple-zip}
        ( \NAMEREF{tuple}
            (  ~  ),   
          \NAMEREF{tuple}
            ( \VAR{V}\SUB{2}\PLUS : \VAR{T}\SUB{2}\PLUS ) ) \leadsto
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
