---
title: "Characters"
math: katex
parent: Primitive
ancestor: Funcons-beta

---
[Funcons-beta] : [Characters.cbs] \| [PLAIN] \| [PDF]

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

### Characters
               


$$\begin{align*}
  [ \
  \KEY{Type} \quad & \NAMEREF{characters} \\
  \KEY{Alias} \quad & \NAMEREF{chars} \\
  \KEY{Datatype} \quad & \NAMEREF{unicode-characters} \\
  \KEY{Alias} \quad & \NAMEREF{unicode-chars} \\
  \KEY{Type} \quad & \NAMEREF{unicode-points} \\
  \KEY{Funcon} \quad & \NAMEREF{unicode-character} \\
  \KEY{Alias} \quad & \NAMEREF{unicode-char} \\
  \KEY{Funcon} \quad & \NAMEREF{unicode-point} \\
  \KEY{Alias} \quad & \NAMEREF{unicode} \\
  \KEY{Type} \quad & \NAMEREF{basic-multilingual-plane-characters} \\
  \KEY{Alias} \quad & \NAMEREF{bmp-chars} \\
  \KEY{Type} \quad & \NAMEREF{basic-multilingual-plane-points} \\
  \KEY{Type} \quad & \NAMEREF{iso-latin-1-characters} \\
  \KEY{Alias} \quad & \NAMEREF{latin-1-chars} \\
  \KEY{Type} \quad & \NAMEREF{iso-latin-1-points} \\
  \KEY{Type} \quad & \NAMEREF{ascii-characters} \\
  \KEY{Alias} \quad & \NAMEREF{ascii-chars} \\
  \KEY{Type} \quad & \NAMEREF{ascii-points} \\
  \KEY{Funcon} \quad & \NAMEREF{ascii-character} \\
  \KEY{Alias} \quad & \NAMEREF{ascii-char} \\
  \KEY{Funcon} \quad & \NAMEREF{utf-8} \\
  \KEY{Funcon} \quad & \NAMEREF{utf-16} \\
  \KEY{Funcon} \quad & \NAMEREF{utf-32} \\
  \KEY{Funcon} \quad & \NAMEREF{backspace} \\
  \KEY{Funcon} \quad & \NAMEREF{horizontal-tab} \\
  \KEY{Funcon} \quad & \NAMEREF{line-feed} \\
  \KEY{Funcon} \quad & \NAMEREF{form-feed} \\
  \KEY{Funcon} \quad & \NAMEREF{carriage-return} \\
  \KEY{Funcon} \quad & \NAMEREF{double-quote} \\
  \KEY{Funcon} \quad & \NAMEREF{single-quote} \\
  \KEY{Funcon} \quad & \NAMEREF{backslash}
  \ ]
\end{align*}$$

$$\begin{align*}
  \KEY{Built-in Type} \quad 
  & \NAMEDECL{characters} <: \NAMEHYPER{../..}{Value-Types}{values} 
\end{align*}$$


  Literal characters can be written $$\SHADE{\ATOM{C}}$$ where $$\SHADE{\VAR{C}}$$ is any visible character
  other than a $$\SHADE{\NAMEREF{single-quote}}$$ or $$\SHADE{\NAMEREF{backslash}}$$ character, which need to be
  escaped as $$\SHADE{\ATOM{{\APOSTROPHE}}}$$ and $$\SHADE{\ATOM{{\BACKSLASH}}}$$.


$$\begin{align*}
  \KEY{Alias} \quad
  & \NAMEDECL{chars} = \NAMEREF{characters}
\end{align*}$$

#### Unicode character set
               



  The set of Unicode characters and allocated points is open to extension.
  See https://en.wikipedia.org/wiki/Plane_(Unicode)


$$\begin{align*}
  \KEY{Built-in Datatype} \quad 
  \NAMEDECL{unicode-characters} <: \NAMEREF{characters}
\end{align*}$$

$$\begin{align*}
  \KEY{Alias} \quad
  & \NAMEDECL{unicode-chars} = \NAMEREF{unicode-characters}
\end{align*}$$

$$\begin{align*}
  \KEY{Built-in Type} \quad 
  & \NAMEDECL{unicode-points} <: \NAMEHYPER{../.}{Integers}{bounded-integers}
                                     (  0, 
                                            \NAMEHYPER{../../Composite}{Bits}{unsigned-bit-vector-maximum}
                                             (  21 ) ) 
\end{align*}$$

$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{unicode-character}(
                       \_ : \NAMEREF{unicode-points}) 
    : \NAMEREF{unicode-characters} 
