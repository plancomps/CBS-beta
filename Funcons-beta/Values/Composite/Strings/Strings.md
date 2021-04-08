{::comment}{% raw %}{:/}


----

### Strings
               


$$\begin{align*}
  [ \
  \KEY{Type} \quad & \NAMEREF{strings} \\
  \KEY{Funcon} \quad & \NAMEREF{string} \\
  \KEY{Funcon} \quad & \NAMEREF{string-append} \\
  \KEY{Funcon} \quad & \NAMEREF{to-string}
  \ ]
\end{align*}$$

$$\begin{align*}
  \KEY{Type} \quad 
  & \NAMEDECL{strings}  
    \leadsto \NAMEHYPER{../.}{Lists}{lists}
               (  \NAMEHYPER{../../Primitive}{Characters}{characters} )
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{string}(
                       \VAR{C}\STAR : \NAMEHYPER{../../Primitive}{Characters}{characters}\STAR) 
    :  \TO \NAMEREF{strings} \\&\quad
    \leadsto [  \VAR{C}\STAR ]
\end{align*}$$


  Literal strings are written $$\SHADE{\STRING{C{\UNDERSCORE}1{.}{.}{.}C{\UNDERSCORE}n}}$$.
  A double-quote or backslash needs to be escaped: $$\SHADE{\STRING{{.}{.}{.}{\BACKSLASH}{"}{.}{.}{.}}}$$, $$\SHADE{\STRING{{.}{.}{.}{\BACKSLASH}{\BACKSLASH}{.}{.}{.}}}$$.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{string-append}(
                       \VAR{S}\STAR : \NAMEREF{strings}\STAR) 
    :  \TO \NAMEREF{strings} \\&\quad
    \leadsto \NAMEHYPER{../.}{Lists}{list-append}
               (  \VAR{S}\STAR )
\end{align*}$$

$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{to-string}(
                       \_ : \NAMEHYPER{../..}{Value-Types}{ground-values}) 
    :  \TO \NAMEREF{strings} 
\end{align*}$$


  The strings returned by $$\SHADE{\NAMEREF{to-string}
           (  \VAR{GV} )}$$ are unspecified, except that when
  $$\SHADE{\VAR{GV}}$$ is already a string, it is returned unchanged.


$$\begin{align*}
  \KEY{Assert} \quad
  & \NAMEREF{to-string}
      (  \VAR{S} : \NAMEREF{strings} ) 
    == \VAR{S}
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
[Strings.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Composite/Strings/Strings.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Values/Composite/Strings
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Funcons-beta/Values/Composite/Strings
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Composite/Strings/Strings.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}
