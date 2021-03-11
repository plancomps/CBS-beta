### Memos
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Entity} ~ & \NAMEREF{memo-map} \\
  \KEY{Funcon} ~ & \NAMEREF{initialise-memos} \\
  \KEY{Funcon} ~ & \NAMEREF{memo-value} \\
  \KEY{Funcon} ~ & \NAMEREF{initialise-memo-value} \\
  \KEY{Funcon} ~ & \NAMEREF{memo-value-recall}
  ~ ]
\end{aligned}$$


A memo is like a mutable variable, except that the memo is updated and
accessed by a specified key, rather than by an allocated location. The
collection of memos is represented by a mutable entity that maps keys
to values.


$$\relax\begin{aligned}\relax
  \KEY{Entity} ~ 
  & \langle \_, \NAMEDECL{memo-map}(\_ : \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{maps}
                                                            (\NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{ground-values}, \\&\quad 
                                                             \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values})) \rangle \TRANS  \langle \_, \NAME{memo-map}(\_ : \NAME{maps}
                                                                                               (\NAME{ground-values}, \\&\quad 
                                                                                                \NAME{values})) \rangle
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{initialise-memos}(\_ :  \TO \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values}) :  \TO \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values}
\\
  \KEY{Rule} ~ 
    &  \langle \NAMEREF{initialise-memos}
                            (\VAR{X}), \NAMEREF{memo-map} (\_) \rangle \TRANS \langle \VAR{X}, \NAMEREF{memo-map} (\NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{map}
                                                                                                     ( ~ )) \rangle
\end{aligned}$$


When key $$\SHADE{\VAR{K}}$$ is associated with value $$\SHADE{\VAR{V}}$$, the funcon $$\SHADE{\NAMEREF{memo-value}
           (\VAR{K},   
            \VAR{X})}$$
simply gives $$\SHADE{\VAR{V}}$$, without evaluating $$\SHADE{\VAR{X}}$$. When $$\SHADE{\VAR{K}}$$ is not currently
associated with any value, it associates $$\SHADE{\VAR{K}}$$ with the value computed
by $$\SHADE{\VAR{X}}$$.


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{memo-value}(\VAR{K} : \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{ground-values}, \VAR{X} :  \TO \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values}) :  \TO \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values} \\
  & \quad \leadsto \NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Failing}{else}
                     (\NAMEREF{memo-value-recall}
                        (\VAR{K}), \\&\quad 
                      \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Giving}{give}
                        (\VAR{X}, \\&\quad \quad 
                         \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                           (\NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Failing}{else}
                              (\NAMEREF{initialise-memo-value}
                                 (\VAR{K}, \\&\quad \quad \quad \quad \quad 
                                  \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Giving}{given}), \\&\quad \quad \quad \quad 
                               \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}), \\&\quad \quad \quad 
                            \NAMEREF{memo-value-recall}
                              (\VAR{K}))))
\end{aligned}$$


The initialisation could fail due to memoisation of a (potentially
different) value for $$\SHADE{\VAR{K}}$$ during the computation $$\SHADE{\VAR{X}}$$. In that case,
the value computed by $$\SHADE{\VAR{X}}$$ is simply discarded; a resource-safe
funcon would take an extra argument to roll back the effects of $$\SHADE{\VAR{X}}$$.


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{initialise-memo-value}(\_ : \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{ground-values}, \_ : \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values}) :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-type}
\\
  \KEY{Rule} ~ 
    & \RULE{
      \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{map-unite}
        (\VAR{M},   
         \{ \VAR{K} \mapsto \VAR{V} \}) \leadsto \VAR{M}'
      }{
       \langle \NAMEREF{initialise-memo-value}
                            (\VAR{K} : \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{ground-values},   
                             \VAR{V} : \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values}), \NAMEREF{memo-map} (\VAR{M}) \rangle \TRANS \langle \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \NAMEREF{memo-map} (\VAR{M}') \rangle
      }
\\
  \KEY{Rule} ~ 
    & \RULE{
      \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{map-unite}
        (\VAR{M},   
         \{ \VAR{K} \mapsto \VAR{V} \}) \leadsto ( ~ )
      }{
       \langle \NAMEREF{initialise-memo-value}
                            (\VAR{K} : \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{ground-values},   
                             \VAR{V} : \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values}), \NAMEREF{memo-map} (\VAR{M}) \rangle \TRANS \langle \NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Failing}{fail}, \NAMEREF{memo-map} (\VAR{M}) \rangle
      }
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{memo-value-recall}(\_ : \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{ground-values}) :  \TO \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values}
\\
  \KEY{Rule} ~ 
    & \RULE{
      \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{lookup}
        (\VAR{M},   
         \VAR{K}) \leadsto \VAR{V}
      }{
       \langle \NAMEREF{memo-value-recall}
                            (\VAR{K} : \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{ground-values}), \NAMEREF{memo-map} (\VAR{M}) \rangle \TRANS \langle \VAR{V}, \NAMEREF{memo-map} (\VAR{M}) \rangle
      }
\\
  \KEY{Rule} ~ 
    & \RULE{
      \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{lookup}
        (\VAR{M},   
         \VAR{K}) \leadsto ( ~ )
      }{
       \langle \NAMEREF{memo-value-recall}
                            (\VAR{K} : \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{ground-values}), \NAMEREF{memo-map} (\VAR{M}) \rangle \TRANS \langle \NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Failing}{fail}, \NAMEREF{memo-map} (\VAR{M}) \rangle
      }
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
