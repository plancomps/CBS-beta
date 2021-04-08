{::comment}{% raw %}{:/}
<details open markdown="block">
  <summary>
    OUTLINE
  </summary>
  {: .text-delta }
- TOC
{:toc}
</details>


----

$$\KEY{Language} \quad \STRING{SL}$$




$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEREF{sl-to-string} \\
  \KEY{Funcon} \quad & \NAMEREF{integer-add-else-string-append} \\
  \KEY{Funcon} \quad & \NAMEREF{int} \\
  \KEY{Funcon} \quad & \NAMEREF{bool} \\
  \KEY{Funcon} \quad & \NAMEREF{str} \\
  \KEY{Funcon} \quad & \NAMEREF{obj} \\
  \KEY{Funcon} \quad & \NAMEREF{fun} \\
  \KEY{Funcon} \quad & \NAMEREF{scope-closed} \\
  \KEY{Funcon} \quad & \NAMEREF{initialise-local-variables} \\
  \KEY{Funcon} \quad & \NAMEREF{local-variable} \\
  \KEY{Funcon} \quad & \NAMEREF{local-variable-initialise} \\
  \KEY{Funcon} \quad & \NAMEREF{local-variable-assign} \\
  \KEY{Funcon} \quad & \NAMEREF{initialise-global-bindings} \\
  \KEY{Funcon} \quad & \NAMEREF{override-global-bindings} \\
  \KEY{Funcon} \quad & \NAMEREF{global-bound} \\
  \KEY{Funcon} \quad & \NAMEREF{read-line} \\
  \KEY{Funcon} \quad & \NAMEREF{print-line}
  \ ]
\end{align*}$$

# SL-specific funcons
               


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{sl-to-string}(
                       \VAR{V} : \NAMEHYPER{../.}{SL-2-Expressions}{sl-values}) 
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Strings}{strings} 
\\
  \KEY{Rule} \quad
    & \NAMEREF{sl-to-string}
        (  \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-value} ) \leadsto 
        \STRING{null}
\\
  \KEY{Rule} \quad
    & \NAMEREF{sl-to-string}
        (  \VAR{V} : \mathop{\sim} \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} ) \leadsto 
        \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Strings}{to-string}
          (  \VAR{V} )
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{integer-add-else-string-append}(
                       \VAR{V}\SUB{1} : \NAMEHYPER{../.}{SL-2-Expressions}{sl-values}, \VAR{V}\SUB{2} : \NAMEHYPER{../.}{SL-2-Expressions}{sl-values}) 
    :  \TO \NAMEHYPER{../.}{SL-2-Expressions}{sl-values} \\&\quad
    \leadsto \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{else}
               ( \\&\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-add}
                       (  \NAMEREF{int} \ 
                               \VAR{V}\SUB{1}, 
                              \NAMEREF{int} \ 
                               \VAR{V}\SUB{2} ), \\&\quad\quad\quad\quad
                      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Strings}{string-append}
                       (  \NAMEREF{sl-to-string} \ 
                               \VAR{V}\SUB{1}, 
                              \NAMEREF{sl-to-string} \ 
                               \VAR{V}\SUB{2} ) )
\end{align*}$$

# Abbreviations
               


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{int}(
                       \VAR{V} : \NAMEHYPER{../.}{SL-2-Expressions}{sl-values}) 
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integers} \\&\quad
    \leadsto \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{checked} \ 
               \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{cast-to-type}
                 (  \VAR{V}, 
                        \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integers} )
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{bool}(
                       \VAR{V} : \NAMEHYPER{../.}{SL-2-Expressions}{sl-values}) 
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{booleans} \\&\quad
    \leadsto \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{checked} \ 
               \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{cast-to-type}
                 (  \VAR{V}, 
                        \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{booleans} )
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{str}(
                       \VAR{V} : \NAMEHYPER{../.}{SL-2-Expressions}{sl-values}) 
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Strings}{strings} \\&\quad
    \leadsto \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{checked} \ 
               \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{cast-to-type}
                 (  \VAR{V}, 
                        \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Strings}{strings} )
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{obj}(
                       \VAR{V} : \NAMEHYPER{../.}{SL-2-Expressions}{sl-values}) 
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Objects}{objects} \\&\quad
    \leadsto \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{checked} \ 
               \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{cast-to-type}
                 (  \VAR{V}, 
                        \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Objects}{objects} )
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{fun}(
                       \VAR{V} : \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values}) 
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Functions}{functions}
                     (  \_, 
                            \_ ) \\&\quad
    \leadsto \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{checked} \ 
               \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{cast-to-type}
                 (  \VAR{V}, 
                        \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Functions}{functions}
                         (  \_, 
                                \_ ) )
\end{align*}$$

# Further funcons
               



  Some of the funcons defined below might be sufficiently reuseful for
  inclusion in Funcons-beta.


## Binding
               


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{scope-closed}(
                       \VAR{Env} : \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{envs}, \VAR{X} :  \TO \VAR{T}) 
    :  \TO \VAR{T} \\&\quad
    \leadsto \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{closed} \ 
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{scope}
                 (  \VAR{Env}, 
                        \VAR{X} )
