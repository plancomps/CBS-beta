### Floats
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Datatype} ~ & \NAMEREF{float-formats} \\
  \KEY{Funcon} ~ & \NAMEREF{binary32} \\
  \KEY{Funcon} ~ & \NAMEREF{binary64} \\
  \KEY{Funcon} ~ & \NAMEREF{binary128} \\
  \KEY{Funcon} ~ & \NAMEREF{decimal64} \\
  \KEY{Funcon} ~ & \NAMEREF{decimal128} \\
  \KEY{Type} ~ & \NAMEREF{floats} \\
  \KEY{Funcon} ~ & \NAMEREF{float} \\
  \KEY{Funcon} ~ & \NAMEREF{quiet-not-a-number} \\
  \KEY{Alias} ~ & \NAMEREF{qNaN} \\
  \KEY{Funcon} ~ & \NAMEREF{signaling-not-a-number} \\
  \KEY{Alias} ~ & \NAMEREF{sNaN} \\
  \KEY{Funcon} ~ & \NAMEREF{positive-infinity} \\
  \KEY{Alias} ~ & \NAMEREF{pos-inf} \\
  \KEY{Funcon} ~ & \NAMEREF{negative-infinity} \\
  \KEY{Alias} ~ & \NAMEREF{neg-inf} \\
  \KEY{Funcon} ~ & \NAMEREF{float-convert} \\
  \KEY{Funcon} ~ & \NAMEREF{decimal-float} \\
  \KEY{Funcon} ~ & \NAMEREF{float-equal} \\
  \KEY{Funcon} ~ & \NAMEREF{float-is-less} \\
  \KEY{Funcon} ~ & \NAMEREF{float-is-less-or-equal} \\
  \KEY{Funcon} ~ & \NAMEREF{float-is-greater} \\
  \KEY{Funcon} ~ & \NAMEREF{float-is-greater-or-equal} \\
  \KEY{Funcon} ~ & \NAMEREF{float-negate} \\
  \KEY{Funcon} ~ & \NAMEREF{float-absolute-value} \\
  \KEY{Funcon} ~ & \NAMEREF{float-add} \\
  \KEY{Funcon} ~ & \NAMEREF{float-subtract} \\
  \KEY{Funcon} ~ & \NAMEREF{float-multiply} \\
  \KEY{Funcon} ~ & \NAMEREF{float-multiply-add} \\
  \KEY{Funcon} ~ & \NAMEREF{float-divide} \\
  \KEY{Funcon} ~ & \NAMEREF{float-remainder} \\
  \KEY{Funcon} ~ & \NAMEREF{float-sqrt} \\
  \KEY{Funcon} ~ & \NAMEREF{float-integer-power} \\
  \KEY{Funcon} ~ & \NAMEREF{float-float-power} \\
  \KEY{Funcon} ~ & \NAMEREF{float-round-ties-to-even} \\
  \KEY{Funcon} ~ & \NAMEREF{float-round-ties-to-infinity} \\
  \KEY{Funcon} ~ & \NAMEREF{float-floor} \\
  \KEY{Funcon} ~ & \NAMEREF{float-ceiling} \\
  \KEY{Funcon} ~ & \NAMEREF{float-truncate} \\
  \KEY{Funcon} ~ & \NAMEREF{float-pi} \\
  \KEY{Funcon} ~ & \NAMEREF{float-e} \\
  \KEY{Funcon} ~ & \NAMEREF{float-log} \\
  \KEY{Funcon} ~ & \NAMEREF{float-log10} \\
  \KEY{Funcon} ~ & \NAMEREF{float-exp} \\
  \KEY{Funcon} ~ & \NAMEREF{float-sin} \\
  \KEY{Funcon} ~ & \NAMEREF{float-cos} \\
  \KEY{Funcon} ~ & \NAMEREF{float-tan} \\
  \KEY{Funcon} ~ & \NAMEREF{float-asin} \\
  \KEY{Funcon} ~ & \NAMEREF{float-acos} \\
  \KEY{Funcon} ~ & \NAMEREF{float-atan} \\
  \KEY{Funcon} ~ & \NAMEREF{float-sinh} \\
  \KEY{Funcon} ~ & \NAMEREF{float-cosh} \\
  \KEY{Funcon} ~ & \NAMEREF{float-tanh} \\
  \KEY{Funcon} ~ & \NAMEREF{float-asinh} \\
  \KEY{Funcon} ~ & \NAMEREF{float-acosh} \\
  \KEY{Funcon} ~ & \NAMEREF{float-atanh} \\
  \KEY{Funcon} ~ & \NAMEREF{float-atan2}
  ~ ]
