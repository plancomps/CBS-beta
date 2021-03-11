### Integers
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Type} ~ & \NAMEREF{integers} \\
  \KEY{Alias} ~ & \NAMEREF{ints} \\
  \KEY{Type} ~ & \NAMEREF{integers-from} \\
  \KEY{Alias} ~ & \NAMEREF{from} \\
  \KEY{Type} ~ & \NAMEREF{integers-up-to} \\
  \KEY{Alias} ~ & \NAMEREF{up-to} \\
  \KEY{Type} ~ & \NAMEREF{bounded-integers} \\
  \KEY{Alias} ~ & \NAMEREF{bounded-ints} \\
  \KEY{Type} ~ & \NAMEREF{positive-integers} \\
  \KEY{Alias} ~ & \NAMEREF{pos-ints} \\
  \KEY{Type} ~ & \NAMEREF{negative-integers} \\
  \KEY{Alias} ~ & \NAMEREF{neg-ints} \\
  \KEY{Type} ~ & \NAMEREF{natural-numbers} \\
  \KEY{Alias} ~ & \NAMEREF{nats} \\
  \KEY{Funcon} ~ & \NAMEREF{natural-successor} \\
  \KEY{Alias} ~ & \NAMEREF{nat-succ} \\
  \KEY{Funcon} ~ & \NAMEREF{natural-predecessor} \\
  \KEY{Alias} ~ & \NAMEREF{nat-pred} \\
  \KEY{Funcon} ~ & \NAMEREF{integer-add} \\
  \KEY{Alias} ~ & \NAMEREF{int-add} \\
  \KEY{Funcon} ~ & \NAMEREF{integer-subtract} \\
  \KEY{Alias} ~ & \NAMEREF{int-sub} \\
  \KEY{Funcon} ~ & \NAMEREF{integer-multiply} \\
  \KEY{Alias} ~ & \NAMEREF{int-mul} \\
  \KEY{Funcon} ~ & \NAMEREF{integer-divide} \\
  \KEY{Alias} ~ & \NAMEREF{int-div} \\
  \KEY{Funcon} ~ & \NAMEREF{integer-modulo} \\
  \KEY{Alias} ~ & \NAMEREF{int-mod} \\
  \KEY{Funcon} ~ & \NAMEREF{integer-power} \\
  \KEY{Alias} ~ & \NAMEREF{int-pow} \\
  \KEY{Funcon} ~ & \NAMEREF{integer-absolute-value} \\
  \KEY{Alias} ~ & \NAMEREF{int-abs} \\
  \KEY{Funcon} ~ & \NAMEREF{integer-negate} \\
  \KEY{Alias} ~ & \NAMEREF{int-neg} \\
  \KEY{Funcon} ~ & \NAMEREF{integer-is-less} \\
  \KEY{Alias} ~ & \NAMEREF{is-less} \\
  \KEY{Funcon} ~ & \NAMEREF{integer-is-less-or-equal} \\
  \KEY{Alias} ~ & \NAMEREF{is-less-or-equal} \\
  \KEY{Funcon} ~ & \NAMEREF{integer-is-greater} \\
  \KEY{Alias} ~ & \NAMEREF{is-greater} \\
  \KEY{Funcon} ~ & \NAMEREF{integer-is-greater-or-equal} \\
  \KEY{Alias} ~ & \NAMEREF{is-greater-or-equal} \\
  \KEY{Funcon} ~ & \NAMEREF{binary-natural} \\
  \KEY{Alias} ~ & \NAMEREF{binary} \\
  \KEY{Funcon} ~ & \NAMEREF{octal-natural} \\
  \KEY{Alias} ~ & \NAMEREF{octal} \\
  \KEY{Funcon} ~ & \NAMEREF{decimal-natural} \\
  \KEY{Alias} ~ & \NAMEREF{decimal} \\
  \KEY{Funcon} ~ & \NAMEREF{hexadecimal-natural} \\
  \KEY{Alias} ~ & \NAMEREF{hexadecimal} \\
  \KEY{Funcon} ~ & \NAMEREF{integer-sequence}
  ~ ]
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Type} ~  
  & \NAMEDECL{integers}  
  
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{ints} = \NAMEREF{integers}
\end{aligned}$$


  $$\SHADE{\NAMEREF{integers}}$$ is the type of unbounded integers. Decimal notation is used to
  express particular integer values.


#### Subtypes of integers
               


