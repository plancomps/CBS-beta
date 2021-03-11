---
layout: default
title: "Bits"
math: katex
parent: Composite
ancestor: Funcons-beta

---

[Funcons-beta] : [Bits.cbs]

### Bits and bit vectors
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Type} ~ & \NAMEREF{bits} \\
  \KEY{Datatype} ~ & \NAMEREF{bit-vectors} \\
  \KEY{Funcon} ~ & \NAMEREF{bit-vector} \\
  \KEY{Type} ~ & \NAMEREF{bytes} \\
  \KEY{Alias} ~ & \NAMEREF{octets} \\
  \KEY{Funcon} ~ & \NAMEREF{bit-vector-not} \\
  \KEY{Funcon} ~ & \NAMEREF{bit-vector-and} \\
  \KEY{Funcon} ~ & \NAMEREF{bit-vector-or} \\
  \KEY{Funcon} ~ & \NAMEREF{bit-vector-xor} \\
  \KEY{Funcon} ~ & \NAMEREF{bit-vector-shift-left} \\
  \KEY{Funcon} ~ & \NAMEREF{bit-vector-logical-shift-right} \\
  \KEY{Funcon} ~ & \NAMEREF{bit-vector-arithmetic-shift-right} \\
  \KEY{Funcon} ~ & \NAMEREF{integer-to-bit-vector} \\
  \KEY{Funcon} ~ & \NAMEREF{bit-vector-to-integer} \\
  \KEY{Funcon} ~ & \NAMEREF{bit-vector-to-natural} \\
  \KEY{Funcon} ~ & \NAMEREF{unsigned-bit-vector-maximum} \\
  \KEY{Funcon} ~ & \NAMEREF{signed-bit-vector-maximum} \\
  \KEY{Funcon} ~ & \NAMEREF{signed-bit-vector-minimum} \\
  \KEY{Funcon} ~ & \NAMEREF{is-in-signed-bit-vector} \\
  \KEY{Funcon} ~ & \NAMEREF{is-in-unsigned-bit-vector}
  ~ ]
\end{aligned}$$

#### Bits
               


$$\relax\begin{aligned}\relax
  \KEY{Type} ~  
  & \NAMEDECL{bits}  
  \leadsto \NAMEHYPER{../../Primitive}{Booleans}{booleans}
\end{aligned}$$


  $$\SHADE{\NAMEHYPER{../../Primitive}{Booleans}{false}}$$ represents the absence of a bit, $$\SHADE{\NAMEHYPER{../../Primitive}{Booleans}{true}}$$ its presence.


#### Bit vectors
               


$$\relax\begin{aligned}\relax
  \KEY{Datatype} ~ 
  \NAMEDECL{bit-vectors}(\VAR{N} : \NAMEHYPER{../../Primitive}{Integers}{natural-numbers})  
  ~ ::= ~ & \NAMEDECL{bit-vector} (\_ : \NAMEREF{bits}^{\VAR{N}})
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Type} ~  
  & \NAMEDECL{bytes}  
  \leadsto \NAMEREF{bit-vectors}
             ( 8 )
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{octets} = \NAMEREF{bytes}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Meta-variables} ~ 
  & \VAR{BT} <: \NAMEREF{bit-vectors}
                                                     ( \_ )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{bit-vector-not}(\_ : \VAR{BT}) :  \TO \VAR{BT}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{bit-vector-and}(\_ : \VAR{BT}, \_ : \VAR{BT}) :  \TO \VAR{BT}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{bit-vector-or}(\_ : \VAR{BT}, \_ : \VAR{BT}) :  \TO \VAR{BT}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{bit-vector-xor}(\_ : \VAR{BT}, \_ : \VAR{BT}) :  \TO \VAR{BT}
\end{aligned}$$


  The above four funcons are the natural extensions of funcons from $$\SHADE{\NAMEHYPER{../../Primitive}{Booleans}{booleans}}$$
  to $$\SHADE{\NAMEREF{bit-vectors}
           ( \VAR{N} )}$$ of the same length.


$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{bit-vector-shift-left}(\_ : \VAR{BT}, \_ : \NAMEHYPER{../../Primitive}{Integers}{natural-numbers}) : \VAR{BT}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{bit-vector-logical-shift-right}(\_ : \VAR{BT}, \_ : \NAMEHYPER{../../Primitive}{Integers}{natural-numbers}) : \VAR{BT}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{bit-vector-arithmetic-shift-right}(\_ : \VAR{BT}, \_ : \NAMEHYPER{../../Primitive}{Integers}{natural-numbers}) : \VAR{BT}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{integer-to-bit-vector}(\_ : \NAMEHYPER{../../Primitive}{Integers}{integers}, \VAR{N} : \NAMEHYPER{../../Primitive}{Integers}{natural-numbers}) : \NAMEREF{bit-vectors}
                                                            ( \VAR{N} )
\end{aligned}$$


  $$\SHADE{\NAMEREF{integer-to-bit-vector}
           ( \VAR{M},   
             \VAR{N} )}$$ converts an integer $$\SHADE{\VAR{M}}$$ to a bit-vector of
  length $$\SHADE{\VAR{N}}$$, using Two's Complement representation.  If the integer is out of
  range of the representation, it will wrap around (modulo 2^N).