\\
  \KEY{Alias} \quad
  & \NAMEDECL{unicode-char} = \NAMEREF{unicode-character}
\end{align*}$$


  The values in $$\SHADE{\NAMEREF{unicode-characters}}$$ are the values of
  $$\SHADE{\NAMEREF{unicode-character}
           (  \VAR{UP} : \NAMEREF{unicode-points} )}$$.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{unicode-point}(
                       \_ : \NAMEREF{unicode-characters}) 
    :  \TO \NAMEREF{unicode-points} 
\\
  \KEY{Alias} \quad
  & \NAMEDECL{unicode} = \NAMEREF{unicode-point}
\end{align*}$$

$$\begin{align*}
  \KEY{Rule} \quad
    & \NAMEREF{unicode-point}
        (  \NAMEREF{unicode-character}
                (  \VAR{UP} : \NAMEREF{unicode-points} ) ) \leadsto 
        \VAR{UP}
\end{align*}$$

#### Unicode basic multilingual plane
               



  The set of Unicode BMP characters and allocated points is open to extension.


$$\begin{align*}
  \KEY{Built-in Datatype} \quad 
  \NAMEDECL{basic-multilingual-plane-characters} <: \NAMEREF{unicode-characters}
\end{align*}$$

$$\begin{align*}
  \KEY{Alias} \quad
  & \NAMEDECL{bmp-chars} = \NAMEREF{basic-multilingual-plane-characters}
\end{align*}$$

$$\begin{align*}
  \KEY{Built-in Type} \quad 
  & \NAMEDECL{basic-multilingual-plane-points} <: \NAMEHYPER{../.}{Integers}{bounded-integers}
                                     (  0, 
                                            \NAMEHYPER{../../Composite}{Bits}{unsigned-bit-vector-maximum}
                                             (  17 ) ) 
\end{align*}$$


  The values in $$\SHADE{\NAMEREF{basic-multilingual-plane-characters}}$$ are the values of
  $$\SHADE{\NAMEREF{unicode-character}
           (  \VAR{BMPP} : \NAMEREF{basic-multilingual-plane-points} )}$$.


#### ISO Latin-1 character set
               


$$\begin{align*}
  \KEY{Built-in Datatype} \quad 
  \NAMEDECL{iso-latin-1-characters} <: \NAMEREF{basic-multilingual-plane-characters}
\end{align*}$$

$$\begin{align*}
  \KEY{Alias} \quad
  & \NAMEDECL{latin-1-chars} = \NAMEREF{iso-latin-1-characters}
\end{align*}$$

$$\begin{align*}
  \KEY{Type} \quad 
  & \NAMEDECL{iso-latin-1-points}  
    \leadsto \NAMEHYPER{../.}{Integers}{bounded-integers}
               (  0, 
                      \NAMEHYPER{../../Composite}{Bits}{unsigned-bit-vector-maximum}
                       (  8 ) )
\end{align*}$$


  The values in $$\SHADE{\NAMEREF{iso-latin-1-characters}}$$ are the values of
  $$\SHADE{\NAMEREF{unicode-character}
           (  \VAR{ILP} : \NAMEREF{iso-latin-1-points} )}$$.


#### ASCII character set
               


$$\begin{align*}
  \KEY{Built-in Type} \quad 
  & \NAMEDECL{ascii-characters} <: \NAMEREF{iso-latin-1-characters} 
\\
  \KEY{Alias} \quad
  & \NAMEDECL{ascii-chars} = \NAMEREF{ascii-characters}
\end{align*}$$

$$\begin{align*}
  \KEY{Type} \quad 
  & \NAMEDECL{ascii-points}  
    \leadsto \NAMEHYPER{../.}{Integers}{bounded-integers}
               (  0, 
                      \NAMEHYPER{../../Composite}{Bits}{unsigned-bit-vector-maximum}
                       (  7 ) )
\end{align*}$$


  The values in $$\SHADE{\NAMEREF{ascii-characters}}$$ are the values of
  $$\SHADE{\NAMEREF{unicode-character}
           (  \VAR{AP} : \NAMEREF{ascii-points} )}$$.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{ascii-character}(
                       \_ : \NAMEHYPER{../../Composite}{Strings}{strings}) 
    :  \TO \NAMEREF{ascii-characters}\QUERY 
\\
  \KEY{Alias} \quad
  & \NAMEDECL{ascii-char} = \NAMEREF{ascii-character}
\end{align*}$$


  $$\SHADE{\NAMEREF{ascii-character} \ 
           \STRING{C}}$$ takes a string. When it consists of a single ASCII
  character $$\SHADE{\VAR{C}}$$ it gives the character, otherwise $$\SHADE{(   \  )}$$.