$$\relax\begin{aligned}\relax
  \KEY{Built-in Type} ~  
  & \NAMEDECL{integers-from}(\_ : \NAMEREF{integers}) <: \NAMEREF{integers} 
  
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{from} = \NAMEREF{integers-from}
\end{aligned}$$


  $$\SHADE{\NAMEREF{integers-from}
           ( \VAR{M} )}$$ is the subtype of integers greater than or equal to $$\SHADE{\VAR{M}}$$.


$$\relax\begin{aligned}\relax
  \KEY{Built-in Type} ~  
  & \NAMEDECL{integers-up-to}(\_ : \NAMEREF{integers}) <: \NAMEREF{integers} 
  
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{up-to} = \NAMEREF{integers-up-to}
\end{aligned}$$


  $$\SHADE{\NAMEREF{integers-up-to}
           ( \VAR{N} )}$$ is the subtype of integers less than or equal to $$\SHADE{\VAR{N}}$$.


$$\relax\begin{aligned}\relax
  \KEY{Type} ~  
  & \NAMEDECL{bounded-integers}(\VAR{M} : \NAMEREF{integers}, \VAR{N} : \NAMEREF{integers})  
  \leadsto \NAMEREF{integers-from}
             ( \VAR{M} ) \ \NAMEREF{integers-up-to}
                        ( \VAR{N} )
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{bounded-ints} = \NAMEREF{bounded-integers}
\end{aligned}$$


  $$\SHADE{\NAMEREF{bounded-integers}
           ( \VAR{M},   
             \VAR{N} )}$$ is the subtype of integers from $$\SHADE{\VAR{M}}$$ to $$\SHADE{\VAR{N}}$$, inclusive.


$$\relax\begin{aligned}\relax
  \KEY{Type} ~  
  & \NAMEDECL{positive-integers}  
  \leadsto \NAMEREF{integers-from}
             ( 1 )
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{pos-ints} = \NAMEREF{positive-integers}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Type} ~  
  & \NAMEDECL{negative-integers}  
  \leadsto \NAMEREF{integers-up-to}
             ( -1 )
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{neg-ints} = \NAMEREF{negative-integers}
\end{aligned}$$

#### Natural numbers
               


$$\relax\begin{aligned}\relax
  \KEY{Type} ~  
  & \NAMEDECL{natural-numbers}  
  \leadsto \NAMEREF{integers-from}
             ( 0 )
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{nats} = \NAMEREF{natural-numbers}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{natural-successor}(\VAR{N} : \NAMEREF{natural-numbers}) :  \TO \NAMEREF{natural-numbers}
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{nat-succ} = \NAMEREF{natural-successor}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{natural-predecessor}(\_ : \NAMEREF{natural-numbers}) :  \TO \NAMEREF{natural-numbers}\QUERY
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{nat-pred} = \NAMEREF{natural-predecessor}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Assert} ~ 
  & \NAMEREF{natural-predecessor}
      ( 0 ) == 
      (  ~  )
\end{aligned}$$

#### Arithmetic
               


$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{integer-add}(\_ : \NAMEREF{integers}\STAR) :  \TO \NAMEREF{integers}
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{int-add} = \NAMEREF{integer-add}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{integer-subtract}(\_ : \NAMEREF{integers}, \_ : \NAMEREF{integers}) :  \TO \NAMEREF{integers}
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{int-sub} = \NAMEREF{integer-subtract}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{integer-multiply}(\_ : \NAMEREF{integers}\STAR) :  \TO \NAMEREF{integers}
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{int-mul} = \NAMEREF{integer-multiply}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{integer-divide}(\_ : \NAMEREF{integers}, \_ : \NAMEREF{integers}) :  \TO \NAMEREF{integers}\QUERY
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{int-div} = \NAMEREF{integer-divide}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Assert} ~ 
  & \NAMEREF{integer-divide}
      ( \_ : \NAMEREF{integers},   
        0 ) == 
      (  ~  )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{integer-modulo}(\_ : \NAMEREF{integers}, \_ : \NAMEREF{integers}) :  \TO \NAMEREF{integers}\QUERY
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{int-mod} = \NAMEREF{integer-modulo}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Assert} ~ 
  & \NAMEREF{integer-modulo}
      ( \_ : \NAMEREF{integers},   
        0 ) == 
      (  ~  )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{integer-power}(\_ : \NAMEREF{integers}, \_ : \NAMEREF{natural-numbers}) :  \TO \NAMEREF{integers}
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{int-pow} = \NAMEREF{integer-power}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{integer-absolute-value}(\_ : \NAMEREF{integers}) :  \TO \NAMEREF{natural-numbers}
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{int-abs} = \NAMEREF{integer-absolute-value}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{integer-negate}(\VAR{N} : \NAMEREF{integers}) :  \TO \NAMEREF{integers} \\
  & \quad \leadsto \NAMEREF{integer-subtract}
                     ( 0, \\&\quad \quad \quad \quad 
                       \VAR{N} )
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{int-neg} = \NAMEREF{integer-negate}
\end{aligned}$$

