---
title: "Memos"
math: katex
parent: Normal
ancestor: Unstable-Funcons-beta

---
[Unstable-Funcons-beta] : [Memos.cbs] \| [PLAIN] \| [PDF]

{::comment}{% raw %}{:/}


----

### Memos
               


$$\begin{align*}
  [ \
  \KEY{Entity} \quad & \NAMEREF{memo-map} \\
  \KEY{Funcon} \quad & \NAMEREF{initialise-memos} \\
  \KEY{Funcon} \quad & \NAMEREF{memo-value} \\
  \KEY{Funcon} \quad & \NAMEREF{initialise-memo-value} \\
  \KEY{Funcon} \quad & \NAMEREF{memo-value-recall}
  \ ]
\end{align*}$$


A memo is like a mutable variable, except that the memo is updated and
accessed by a specified key, rather than by an allocated location. The
collection of memos is represented by a mutable entity that maps keys
to values.


$$\begin{align*}
  \KEY{Entity} \quad
  & \langle \_, \NAMEDECL{memo-map}(\_ : \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{maps}
                                                            (  \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{ground-values}, 
                                                                   \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values} )) \rangle \TRANS  \\& 
    \langle \_, \NAME{memo-map}(\_ : \NAME{maps}
                                                            (  \NAME{ground-values}, 
                                                                   \NAME{values} )) \rangle
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{initialise-memos}(
                       \_ :  \TO \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values}) 
    :  \TO \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values} 
\\
  \KEY{Rule} \quad
    &  \langle \NAMEREF{initialise-memos}
                            (  \VAR{X} ), \NAMEREF{memo-map} (  \_ ) \rangle \TRANS 
        \langle \VAR{X}, \NAMEREF{memo-map} (  \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{map}
                                                     (   \  ) ) \rangle
\end{align*}$$


When key $$\SHADE{\VAR{K}}$$ is associated with value $$\SHADE{\VAR{V}}$$, the funcon $$\SHADE{\NAMEREF{memo-value}
           (  \VAR{K}, 
                  \VAR{X} )}$$
simply gives $$\SHADE{\VAR{V}}$$, without evaluating $$\SHADE{\VAR{X}}$$. When $$\SHADE{\VAR{K}}$$ is not currently
associated with any value, it associates $$\SHADE{\VAR{K}}$$ with the value computed
by $$\SHADE{\VAR{X}}$$.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{memo-value}(
                       \VAR{K} : \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{ground-values}, \VAR{X} :  \TO \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values}) 
    :  \TO \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values} \\&\quad
    \leadsto \NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Failing}{else}
               ( \\&\quad\quad\quad\quad \NAMEREF{memo-value-recall}
                       (  \VAR{K} ), \\&\quad\quad\quad\quad
                      \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Giving}{give}
                       ( \\&\quad\quad\quad\quad\quad \VAR{X}, \\&\quad\quad\quad\quad\quad
                              \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                               ( \\&\quad\quad\quad\quad\quad\quad \NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Failing}{else}
                                       (  \NAMEREF{initialise-memo-value}
                                               (  \VAR{K}, 
                                                      \NAMEHYPER{../../../../Funcons-beta/Computations/Normal}{Giving}{given} ), 
                                              \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value} ), \\&\quad\quad\quad\quad\quad\quad
                                      \NAMEREF{memo-value-recall}
                                       (  \VAR{K} ) ) ) )
\end{align*}$$


The initialisation could fail due to memoisation of a (potentially
different) value for $$\SHADE{\VAR{K}}$$ during the computation $$\SHADE{\VAR{X}}$$. In that case,
the value computed by $$\SHADE{\VAR{X}}$$ is simply discarded; a resource-safe
funcon would take an extra argument to roll back the effects of $$\SHADE{\VAR{X}}$$.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{initialise-memo-value}(
                       \_ : \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{ground-values}, \_ : \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values}) 
    :  \TO \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-type} 
\\
  \KEY{Rule} \quad
    & \RULE{
      & \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{map-unite}
          (  \VAR{M}, 
                 \{ \VAR{K} \mapsto 
                     \VAR{V} \} ) \leadsto 
          \VAR{M}'
      }{
      &  \langle \NAMEREF{initialise-memo-value}
                              (  \VAR{K} : \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{ground-values}, 
                                     \VAR{V} : \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values} ), \NAMEREF{memo-map} (  \VAR{M} ) \rangle \TRANS \\&\quad
          \langle \NAMEHYPER{../../../../Funcons-beta/Values/Primitive}{Null}{null-value}, \NAMEREF{memo-map} (  \VAR{M}' ) \rangle
      }
\\
  \KEY{Rule} \quad
    & \RULE{
      & \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{map-unite}
          (  \VAR{M}, 
                 \{ \VAR{K} \mapsto 
                     \VAR{V} \} ) \leadsto 
          (   \  )
      }{
      &  \langle \NAMEREF{initialise-memo-value}
                              (  \VAR{K} : \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{ground-values}, 
                                     \VAR{V} : \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values} ), \NAMEREF{memo-map} (  \VAR{M} ) \rangle \TRANS \\&\quad
          \langle \NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Failing}{fail}, \NAMEREF{memo-map} (  \VAR{M} ) \rangle
      }
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{memo-value-recall}(
                       \_ : \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{ground-values}) 
    :  \TO \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{values} 
\\
  \KEY{Rule} \quad
    & \RULE{
      & \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{lookup}
          (  \VAR{M}, 
                 \VAR{K} ) \leadsto 
          \VAR{V}
      }{
      &  \langle \NAMEREF{memo-value-recall}
                              (  \VAR{K} : \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{ground-values} ), \NAMEREF{memo-map} (  \VAR{M} ) \rangle \TRANS 
          \langle \VAR{V}, \NAMEREF{memo-map} (  \VAR{M} ) \rangle
      }
\\
  \KEY{Rule} \quad
    & \RULE{
      & \NAMEHYPER{../../../../Funcons-beta/Values/Composite}{Maps}{lookup}
          (  \VAR{M}, 
                 \VAR{K} ) \leadsto 
          (   \  )
      }{
      &  \langle \NAMEREF{memo-value-recall}
                              (  \VAR{K} : \NAMEHYPER{../../../../Funcons-beta/Values}{Value-Types}{ground-values} ), \NAMEREF{memo-map} (  \VAR{M} ) \rangle \TRANS 
          \langle \NAMEHYPER{../../../../Funcons-beta/Computations/Abnormal}{Failing}{fail}, \NAMEREF{memo-map} (  \VAR{M} ) \rangle
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
[Memos.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Funcons-beta/Computations/Normal/Memos/Memos.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Unstable-Funcons-beta/Computations/Normal/Memos
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Unstable-Funcons-beta/Computations/Normal/Memos
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Unstable-Funcons-beta/Computations/Normal/Memos/Memos.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Computations/Normal/Memos/Memos.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
