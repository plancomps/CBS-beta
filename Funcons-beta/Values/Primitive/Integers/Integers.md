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

### Integers
               


$$\begin{align*}
  [ \
  \KEY{Type} \quad & \NAMEREF{integers} \\
  \KEY{Alias} \quad & \NAMEREF{ints} \\
  \KEY{Type} \quad & \NAMEREF{integers-from} \\
  \KEY{Alias} \quad & \NAMEREF{from} \\
  \KEY{Type} \quad & \NAMEREF{integers-up-to} \\
  \KEY{Alias} \quad & \NAMEREF{up-to} \\
  \KEY{Type} \quad & \NAMEREF{bounded-integers} \\
  \KEY{Alias} \quad & \NAMEREF{bounded-ints} \\
  \KEY{Type} \quad & \NAMEREF{positive-integers} \\
  \KEY{Alias} \quad & \NAMEREF{pos-ints} \\
  \KEY{Type} \quad & \NAMEREF{negative-integers} \\
  \KEY{Alias} \quad & \NAMEREF{neg-ints} \\
  \KEY{Type} \quad & \NAMEREF{natural-numbers} \\
  \KEY{Alias} \quad & \NAMEREF{nats} \\
  \KEY{Funcon} \quad & \NAMEREF{natural-successor} \\
  \KEY{Alias} \quad & \NAMEREF{nat-succ} \\
  \KEY{Funcon} \quad & \NAMEREF{natural-predecessor} \\
  \KEY{Alias} \quad & \NAMEREF{nat-pred} \\
  \KEY{Funcon} \quad & \NAMEREF{integer-add} \\
  \KEY{Alias} \quad & \NAMEREF{int-add} \\
  \KEY{Funcon} \quad & \NAMEREF{integer-subtract} \\
  \KEY{Alias} \quad & \NAMEREF{int-sub} \\
  \KEY{Funcon} \quad & \NAMEREF{integer-multiply} \\
  \KEY{Alias} \quad & \NAMEREF{int-mul} \\
  \KEY{Funcon} \quad & \NAMEREF{integer-divide} \\
  \KEY{Alias} \quad & \NAMEREF{int-div} \\
  \KEY{Funcon} \quad & \NAMEREF{integer-modulo} \\
  \KEY{Alias} \quad & \NAMEREF{int-mod} \\
  \KEY{Funcon} \quad & \NAMEREF{integer-power} \\
  \KEY{Alias} \quad & \NAMEREF{int-pow} \\
  \KEY{Funcon} \quad & \NAMEREF{integer-absolute-value} \\
  \KEY{Alias} \quad & \NAMEREF{int-abs} \\
  \KEY{Funcon} \quad & \NAMEREF{integer-negate} \\
  \KEY{Alias} \quad & \NAMEREF{int-neg} \\
  \KEY{Funcon} \quad & \NAMEREF{integer-is-less} \\
  \KEY{Alias} \quad & \NAMEREF{is-less} \\
  \KEY{Funcon} \quad & \NAMEREF{integer-is-less-or-equal} \\
  \KEY{Alias} \quad & \NAMEREF{is-less-or-equal} \\
  \KEY{Funcon} \quad & \NAMEREF{integer-is-greater} \\
  \KEY{Alias} \quad & \NAMEREF{is-greater} \\
  \KEY{Funcon} \quad & \NAMEREF{integer-is-greater-or-equal} \\
  \KEY{Alias} \quad & \NAMEREF{is-greater-or-equal} \\
  \KEY{Funcon} \quad & \NAMEREF{binary-natural} \\
  \KEY{Alias} \quad & \NAMEREF{binary} \\
  \KEY{Funcon} \quad & \NAMEREF{octal-natural} \\
  \KEY{Alias} \quad & \NAMEREF{octal} \\
  \KEY{Funcon} \quad & \NAMEREF{decimal-natural} \\
  \KEY{Alias} \quad & \NAMEREF{decimal} \\
  \KEY{Funcon} \quad & \NAMEREF{hexadecimal-natural} \\
  \KEY{Alias} \quad & \NAMEREF{hexadecimal} \\
  \KEY{Funcon} \quad & \NAMEREF{integer-sequence}
  \ ]