\end{aligned}$$


  Floating-point numbers according to the IEEE 754 Standard (2008).

  See:
    - http://doi.org/10.1109/IEEESTD.2008.4610935
    - https://en.wikipedia.org/wiki/IEEE_754


$$\relax\begin{aligned}\relax
  \KEY{Datatype} ~ 
  \NAMEDECL{float-formats}  
  ~ ::= ~ & 
  \NAMEDECL{binary32}  \\
  ~ \mid ~ & \NAMEDECL{binary64}  \\
  ~ \mid ~ & \NAMEDECL{binary128}  \\
  ~ \mid ~ & \NAMEDECL{decimal64}  \\
  ~ \mid ~ & \NAMEDECL{decimal128} 
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Type} ~  
  & \NAMEDECL{floats}(\_ : \NAMEREF{float-formats})  
  
\end{aligned}$$


  Note that for distinct formats $$\SHADE{\VAR{FF}\SUB{1}}$$, $$\SHADE{\VAR{FF}\SUB{2}}$$, the types $$\SHADE{\NAMEREF{floats}
           ( \VAR{FF}\SUB{1} )}$$ and
  $$\SHADE{\NAMEREF{floats}
           ( \VAR{FF}\SUB{2} )}$$ are not necessarily disjoint.


$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{float}(\VAR{FF} : \NAMEREF{float-formats}, \_ : \NAMEHYPER{../.}{Integers}{bounded-integers}
                                ( 0,   
                                  1 ), \_ : \NAMEHYPER{../.}{Integers}{natural-numbers}, \_ : \NAMEHYPER{../.}{Integers}{integers}) :  \TO \NAMEREF{floats}
                                                                         ( \VAR{FF} )
\end{aligned}$$


  Each finite number is described by three integers: 
  * s = a sign (zero or one), 
  * c = a significand (or 'coefficient'), 
  * q = an exponent. 
  The numerical value of a finite number is (-1)^s * c * b^q
  where b is the base (2 or 10), also called radix.
  
  The possible finite values that can be represented in a format
  are determined by the base b, the number of digits in the significand 
  (precision p), and the exponent parameter emax:
  * c must be an integer in the range zero through (b^p)-1
    (e.g., if b=10 and p=7 then c is 0 through 9999999);
  * q must be an integer such that 1-emax <= q+p-1 <= emax
    (e.g., if p=7 and emax=96 then q is -101 through 90).

  Note that $$\SHADE{\NAMEREF{float}
           ( \VAR{FF},   
             \VAR{S},   
             \VAR{C},   
             \VAR{Q} )}$$ is not a 1-1 operation.


$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{quiet-not-a-number}(\VAR{FF} : \NAMEREF{float-formats}) : \NAMEREF{floats}
                                                            ( \VAR{FF} )
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{qNaN} = \NAMEREF{quiet-not-a-number}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{signaling-not-a-number}(\VAR{FF} : \NAMEREF{float-formats}) : \NAMEREF{floats}
                                                            ( \VAR{FF} )
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{sNaN} = \NAMEREF{signaling-not-a-number}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{positive-infinity}(\VAR{FF} : \NAMEREF{float-formats}) : \NAMEREF{floats}
                                                            ( \VAR{FF} )
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{pos-inf} = \NAMEREF{positive-infinity}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{negative-infinity}(\VAR{FF} : \NAMEREF{float-formats}) : \NAMEREF{floats}
                                                            ( \VAR{FF} )
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{neg-inf} = \NAMEREF{negative-infinity}
\end{aligned}$$

