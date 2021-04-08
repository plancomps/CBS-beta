{::comment}{% raw %}{:/}


----

### Generating
               


$$\begin{align*}
  [ \
  \KEY{Type} \quad & \NAMEREF{atoms} \\
  \KEY{Entity} \quad & \NAMEREF{used-atom-set} \\
  \KEY{Funcon} \quad & \NAMEREF{initialise-generating} \\
  \KEY{Funcon} \quad & \NAMEREF{fresh-atom} \\
  \KEY{Funcon} \quad & \NAMEREF{use-atom-not-in}
  \ ]
\end{align*}$$

$$\begin{align*}
  \KEY{Meta-variables} \quad
  & \VAR{T} <: \NAMEHYPER{../../../Values}{Value-Types}{values}
\end{align*}$$

$$\begin{align*}
  \KEY{Built-in Type} \quad 
  & \NAMEDECL{atoms}  
\end{align*}$$


  $$\SHADE{\NAMEREF{atoms}}$$ is the type of values used as distinguishable tags.
  Notation for individual atoms is not provided.


$$\begin{align*}
  \KEY{Entity} \quad
  & \langle \_, \NAMEDECL{used-atom-set}(\_ : \NAMEHYPER{../../../Values/Composite}{Sets}{sets}
                                                            (  \NAMEREF{atoms} )) \rangle \TRANS   
    \langle \_, \NAME{used-atom-set}(\_ : \NAME{sets}
                                                            (  \NAME{atoms} )) \rangle
\end{align*}$$

$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{initialise-generating}(
                       \_ :  \TO \VAR{T}) 
    :  \TO \VAR{T} 
\end{align*}$$


  The initial value of the $$\SHADE{\NAMEREF{used-atom-set}
           (  \VAR{SA} )}$$ entity is unspecified. It could
  contains atoms that are reserved for internal use.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{fresh-atom} 
    :  \TO \NAMEREF{atoms} 
\end{align*}$$


  $$\SHADE{\NAMEREF{fresh-atom}}$$ computes an atom distinct from all previously computed atoms.


$$\begin{align*}
  \KEY{Rule} \quad
    & \RULE{
      & \NAMEHYPER{../../../Values/Composite}{Sets}{element-not-in}
          (  \NAMEREF{atoms}, 
                 \VAR{SA} ) \leadsto 
          \VAR{A}
      }{
      &  \langle \NAMEREF{fresh-atom}, \NAMEREF{used-atom-set} (  \VAR{SA} ) \rangle \TRANS \\&\quad
          \langle \VAR{A}, \NAMEREF{used-atom-set} (  \NAMEHYPER{../../../Values/Composite}{Sets}{set-insert}
                                                       (  \VAR{A}, 
                                                              \VAR{SA} ) ) \rangle
      }
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{use-atom-not-in}(
                       \_ : \NAMEHYPER{../../../Values/Composite}{Sets}{sets}
                                 (  \NAMEREF{atoms} )) 
    :  \TO \NAMEREF{atoms} 
\end{align*}$$


  $$\SHADE{\NAMEREF{use-atom-not-in}
           (  \VAR{SA} )}$$ computes an atom not in the set $$\SHADE{\VAR{SA}}$$, and inserts it
  in the $$\SHADE{\NAMEREF{used-atom-set}
           (  \VAR{SA}' )}$$ entity, in case it was not previously used.


$$\begin{align*}
  \KEY{Rule} \quad
    & \RULE{
      & \NAMEHYPER{../../../Values/Composite}{Sets}{element-not-in}
          (  \NAMEREF{atoms}, 
                 \VAR{SA} ) \leadsto 
          \VAR{A}
      }{
      &  \langle \NAMEREF{use-atom-not-in}
                              (  \VAR{SA} : \NAMEHYPER{../../../Values/Composite}{Sets}{sets}
                                                (  \NAMEREF{atoms} ) ), \NAMEREF{used-atom-set} (  \VAR{SA}' ) \rangle \TRANS \\&\quad
          \langle \VAR{A}, \NAMEREF{used-atom-set} (  \NAMEHYPER{../../../Values/Composite}{Sets}{set-insert}
                                                       (  \VAR{A}, 
                                                              \VAR{SA}' ) ) \rangle
      }
\end{align*}$$



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
[Generating.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Normal/Generating/Generating.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Computations/Normal/Generating
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Funcons-beta/Computations/Normal/Generating
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Normal/Generating/Generating.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}