#### Comparison
               


$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{integer-is-less}(\_ : \NAMEREF{integers}, \_ : \NAMEREF{integers}) :  \TO \NAMEHYPER{../.}{Booleans}{booleans}
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{is-less} = \NAMEREF{integer-is-less}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{integer-is-less-or-equal}(\_ : \NAMEREF{integers}, \_ : \NAMEREF{integers}) :  \TO \NAMEHYPER{../.}{Booleans}{booleans}
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{is-less-or-equal} = \NAMEREF{integer-is-less-or-equal}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{integer-is-greater}(\_ : \NAMEREF{integers}, \_ : \NAMEREF{integers}) :  \TO \NAMEHYPER{../.}{Booleans}{booleans}
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{is-greater} = \NAMEREF{integer-is-greater}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{integer-is-greater-or-equal}(\_ : \NAMEREF{integers}, \_ : \NAMEREF{integers}) :  \TO \NAMEHYPER{../.}{Booleans}{booleans}
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{is-greater-or-equal} = \NAMEREF{integer-is-greater-or-equal}
\end{aligned}$$

#### Conversion
               


$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{binary-natural}(\_ : \NAMEHYPER{../../Composite}{Strings}{strings}) :  \TO \NAMEREF{natural-numbers}\QUERY
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{binary} = \NAMEREF{binary-natural}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{octal-natural}(\_ : \NAMEHYPER{../../Composite}{Strings}{strings}) :  \TO \NAMEREF{natural-numbers}\QUERY
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{octal} = \NAMEREF{octal-natural}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{decimal-natural}(\_ : \NAMEHYPER{../../Composite}{Strings}{strings}) :  \TO \NAMEREF{natural-numbers}\QUERY
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{decimal} = \NAMEREF{decimal-natural}
\end{aligned}$$


  Literal natural numbers $$\SHADE{\VAR{N}}$$ are equivalent to $$\SHADE{\NAMEREF{decimal-natural} ~
           \STRING{N}}$$.


$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{hexadecimal-natural}(\_ : \NAMEHYPER{../../Composite}{Strings}{strings}) :  \TO \NAMEREF{natural-numbers}\QUERY
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{hexadecimal} = \NAMEREF{hexadecimal-natural}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{integer-sequence}(\_ : \NAMEREF{integers}, \_ : \NAMEREF{integers}) :  \TO \NAMEREF{integers}\STAR
\end{aligned}$$


  $$\SHADE{\NAMEREF{integer-sequence}
           ( \VAR{M},   
             \VAR{N} )}$$ is the seqeunce of integers from $$\SHADE{\VAR{M}}$$ to $$\SHADE{\VAR{N}}$$,
  except that if $$\SHADE{\VAR{M}}$$ is greater than $$\SHADE{\VAR{N}}$$, it is the empty sequence.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \RULE{
      & \NAMEREF{is-greater}
          ( \VAR{M},   
            \VAR{N} ) == 
          \NAMEHYPER{../.}{Booleans}{false}
      }{
      & \NAMEREF{integer-sequence}
          ( \VAR{M} : \NAMEREF{integers},   
            \VAR{N} : \NAMEREF{integers} ) \leadsto
          ( \VAR{M},  
            \NAMEREF{integer-sequence}
              ( \NAMEREF{integer-add}
                  ( \VAR{M},    
                    1 ),   
                \VAR{N} ) )
      }
\\
  \KEY{Rule} ~ 
    & \RULE{
      & \NAMEREF{is-greater}
          ( \VAR{M},   
            \VAR{N} ) == 
          \NAMEHYPER{../.}{Booleans}{true}
      }{
      & \NAMEREF{integer-sequence}
          ( \VAR{M} : \NAMEREF{integers},   
            \VAR{N} : \NAMEREF{integers} ) \leadsto
          (  ~  )
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