#### Conversions
               


$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{float-convert}(\VAR{FF}\SUB{1} : \NAMEREF{float-formats}, \VAR{FF}\SUB{2} : \NAMEREF{float-formats}, \VAR{F} : \NAMEREF{floats}
                                ( \VAR{FF}\SUB{1} )) :  \TO \NAMEREF{floats}
                                                                         ( \VAR{FF}\SUB{2} )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{decimal-float}(\VAR{FF} : \NAMEREF{float-formats}, \_ : \NAMEHYPER{../../Composite}{Strings}{strings}, \_ : \NAMEHYPER{../../Composite}{Strings}{strings}, \_ : \NAMEHYPER{../../Composite}{Strings}{strings}) :  \TO \NAMEREF{floats}
                                                                         ( \VAR{FF} )
\end{aligned}$$


  $$\SHADE{\NAMEREF{decimal-float}
           ( \VAR{F},   
             \STRING{M},   
             \STRING{N},   
             \STRING{E} )}$$ is an approximation in $$\SHADE{\NAMEREF{floats}
           ( \VAR{FF} )}$$ to the
  value of 'M.N' times 10 to the power 'E', where "M.N" is decimal notation
  (optionally-signed) for a fixed-point number and "E" is decimal notation
  (optionally signed) for an integer. When any argument string is invalid,
  the result is $$\SHADE{\NAMEREF{quiet-not-a-number}
           ( \VAR{F} )}$$.


#### Comparison
               


$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{float-equal}(\VAR{FF} : \NAMEREF{float-formats}, \_ : \NAMEREF{floats}
                                ( \VAR{FF} ), \_ : \NAMEREF{floats}
                                ( \VAR{FF} )) :  \TO \NAMEHYPER{../.}{Booleans}{booleans}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{float-is-less}(\VAR{FF} : \NAMEREF{float-formats}, \_ : \NAMEREF{floats}
                                ( \VAR{FF} ), \_ : \NAMEREF{floats}
                                ( \VAR{FF} )) :  \TO \NAMEHYPER{../.}{Booleans}{booleans}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{float-is-less-or-equal}(\VAR{FF} : \NAMEREF{float-formats}, \_ : \NAMEREF{floats}
                                ( \VAR{FF} ), \_ : \NAMEREF{floats}
                                ( \VAR{FF} )) :  \TO \NAMEHYPER{../.}{Booleans}{booleans}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{float-is-greater}(\VAR{FF} : \NAMEREF{float-formats}, \_ : \NAMEREF{floats}
                                ( \VAR{FF} ), \_ : \NAMEREF{floats}
                                ( \VAR{FF} )) :  \TO \NAMEHYPER{../.}{Booleans}{booleans}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{float-is-greater-or-equal}(\VAR{FF} : \NAMEREF{float-formats}, \_ : \NAMEREF{floats}
                                ( \VAR{FF} ), \_ : \NAMEREF{floats}
                                ( \VAR{FF} )) :  \TO \NAMEHYPER{../.}{Booleans}{booleans}
\end{aligned}$$

#### Arithmetic
               