\end{align*}$$

$$\begin{align*}
  \KEY{Built-in Type} \quad 
  & \NAMEDECL{integers}  
\\
  \KEY{Alias} \quad
  & \NAMEDECL{ints} = \NAMEREF{integers}
\end{align*}$$


  $$\SHADE{\NAMEREF{integers}}$$ is the type of unbounded integers. Decimal notation is used to
  express particular integer values.


#### Subtypes of integers
               


$$\begin{align*}
  \KEY{Built-in Type} \quad 
  & \NAMEDECL{integers-from}(
                       \_ : \NAMEREF{integers}) <: \NAMEREF{integers} 
\\
  \KEY{Alias} \quad
  & \NAMEDECL{from} = \NAMEREF{integers-from}
\end{align*}$$


  $$\SHADE{\NAMEREF{integers-from}
           (  \VAR{M} )}$$ is the subtype of integers greater than or equal to $$\SHADE{\VAR{M}}$$.


$$\begin{align*}
  \KEY{Built-in Type} \quad 
  & \NAMEDECL{integers-up-to}(
                       \_ : \NAMEREF{integers}) <: \NAMEREF{integers} 
\\
  \KEY{Alias} \quad
  & \NAMEDECL{up-to} = \NAMEREF{integers-up-to}
\end{align*}$$


  $$\SHADE{\NAMEREF{integers-up-to}
           (  \VAR{N} )}$$ is the subtype of integers less than or equal to $$\SHADE{\VAR{N}}$$.


$$\begin{align*}
  \KEY{Type} \quad 
  & \NAMEDECL{bounded-integers}(
                       \VAR{M} : \NAMEREF{integers}, \VAR{N} : \NAMEREF{integers})  \\&\quad
    \leadsto \NAMEREF{integers-from}
               (  \VAR{M} ) \mathbin{\&} \NAMEREF{integers-up-to}
                                    (  \VAR{N} )
\\
  \KEY{Alias} \quad
  & \NAMEDECL{bounded-ints} = \NAMEREF{bounded-integers}
\end{align*}$$


  $$\SHADE{\NAMEREF{bounded-integers}
           (  \VAR{M}, 
                  \VAR{N} )}$$ is the subtype of integers from $$\SHADE{\VAR{M}}$$ to $$\SHADE{\VAR{N}}$$, inclusive.


$$\begin{align*}
  \KEY{Type} \quad 
  & \NAMEDECL{positive-integers}  
    \leadsto \NAMEREF{integers-from}
               (  1 )
\\
  \KEY{Alias} \quad
  & \NAMEDECL{pos-ints} = \NAMEREF{positive-integers}
\end{align*}$$

$$\begin{align*}
  \KEY{Type} \quad 
  & \NAMEDECL{negative-integers}  
    \leadsto \NAMEREF{integers-up-to}
               (  -1 )
\\
  \KEY{Alias} \quad
  & \NAMEDECL{neg-ints} = \NAMEREF{negative-integers}
\end{align*}$$

#### Natural numbers
               


$$\begin{align*}
  \KEY{Type} \quad 
  & \NAMEDECL{natural-numbers}  
    \leadsto \NAMEREF{integers-from}
               (  0 )
\\
  \KEY{Alias} \quad
  & \NAMEDECL{nats} = \NAMEREF{natural-numbers}
\end{align*}$$

$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{natural-successor}(
                       \VAR{N} : \NAMEREF{natural-numbers}) 
    :  \TO \NAMEREF{natural-numbers} 
\\
  \KEY{Alias} \quad
  & \NAMEDECL{nat-succ} = \NAMEREF{natural-successor}
\end{align*}$$

$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{natural-predecessor}(
                       \_ : \NAMEREF{natural-numbers}) 
    :  \TO \NAMEREF{natural-numbers}\QUERY 
\\
  \KEY{Alias} \quad
  & \NAMEDECL{nat-pred} = \NAMEREF{natural-predecessor}
\end{align*}$$