$$\begin{align*}
  \KEY{Rule} \quad
    & \NAMEREF{ascii-character} \ 
        [  \VAR{C} : \NAMEREF{ascii-characters} ] \leadsto 
        \VAR{C}
\\
  \KEY{Rule} \quad
    & \RULE{
      &  \VAR{C} : \mathop{\sim} \NAMEREF{ascii-characters}
      }{
      & \NAMEREF{ascii-character} \ 
          [  \VAR{C} : \NAMEREF{characters} ] \leadsto 
          (   \  )
      }
\\
  \KEY{Rule} \quad
    & \RULE{
      & \NAMEHYPER{../../Composite}{Sequences}{length}
          (  \VAR{C}\STAR ) 
        \neq 1
      }{
      & \NAMEREF{ascii-character} \ 
          [  \VAR{C}\STAR : \NAMEREF{characters}\STAR ] \leadsto 
          (   \  )
      }
\end{align*}$$

#### Character point encodings
               



  See https://en.wikipedia.org/wiki/Character_encoding


$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{utf-8}(
                       \_ : \NAMEREF{unicode-points}) 
    :  \TO (  \NAMEHYPER{../../Composite}{Bits}{bytes}, 
                          (  \NAMEHYPER{../../Composite}{Bits}{bytes}, 
                                (  \NAMEHYPER{../../Composite}{Bits}{bytes}, 
                                      \NAMEHYPER{../../Composite}{Bits}{bytes}\QUERY )\QUERY )\QUERY ) 
\end{align*}$$

$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{utf-16}(
                       \_ : \NAMEREF{unicode-points}) 
    :  \TO (  \NAMEHYPER{../../Composite}{Bits}{bit-vectors}
                           (  16 ), 
                          (  \NAMEHYPER{../../Composite}{Bits}{bit-vectors}
                                 (  16 ) )\QUERY ) 
\end{align*}$$

$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{utf-32}(
                       \_ : \NAMEREF{unicode-points}) 
    :  \TO \NAMEHYPER{../../Composite}{Bits}{bit-vectors}
                     (  32 ) 
\end{align*}$$

#### Control characters
               


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{backspace} 
    :  \TO \NAMEREF{ascii-characters} \\&\quad
    \leadsto \NAMEREF{unicode-character}
               (  \NAMEHYPER{../.}{Integers}{hexadecimal-natural} \ 
                       \STRING{0008} )
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{horizontal-tab} 
    :  \TO \NAMEREF{ascii-characters} \\&\quad
    \leadsto \NAMEREF{unicode-character}
               (  \NAMEHYPER{../.}{Integers}{hexadecimal-natural} \ 
                       \STRING{0009} )
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{line-feed} 
    :  \TO \NAMEREF{ascii-characters} \\&\quad
    \leadsto \NAMEREF{unicode-character}
               (  \NAMEHYPER{../.}{Integers}{hexadecimal-natural} \ 
                       \STRING{000a} )
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{form-feed} 
    :  \TO \NAMEREF{ascii-characters} \\&\quad
    \leadsto \NAMEREF{unicode-character}
               (  \NAMEHYPER{../.}{Integers}{hexadecimal-natural} \ 
                       \STRING{000c} )
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{carriage-return} 
    :  \TO \NAMEREF{ascii-characters} \\&\quad
    \leadsto \NAMEREF{unicode-character}
               (  \NAMEHYPER{../.}{Integers}{hexadecimal-natural} \ 
                       \STRING{000d} )
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{double-quote} 
    :  \TO \NAMEREF{ascii-characters} \\&\quad
    \leadsto \NAMEREF{unicode-character}
               (  \NAMEHYPER{../.}{Integers}{hexadecimal-natural} \ 
                       \STRING{0022} )
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{single-quote} 
    :  \TO \NAMEREF{ascii-characters} \\&\quad
    \leadsto \NAMEREF{unicode-character}
               (  \NAMEHYPER{../.}{Integers}{hexadecimal-natural} \ 
                       \STRING{0027} )
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{backslash} 
    :  \TO \NAMEREF{ascii-characters} \\&\quad
    \leadsto \NAMEREF{unicode-character}
               (  \NAMEHYPER{../.}{Integers}{hexadecimal-natural} \ 
                       \STRING{005c} )
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
[Characters.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Primitive/Characters/Characters.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Values/Primitive/Characters
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Funcons-beta/Values/Primitive/Characters
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Primitive/Characters/Characters.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Primitive/Characters/Characters.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