$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{float-negate}(\VAR{FF} : \NAMEREF{float-formats}, \_ : \NAMEREF{floats}
                                ( \VAR{FF} )) :  \TO \NAMEREF{floats}
                                                                         ( \VAR{FF} )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{float-absolute-value}(\VAR{FF} : \NAMEREF{float-formats}, \_ : \NAMEREF{floats}
                                ( \VAR{FF} )) :  \TO \NAMEREF{floats}
                                                                         ( \VAR{FF} )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{float-add}(\VAR{FF} : \NAMEREF{float-formats}, \_ : \NAMEREF{floats}
                                ( \VAR{FF} ), \_ : \NAMEREF{floats}
                                ( \VAR{FF} )) :  \TO \NAMEREF{floats}
                                                                         ( \VAR{FF} )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{float-subtract}(\VAR{FF} : \NAMEREF{float-formats}, \_ : \NAMEREF{floats}
                                ( \VAR{FF} ), \_ : \NAMEREF{floats}
                                ( \VAR{FF} )) :  \TO \NAMEREF{floats}
                                                                         ( \VAR{FF} )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{float-multiply}(\VAR{FF} : \NAMEREF{float-formats}, \_ : \NAMEREF{floats}
                                ( \VAR{FF} ), \_ : \NAMEREF{floats}
                                ( \VAR{FF} )) :  \TO \NAMEREF{floats}
                                                                         ( \VAR{FF} )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{float-multiply-add}(\VAR{FF} : \NAMEREF{float-formats}, \_ : \NAMEREF{floats}
                                ( \VAR{FF} ), \_ : \NAMEREF{floats}
                                ( \VAR{FF} ), \_ : \NAMEREF{floats}
                                ( \VAR{FF} )) :  \TO \NAMEREF{floats}
                                                                         ( \VAR{FF} )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{float-divide}(\VAR{FF} : \NAMEREF{float-formats}, \_ : \NAMEREF{floats}
                                ( \VAR{FF} ), \_ : \NAMEREF{floats}
                                ( \VAR{FF} )) :  \TO \NAMEREF{floats}
                                                                         ( \VAR{FF} )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{float-remainder}(\VAR{FF} : \NAMEREF{float-formats}, \_ : \NAMEREF{floats}
                                ( \VAR{FF} ), \_ : \NAMEREF{floats}
                                ( \VAR{FF} )) :  \TO \NAMEREF{floats}
                                                                         ( \VAR{FF} )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{float-sqrt}(\VAR{FF} : \NAMEREF{float-formats}, \_ : \NAMEREF{floats}
                                ( \VAR{FF} )) :  \TO \NAMEREF{floats}
                                                                         ( \VAR{FF} )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{float-integer-power}(\VAR{FF} : \NAMEREF{float-formats}, \_ : \NAMEREF{floats}
                                ( \VAR{FF} ), \_ : \NAMEHYPER{../.}{Integers}{integers}) :  \TO \NAMEREF{floats}
                                                                         ( \VAR{FF} )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{float-float-power}(\VAR{FF} : \NAMEREF{float-formats}, \_ : \NAMEREF{floats}
                                ( \VAR{FF} ), \_ : \NAMEREF{floats}
                                ( \VAR{FF} )) :  \TO \NAMEREF{floats}
                                                                         ( \VAR{FF} )
\end{aligned}$$

#### Rounding
               


$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{float-round-ties-to-even}(\VAR{FF} : \NAMEREF{float-formats}, \_ : \NAMEREF{floats}
                                ( \VAR{FF} )) :  \TO \NAMEHYPER{../.}{Integers}{integers}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{float-round-ties-to-infinity}(\VAR{FF} : \NAMEREF{float-formats}, \_ : \NAMEREF{floats}
                                ( \VAR{FF} )) :  \TO \NAMEHYPER{../.}{Integers}{integers}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{float-floor}(\VAR{FF} : \NAMEREF{float-formats}, \_ : \NAMEREF{floats}
                                ( \VAR{FF} )) :  \TO \NAMEHYPER{../.}{Integers}{integers}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{float-ceiling}(\VAR{FF} : \NAMEREF{float-formats}, \_ : \NAMEREF{floats}
                                ( \VAR{FF} )) :  \TO \NAMEHYPER{../.}{Integers}{integers}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{float-truncate}(\VAR{FF} : \NAMEREF{float-formats}, \_ : \NAMEREF{floats}
                                ( \VAR{FF} )) :  \TO \NAMEHYPER{../.}{Integers}{integers}
\end{aligned}$$

#### Miscellaneous
               


