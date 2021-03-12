### Returning
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Datatype} ~ & \NAMEREF{returning} \\
  \KEY{Funcon} ~ & \NAMEREF{returned} \\
  \KEY{Funcon} ~ & \NAMEREF{finalise-returning} \\
  \KEY{Funcon} ~ & \NAMEREF{return} \\
  \KEY{Funcon} ~ & \NAMEREF{handle-return}
  ~ ]
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Meta-variables} ~ 
  & \VAR{T} <: \NAMEHYPER{../../../Values}{Value-Types}{values}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Datatype} ~ 
  \NAMEDECL{returning}  
  ~ ::= ~ & \NAMEDECL{returned} (\_ : \NAMEHYPER{../../../Values}{Value-Types}{values})
\end{aligned}$$


  $$\SHADE{\NAMEREF{returned}
           ( \VAR{V}\QUERY )}$$ is a reason for abrupt termination.


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{finalise-returning}(\VAR{X} :  \TO \VAR{T}) :  \TO \VAR{T} \mid \NAMEHYPER{../../../Values/Primitive}{Null}{null-type} \\
  & \quad \leadsto \NAMEHYPER{../.}{Abrupting}{finalise-abrupting}
                     ( \VAR{X} )
\end{aligned}$$


  $$\SHADE{\NAMEREF{finalise-returning}
           ( \VAR{X} )}$$ handles abrupt termination of $$\SHADE{\VAR{X}}$$ due to
  executing $$\SHADE{\NAMEREF{return}
           ( \VAR{V} )}$$.


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{return}(\VAR{V} : \VAR{T}) :  \TO \NAMEHYPER{../../../Values}{Value-Types}{empty-type} \\
  & \quad \leadsto \NAMEHYPER{../.}{Abrupting}{abrupt}
                     ( \NAMEREF{returned}
                         ( \VAR{V} ) )
\end{aligned}$$


  $$\SHADE{\NAMEREF{return}
           ( \VAR{V} )}$$ abruptly terminates all enclosing computations until it is
  handled, then giving $$\SHADE{\VAR{V}}$$. Note that $$\SHADE{\VAR{V}}$$ may be $$\SHADE{\NAMEHYPER{../../../Values/Primitive}{Null}{null-value}}$$.


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{handle-return}(\_ :  \TO \VAR{T}) :  \TO \VAR{T}
\end{aligned}$$


  $$\SHADE{\NAMEREF{handle-return}
           ( \VAR{X} )}$$ first evaluates $$\SHADE{\VAR{X}}$$. If $$\SHADE{\VAR{X}}$$ either terminates abruptly for 
  reason $$\SHADE{\NAMEREF{returned}
           ( \VAR{V} )}$$, or terminates normally with value $$\SHADE{\VAR{V}}$$, it gives $$\SHADE{\VAR{V}}$$.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \RULE{
       \VAR{X} \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}(  ~  )}_{} 
        \VAR{X}'
      }{
      &  \NAMEREF{handle-return}
                      ( \VAR{X} ) \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}(  ~  )}_{} 
          \NAMEREF{handle-return}
            ( \VAR{X}' )
      }
\\
  \KEY{Rule} ~ 
    & \RULE{
       \VAR{X} \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}( \NAMEREF{returned}
                                                                                                    ( \VAR{V} : \NAMEHYPER{../../../Values}{Value-Types}{values} ) )}_{} 
        \VAR{X}'
      }{
      &  \NAMEREF{handle-return}
                      ( \VAR{X} ) \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}(  ~  )}_{} 
          \VAR{V}
      }
\\
  \KEY{Rule} ~ 
    & \RULE{
       \VAR{X} \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}( \VAR{V}' : \mathop{\sim} \NAMEREF{returning} )}_{} 
        \VAR{X}'
      }{
      &  \NAMEREF{handle-return}
                      ( \VAR{X} ) \xrightarrow{\NAMEHYPER{../.}{Abrupting}{abrupted}( \VAR{V}' )}_{} 
          \NAMEREF{handle-return}
            ( \VAR{X}' )
      }
\\
  \KEY{Rule} ~ 
    & \NAMEREF{handle-return}
        ( \VAR{V} : \VAR{T} ) \leadsto
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