$$\begin{align*}
  \KEY{Assert} \quad
  & \NAMEREF{natural-predecessor}
      (  0 ) 
    == (   \  )
\end{align*}$$

#### Arithmetic
               


$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{integer-add}(
                       \_ : \NAMEREF{integers}\STAR) 
    :  \TO \NAMEREF{integers} 
\\
  \KEY{Alias} \quad
  & \NAMEDECL{int-add} = \NAMEREF{integer-add}
\end{align*}$$

$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{integer-subtract}(
                       \_ : \NAMEREF{integers}, \_ : \NAMEREF{integers}) 
    :  \TO \NAMEREF{integers} 
\\
  \KEY{Alias} \quad
  & \NAMEDECL{int-sub} = \NAMEREF{integer-subtract}
\end{align*}$$

$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{integer-multiply}(
                       \_ : \NAMEREF{integers}\STAR) 
    :  \TO \NAMEREF{integers} 
\\
  \KEY{Alias} \quad
  & \NAMEDECL{int-mul} = \NAMEREF{integer-multiply}
\end{align*}$$

$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{integer-divide}(
                       \_ : \NAMEREF{integers}, \_ : \NAMEREF{integers}) 
    :  \TO \NAMEREF{integers}\QUERY 
\\
  \KEY{Alias} \quad
  & \NAMEDECL{int-div} = \NAMEREF{integer-divide}
\end{align*}$$

$$\begin{align*}
  \KEY{Assert} \quad
  & \NAMEREF{integer-divide}
      (  \_ : \NAMEREF{integers}, 
             0 ) 
    == (   \  )
\end{align*}$$

$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{integer-modulo}(
                       \_ : \NAMEREF{integers}, \_ : \NAMEREF{integers}) 
    :  \TO \NAMEREF{integers}\QUERY 
\\
  \KEY{Alias} \quad
  & \NAMEDECL{int-mod} = \NAMEREF{integer-modulo}
\end{align*}$$

$$\begin{align*}
  \KEY{Assert} \quad
  & \NAMEREF{integer-modulo}
      (  \_ : \NAMEREF{integers}, 
             0 ) 
    == (   \  )
\end{align*}$$

$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{integer-power}(
                       \_ : \NAMEREF{integers}, \_ : \NAMEREF{natural-numbers}) 
    :  \TO \NAMEREF{integers} 
\\
  \KEY{Alias} \quad
  & \NAMEDECL{int-pow} = \NAMEREF{integer-power}
\end{align*}$$

$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{integer-absolute-value}(
                       \_ : \NAMEREF{integers}) 
    :  \TO \NAMEREF{natural-numbers} 
\\
  \KEY{Alias} \quad
  & \NAMEDECL{int-abs} = \NAMEREF{integer-absolute-value}
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{integer-negate}(
                       \VAR{N} : \NAMEREF{integers}) 
    :  \TO \NAMEREF{integers} \\&\quad
    \leadsto \NAMEREF{integer-subtract}
               (  0, 
                      \VAR{N} )
\\
  \KEY{Alias} \quad
  & \NAMEDECL{int-neg} = \NAMEREF{integer-negate}
\end{align*}$$

#### Comparison
               


$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{integer-is-less}(
                       \_ : \NAMEREF{integers}, \_ : \NAMEREF{integers}) 
    :  \TO \NAMEHYPER{../.}{Booleans}{booleans} 
\\
  \KEY{Alias} \quad
  & \NAMEDECL{is-less} = \NAMEREF{integer-is-less}
\end{align*}$$

$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{integer-is-less-or-equal}(
                       \_ : \NAMEREF{integers}, \_ : \NAMEREF{integers}) 
    :  \TO \NAMEHYPER{../.}{Booleans}{booleans} 
\\
  \KEY{Alias} \quad
  & \NAMEDECL{is-less-or-equal} = \NAMEREF{integer-is-less-or-equal}
\end{align*}$$

$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{integer-is-greater}(
                       \_ : \NAMEREF{integers}, \_ : \NAMEREF{integers}) 
    :  \TO \NAMEHYPER{../.}{Booleans}{booleans} 