$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{float-pi}(\VAR{FF} : \NAMEREF{float-formats}) :  \TO \NAMEREF{floats}
                                                                         ( \VAR{FF} )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{float-e}(\VAR{FF} : \NAMEREF{float-formats}) :  \TO \NAMEREF{floats}
                                                                         ( \VAR{FF} )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{float-log}(\VAR{FF} : \NAMEREF{float-formats}, \_ : \NAMEREF{floats}
                                ( \VAR{FF} )) :  \TO \NAMEREF{floats}
                                                                         ( \VAR{FF} )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{float-log10}(\VAR{FF} : \NAMEREF{float-formats}, \_ : \NAMEREF{floats}
                                ( \VAR{FF} )) :  \TO \NAMEREF{floats}
                                                                         ( \VAR{FF} )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{float-exp}(\VAR{FF} : \NAMEREF{float-formats}, \_ : \NAMEREF{floats}
                                ( \VAR{FF} )) :  \TO \NAMEREF{floats}
                                                                         ( \VAR{FF} )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{float-sin}(\VAR{FF} : \NAMEREF{float-formats}, \_ : \NAMEREF{floats}
                                ( \VAR{FF} )) :  \TO \NAMEREF{floats}
                                                                         ( \VAR{FF} )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{float-cos}(\VAR{FF} : \NAMEREF{float-formats}, \_ : \NAMEREF{floats}
                                ( \VAR{FF} )) :  \TO \NAMEREF{floats}
                                                                         ( \VAR{FF} )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{float-tan}(\VAR{FF} : \NAMEREF{float-formats}, \_ : \NAMEREF{floats}
                                ( \VAR{FF} )) :  \TO \NAMEREF{floats}
                                                                         ( \VAR{FF} )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{float-asin}(\VAR{FF} : \NAMEREF{float-formats}, \_ : \NAMEREF{floats}
                                ( \VAR{FF} )) :  \TO \NAMEREF{floats}
                                                                         ( \VAR{FF} )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{float-acos}(\VAR{FF} : \NAMEREF{float-formats}, \_ : \NAMEREF{floats}
                                ( \VAR{FF} )) :  \TO \NAMEREF{floats}
                                                                         ( \VAR{FF} )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{float-atan}(\VAR{FF} : \NAMEREF{float-formats}, \_ : \NAMEREF{floats}
                                ( \VAR{FF} )) :  \TO \NAMEREF{floats}
                                                                         ( \VAR{FF} )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{float-sinh}(\VAR{FF} : \NAMEREF{float-formats}, \_ : \NAMEREF{floats}
                                ( \VAR{FF} )) :  \TO \NAMEREF{floats}
                                                                         ( \VAR{FF} )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{float-cosh}(\VAR{FF} : \NAMEREF{float-formats}, \_ : \NAMEREF{floats}
                                ( \VAR{FF} )) :  \TO \NAMEREF{floats}
                                                                         ( \VAR{FF} )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{float-tanh}(\VAR{FF} : \NAMEREF{float-formats}, \_ : \NAMEREF{floats}
                                ( \VAR{FF} )) :  \TO \NAMEREF{floats}
                                                                         ( \VAR{FF} )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{float-asinh}(\VAR{FF} : \NAMEREF{float-formats}, \_ : \NAMEREF{floats}
                                ( \VAR{FF} )) :  \TO \NAMEREF{floats}
                                                                         ( \VAR{FF} )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{float-acosh}(\VAR{FF} : \NAMEREF{float-formats}, \_ : \NAMEREF{floats}
                                ( \VAR{FF} )) :  \TO \NAMEREF{floats}
                                                                         ( \VAR{FF} )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{float-atanh}(\VAR{FF} : \NAMEREF{float-formats}, \_ : \NAMEREF{floats}
                                ( \VAR{FF} )) :  \TO \NAMEREF{floats}
                                                                         ( \VAR{FF} )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{float-atan2}(\VAR{FF} : \NAMEREF{float-formats}, \_ : \NAMEREF{floats}
                                ( \VAR{FF} ), \_ : \NAMEREF{floats}
                                ( \VAR{FF} )) :  \TO \NAMEREF{floats}
                                                                         ( \VAR{FF} )
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