\end{align*}$$


  $$\SHADE{\NAMEREF{scope-closed}
           (  \VAR{D}, 
                  \VAR{X} )}$$ evaluates $$\SHADE{\VAR{D}}$$ in the current environment, then
  evaluates $$\SHADE{\VAR{X}}$$ in the resulting environment. Note the difference between
  $$\SHADE{\NAMEREF{scope-closed}
           (  \VAR{D}, 
                  \VAR{X} )}$$ and $$\SHADE{\NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{closed}
           (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{scope}
                   (  \VAR{D}, 
                          \VAR{X} ) )}$$: the latter is equivalent
  to $$\SHADE{\NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{closed}
           (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{scope}
                   (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{closed} \ 
                           \VAR{D}, 
                          \VAR{X} ) )}$$, where $$\SHADE{\VAR{D}}$$ cannot reference any bindings.


## Local variables
               



  The local variable map is stored in a variable bound to "local-variables".
  Initialising a local variable updates the stored local variable map. 
  Subsequent assignments to a local variable do not change the stored map.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{initialise-local-variables} 
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{environments} \\&\quad
    \leadsto \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bind}
               ( \\&\quad\quad\quad\quad \STRING{local{-}variables}, \\&\quad\quad\quad\quad
                      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{allocate-initialised-variable}
                       (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{environments}, 
                              \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{map}
                               (   \  ) ) )
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{local-variable}(
                       \VAR{I} : \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{ids}) 
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{variables} \\&\quad
    \leadsto \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{checked} \ 
               \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{lookup}
                 (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} \ 
                         \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound} \ 
                           \STRING{local{-}variables}, 
                        \VAR{I} )
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{local-variable-initialise}(
                       \VAR{I} : \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{ids}, \VAR{V} : \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values}) 
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} \\&\quad
    \leadsto \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
               ( \\&\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound} \ 
                       \STRING{local{-}variables}, \\&\quad\quad\quad\quad
                      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{map-override}
                       ( \\&\quad\quad\quad\quad\quad \{ \VAR{I} \mapsto 
                                  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{allocate-initialised-variable}
                                    (  \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values}, 
                                           \VAR{V} ) \}, \\&\quad\quad\quad\quad\quad
                              \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} \ 
                               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound} \ 
                                 \STRING{local{-}variables} ) )
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{local-variable-assign}(
                       \VAR{I} : \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{ids}, \VAR{V} : \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values}) 
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} \\&\quad
    \leadsto \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{else}
               ( \\&\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
                       (  \NAMEREF{local-variable} \ 
                               \VAR{I}, 
                              \VAR{V} ), \\&\quad\quad\quad\quad
                      \NAMEREF{local-variable-initialise}
                       (  \VAR{I}, 
                              \VAR{V} ) )
\end{align*}$$

## Global bindings
               



  The global bindings map is stored in a variable bound to "global-bindings". 
  Global declaration or redeclaration of an identifier involves updating the
  stored global environment.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{initialise-global-bindings} 
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{environments} \\&\quad
    \leadsto \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bind}
               ( \\&\quad\quad\quad\quad \STRING{global{-}bindings}, \\&\quad\quad\quad\quad
                      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{allocate-initialised-variable}
                       (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{environments}, 
                              \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{map}
                               (   \  ) ) )
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{override-global-bindings}(
                       \VAR{E} : \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{environments}) 
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} \\&\quad
    \leadsto \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
               ( \\&\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound} \ 
                       \STRING{global{-}bindings}, \\&\quad\quad\quad\quad
                      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{map-override}
                       (  \VAR{E}, 
                              \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} \ 
                               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound} \ 
                                 \STRING{global{-}bindings} ) )
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{global-bound}(
                       \VAR{I} : \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{ids}) 
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values} \\&\quad
    \leadsto \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{checked} \ 
               \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{lookup}
                 (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} \ 
                         \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound} \ 
                           \STRING{global{-}bindings}, 
                        \VAR{I} )
\end{align*}$$

## Composite input and output
               


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{read-line} 
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Strings}{strings} \\&\quad
    \leadsto \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{give}
               ( \\&\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Interacting}{read}, \\&\quad\quad\quad\quad
                      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-true-else}
                       ( \\&\quad\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{is-eq}
                               (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}, 
                                      \ATOM{{\BACKSLASH}n} ), \\&\quad\quad\quad\quad\quad
                              \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{nil}, \\&\quad\quad\quad\quad\quad
                              \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{cons}
                               (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}, 
                                      \NAMEREF{read-line} ) ) )
\end{align*}$$


  $$\SHADE{\NAMEREF{read-line}}$$ reads characters from the standard input until a linefeed
  character, giving the string formed from the sequence of characters
  excluding the newline. If the input ends before the end of the line,
  it fails.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{print-line}(
                       \VAR{S} : \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Strings}{strings}) 
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} \\&\quad
    \leadsto \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Interacting}{print}
               (  \VAR{S}, 
                      \STRING{{\BACKSLASH}n} )
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
[SL-Funcons.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SL/SL-cbs/SL/SL-Funcons/SL-Funcons.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/SL/SL-cbs/SL/SL-Funcons
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Languages-beta/SL/SL-cbs/SL/SL-Funcons
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/SL/SL-cbs/SL/SL-Funcons/SL-Funcons.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}