\\
  \KEY{Alias} \quad
  & \NAMEDECL{is-greater} = \NAMEREF{integer-is-greater}
\end{align*}$$

$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{integer-is-greater-or-equal}(
                       \_ : \NAMEREF{integers}, \_ : \NAMEREF{integers}) 
    :  \TO \NAMEHYPER{../.}{Booleans}{booleans} 
\\
  \KEY{Alias} \quad
  & \NAMEDECL{is-greater-or-equal} = \NAMEREF{integer-is-greater-or-equal}
\end{align*}$$

#### Conversion
               


$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{binary-natural}(
                       \_ : \NAMEHYPER{../../Composite}{Strings}{strings}) 
    :  \TO \NAMEREF{natural-numbers}\QUERY 
\\
  \KEY{Alias} \quad
  & \NAMEDECL{binary} = \NAMEREF{binary-natural}
\end{align*}$$

$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{octal-natural}(
                       \_ : \NAMEHYPER{../../Composite}{Strings}{strings}) 
    :  \TO \NAMEREF{natural-numbers}\QUERY 
\\
  \KEY{Alias} \quad
  & \NAMEDECL{octal} = \NAMEREF{octal-natural}
\end{align*}$$

$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{decimal-natural}(
                       \_ : \NAMEHYPER{../../Composite}{Strings}{strings}) 
    :  \TO \NAMEREF{natural-numbers}\QUERY 
\\
  \KEY{Alias} \quad
  & \NAMEDECL{decimal} = \NAMEREF{decimal-natural}
\end{align*}$$


  Literal natural numbers $$\SHADE{\VAR{N}}$$ are equivalent to $$\SHADE{\NAMEREF{decimal-natural} \ 
           \STRING{N}}$$.


$$\begin{align*}
  \KEY{Built-in Funcon} \quad
  & \NAMEDECL{hexadecimal-natural}(
                       \_ : \NAMEHYPER{../../Composite}{Strings}{strings}) 
    :  \TO \NAMEREF{natural-numbers}\QUERY 
\\
  \KEY{Alias} \quad
  & \NAMEDECL{hexadecimal} = \NAMEREF{hexadecimal-natural}
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{integer-sequence}(
                       \_ : \NAMEREF{integers}, \_ : \NAMEREF{integers}) 
    :  \TO \NAMEREF{integers}\STAR 
\end{align*}$$


  $$\SHADE{\NAMEREF{integer-sequence}
           (  \VAR{M}, 
                  \VAR{N} )}$$ is the seqeunce of integers from $$\SHADE{\VAR{M}}$$ to $$\SHADE{\VAR{N}}$$,
  except that if $$\SHADE{\VAR{M}}$$ is greater than $$\SHADE{\VAR{N}}$$, it is the empty sequence.


$$\begin{align*}
  \KEY{Rule} \quad
    & \RULE{
      & \NAMEREF{is-greater}
          (  \VAR{M}, 
                 \VAR{N} ) 
        == \NAMEHYPER{../.}{Booleans}{false}
      }{
      & \NAMEREF{integer-sequence}
          (  \VAR{M} : \NAMEREF{integers}, 
                 \VAR{N} : \NAMEREF{integers} ) \leadsto \\&\quad
          (  \VAR{M}, 
                 \NAMEREF{integer-sequence}
                  (  \NAMEREF{integer-add}
                          (  \VAR{M}, 
                                 1 ), 
                         \VAR{N} ) )
      }
\\
  \KEY{Rule} \quad
    & \RULE{
      & \NAMEREF{is-greater}
          (  \VAR{M}, 
                 \VAR{N} ) 
        == \NAMEHYPER{../.}{Booleans}{true}
      }{
      & \NAMEREF{integer-sequence}
          (  \VAR{M} : \NAMEREF{integers}, 
                 \VAR{N} : \NAMEREF{integers} ) \leadsto 
          (   \  )
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
[Integers.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Primitive/Integers/Integers.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Values/Primitive/Integers
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Funcons-beta/Values/Primitive/Integers
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Primitive/Integers/Integers.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}
