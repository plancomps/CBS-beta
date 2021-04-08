{::comment}{% raw %}{:/}


----

### Tuples
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEREF{tuples} \\
  \KEY{Funcon} \quad & \NAMEREF{tuple-elements} \\
  \KEY{Funcon} \quad & \NAMEREF{tuple-zip}
  \ ]
\end{align*}$$

$$\begin{align*}
  \KEY{Meta-variables} \quad
  & \VAR{T}\SUB{1}, \VAR{T}\SUB{2} <: \NAMEHYPER{../..}{Value-Types}{values} \qquad \\& \VAR{T}\SUB{1}\PLUS, \VAR{T}\SUB{2}\PLUS <: \NAMEHYPER{../..}{Value-Types}{values}\PLUS \qquad \\& \VAR{T}\STAR, \VAR{T}\SUB{1}\STAR, \VAR{T}\SUB{2}\STAR <: \NAMEHYPER{../..}{Value-Types}{values}\STAR
\end{align*}$$

$$\begin{align*}
  \KEY{Datatype} \quad 
  \NAMEDECL{tuples}(
                     \VAR{T}\STAR ) 
  \ ::= \ & \NAMEDECL{tuple}(
                               \_ : \VAR{T}\STAR)
\end{align*}$$


  $$\SHADE{\VAR{T}\STAR}$$ can be any sequence of types, including $$\SHADE{(   \  )}$$ and $$\SHADE{\NAMEHYPER{../..}{Value-Types}{values}\STAR}$$.
  
  The values of type $$\SHADE{\NAMEREF{tuples}
           (  \VAR{T}\SUB{1}, 
                  \cdots, 
                  \VAR{T}\SUB{n} )}$$ are of the form $$\SHADE{\NAMEREF{tuple}
           (  \VAR{V}\SUB{1}, 
                  \cdots, 
                  \VAR{V}\SUB{n} )}$$
  with $$\SHADE{\VAR{V}\SUB{1} : \VAR{T}\SUB{1}}$$, ..., $$\SHADE{\VAR{V}\SUB{n} : \VAR{T}\SUB{n}}$$.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{tuple-elements}(
                       \_ : \NAMEREF{tuples}
                                 (  \VAR{T}\STAR )) 
    :  \TO (  \VAR{T}\STAR ) 
\\
  \KEY{Rule} \quad
    & \NAMEREF{tuple-elements}
        (  \NAMEREF{tuple}
                (  \VAR{V}\STAR : \VAR{T}\STAR ) ) \leadsto 
        \VAR{V}\STAR
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{tuple-zip}(
                       \_ : \NAMEREF{tuples}
                                 (  \NAMEHYPER{../..}{Value-Types}{values}\STAR ), \_ : \NAMEREF{tuples}
                                 (  \NAMEHYPER{../..}{Value-Types}{values}\STAR )) 
    :  \TO (  \NAMEREF{tuples}
                           (  \NAMEHYPER{../..}{Value-Types}{values}, 
                                  \NAMEHYPER{../..}{Value-Types}{values} ) )\STAR 
\end{align*}$$


  $$\SHADE{\NAMEREF{tuple-zip}
           (  \VAR{TV}\SUB{1}, 
                  \VAR{TV}\SUB{2} )}$$ takes two tuples, and returns the sequence of pairs of
  their elements, provided that they have the same length. If they have
  different lengths, the last elements of the longer sequence are ignored.


$$\begin{align*}
  \KEY{Rule} \quad
    & \NAMEREF{tuple-zip}
        (  \NAMEREF{tuple}
                (  \VAR{V}\SUB{1} : \VAR{T}\SUB{1}, 
                       \VAR{V}\SUB{1}\STAR : \VAR{T}\SUB{1}\STAR ), 
               \NAMEREF{tuple}
                (  \VAR{V}\SUB{2} : \VAR{T}\SUB{2}, 
                       \VAR{V}\SUB{2}\STAR : \VAR{T}\SUB{2}\STAR ) ) \leadsto \\&\quad
        (  \NAMEREF{tuple}
                (  \VAR{V}\SUB{1}, 
                       \VAR{V}\SUB{2} ), 
               \NAMEREF{tuple-zip}
                (  \NAMEREF{tuple}
                        (  \VAR{V}\SUB{1}\STAR ), 
                       \NAMEREF{tuple}
                        (  \VAR{V}\SUB{2}\STAR ) ) )
\\
  \KEY{Rule} \quad
    & \NAMEREF{tuple-zip}
        (  \NAMEREF{tuple}
                (   \  ), 
               \NAMEREF{tuple}
                (   \  ) ) \leadsto 
        (   \  )
\\
  \KEY{Rule} \quad
    & \NAMEREF{tuple-zip}
        (  \NAMEREF{tuple}
                (  \VAR{V}\SUB{1}\PLUS : \VAR{T}\SUB{1}\PLUS ), 
               \NAMEREF{tuple}
                (   \  ) ) \leadsto 
        (   \  )
\\
  \KEY{Rule} \quad
    & \NAMEREF{tuple-zip}
        (  \NAMEREF{tuple}
                (   \  ), 
               \NAMEREF{tuple}
                (  \VAR{V}\SUB{2}\PLUS : \VAR{T}\SUB{2}\PLUS ) ) \leadsto 
        (   \  )
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
[Tuples.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Composite/Tuples/Tuples.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Values/Composite/Tuples
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Funcons-beta/Values/Composite/Tuples
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Composite/Tuples/Tuples.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}