$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{bit-vector-to-integer}(\_ : \VAR{BT}) :  \TO \NAMEHYPER{../../Primitive}{Integers}{integers}
\end{aligned}$$


  $$\SHADE{\NAMEREF{bit-vector-to-integer}
           ( \VAR{B} )}$$ interprets a bit-vector $$\SHADE{\VAR{BV}}$$ as an integer
  in Two's Complement representation.


$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{bit-vector-to-natural}(\_ : \VAR{BT}) :  \TO \NAMEHYPER{../../Primitive}{Integers}{natural-numbers}
\end{aligned}$$


  $$\SHADE{\NAMEREF{bit-vector-to-natural}
           ( \VAR{BV} )}$$ interprets a bit-vector $$\SHADE{\VAR{BV}}$$ as a natural number
  in unsigned representation.


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{unsigned-bit-vector-maximum}(\VAR{N} : \NAMEHYPER{../../Primitive}{Integers}{natural-numbers}) :  \TO \NAMEHYPER{../../Primitive}{Integers}{natural-numbers} \\
  & \quad \leadsto \NAMEHYPER{../../Primitive}{Integers}{integer-subtract}
                     ( \NAMEHYPER{../../Primitive}{Integers}{integer-power}
                         ( 2, \\&\quad \quad \quad \quad \quad 
                           \VAR{N} ), \\&\quad \quad \quad \quad 
                       1 )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{signed-bit-vector-maximum}(\VAR{N} : \NAMEHYPER{../../Primitive}{Integers}{natural-numbers}) :  \TO \NAMEHYPER{../../Primitive}{Integers}{integers} \\
  & \quad \leadsto \NAMEHYPER{../../Primitive}{Integers}{integer-subtract}
                     ( \NAMEHYPER{../../Primitive}{Integers}{integer-power}
                         ( 2, \\&\quad \quad \quad \quad \quad 
                           \NAMEHYPER{../../Primitive}{Integers}{integer-subtract}
                             ( \VAR{N}, \\&\quad \quad \quad \quad \quad \quad 
                               1 ) ), \\&\quad \quad \quad \quad 
                       1 )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{signed-bit-vector-minimum}(\VAR{N} : \NAMEHYPER{../../Primitive}{Integers}{natural-numbers}) :  \TO \NAMEHYPER{../../Primitive}{Integers}{integers} \\
  & \quad \leadsto \NAMEHYPER{../../Primitive}{Integers}{integer-negate}
                     ( \NAMEHYPER{../../Primitive}{Integers}{integer-power}
                         ( 2, \\&\quad \quad \quad \quad \quad 
                           \NAMEHYPER{../../Primitive}{Integers}{integer-subtract}
                             ( \VAR{N}, \\&\quad \quad \quad \quad \quad \quad 
                               1 ) ) )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{is-in-signed-bit-vector}(\VAR{M} : \NAMEHYPER{../../Primitive}{Integers}{integers}, \VAR{N} : \NAMEHYPER{../../Primitive}{Integers}{natural-numbers}) :  \TO \NAMEHYPER{../../Primitive}{Booleans}{booleans} \\
  & \quad \leadsto \NAMEHYPER{../../Primitive}{Booleans}{and}
                     ( \NAMEHYPER{../../Primitive}{Integers}{integer-is-less-or-equal}
                         ( \VAR{M}, \\&\quad \quad \quad \quad \quad 
                           \NAMEREF{signed-bit-vector-maximum}
                             ( \VAR{N} ) ), \\&\quad \quad \quad \quad 
                       \NAMEHYPER{../../Primitive}{Integers}{integer-is-greater-or-equal}
                         ( \VAR{M}, \\&\quad \quad \quad \quad \quad 
                           \NAMEREF{signed-bit-vector-minimum}
                             ( \VAR{N} ) ) )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{is-in-unsigned-bit-vector}(\VAR{M} : \NAMEHYPER{../../Primitive}{Integers}{integers}, \VAR{N} : \NAMEHYPER{../../Primitive}{Integers}{natural-numbers}) :  \TO \NAMEHYPER{../../Primitive}{Booleans}{booleans} \\
  & \quad \leadsto \NAMEHYPER{../../Primitive}{Booleans}{and}
                     ( \NAMEHYPER{../../Primitive}{Integers}{integer-is-less-or-equal}
                         ( \VAR{M}, \\&\quad \quad \quad \quad \quad 
                           \NAMEREF{unsigned-bit-vector-maximum}
                             ( \VAR{N} ) ), \\&\quad \quad \quad \quad 
                       \NAMEHYPER{../../Primitive}{Integers}{integer-is-greater-or-equal}
                         ( \VAR{M}, \\&\quad \quad \quad \quad \quad 
                           0 ) )
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


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[Bits.cbs]: /CBS-beta/Funcons-beta/Values/Composite/Bits/Bits.cbs
  "CBS SOURCE FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Composite/Bits/Bits.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
