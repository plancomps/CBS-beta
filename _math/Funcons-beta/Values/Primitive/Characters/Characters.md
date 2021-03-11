### Characters
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Type} ~ & \NAMEREF{characters} \\
  \KEY{Alias} ~ & \NAMEREF{chars} \\
  \KEY{Datatype} ~ & \NAMEREF{unicode-characters} \\
  \KEY{Alias} ~ & \NAMEREF{unicode-chars} \\
  \KEY{Type} ~ & \NAMEREF{unicode-points} \\
  \KEY{Funcon} ~ & \NAMEREF{unicode-character} \\
  \KEY{Alias} ~ & \NAMEREF{unicode-char} \\
  \KEY{Funcon} ~ & \NAMEREF{unicode-point} \\
  \KEY{Alias} ~ & \NAMEREF{unicode} \\
  \KEY{Type} ~ & \NAMEREF{basic-multilingual-plane-characters} \\
  \KEY{Alias} ~ & \NAMEREF{bmp-chars} \\
  \KEY{Type} ~ & \NAMEREF{basic-multilingual-plane-points} \\
  \KEY{Type} ~ & \NAMEREF{iso-latin-1-characters} \\
  \KEY{Alias} ~ & \NAMEREF{latin-1-chars} \\
  \KEY{Type} ~ & \NAMEREF{iso-latin-1-points} \\
  \KEY{Type} ~ & \NAMEREF{ascii-characters} \\
  \KEY{Alias} ~ & \NAMEREF{ascii-chars} \\
  \KEY{Type} ~ & \NAMEREF{ascii-points} \\
  \KEY{Funcon} ~ & \NAMEREF{ascii-character} \\
  \KEY{Alias} ~ & \NAMEREF{ascii-char} \\
  \KEY{Funcon} ~ & \NAMEREF{utf-8} \\
  \KEY{Funcon} ~ & \NAMEREF{utf-16} \\
  \KEY{Funcon} ~ & \NAMEREF{utf-32} \\
  \KEY{Funcon} ~ & \NAMEREF{backspace} \\
  \KEY{Funcon} ~ & \NAMEREF{horizontal-tab} \\
  \KEY{Funcon} ~ & \NAMEREF{line-feed} \\
  \KEY{Funcon} ~ & \NAMEREF{form-feed} \\
  \KEY{Funcon} ~ & \NAMEREF{carriage-return} \\
  \KEY{Funcon} ~ & \NAMEREF{double-quote} \\
  \KEY{Funcon} ~ & \NAMEREF{single-quote} \\
  \KEY{Funcon} ~ & \NAMEREF{backslash}
  ~ ]
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Type} ~  
  & \NAMEDECL{characters} <: \NAMEHYPER{../..}{Value-Types}{values} 
  
\end{aligned}$$


  Literal characters can be written $$\SHADE{\ATOM{C}}$$ where $$\SHADE{\VAR{C}}$$ is any visible character
  other than a $$\SHADE{\NAMEREF{single-quote}}$$ or $$\SHADE{\NAMEREF{backslash}}$$ character, which need to be
  escaped as $$\SHADE{\ATOM{\APOSTROPHE }}$$ and $$\SHADE{\ATOM{\BACKSLASH }}$$.


$$\relax\begin{aligned}\relax
  \KEY{Alias} ~ 
  & \NAMEDECL{chars} = \NAMEREF{characters}
\end{aligned}$$

#### Unicode character set
               



  The set of Unicode characters and allocated points is open to extension.
  See https://en.wikipedia.org/wiki/Plane_(Unicode)


$$\relax\begin{aligned}\relax
  \KEY{Built-in Datatype} ~ 
  \NAMEDECL{unicode-characters} <: \NAMEREF{characters} 
  
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Alias} ~ 
  & \NAMEDECL{unicode-chars} = \NAMEREF{unicode-characters}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Type} ~  
  & \NAMEDECL{unicode-points} <: \NAMEHYPER{../.}{Integers}{bounded-integers}
                                                             ( 0, \\&\quad 
                                                               \NAMEHYPER{../../Composite}{Bits}{unsigned-bit-vector-maximum}
                                                                 ( 21 ) ) 
  
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{unicode-character}(\_ : \NAMEREF{unicode-points}) : \NAMEREF{unicode-characters}
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{unicode-char} = \NAMEREF{unicode-character}
\end{aligned}$$


  The values in $$\SHADE{\NAMEREF{unicode-characters}}$$ are the values of
  $$\SHADE{\NAMEREF{unicode-character}
           ( \VAR{UP} : \NAMEREF{unicode-points} )}$$.


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{unicode-point}(\_ : \NAMEREF{unicode-characters}) :  \TO \NAMEREF{unicode-points}
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{unicode} = \NAMEREF{unicode-point}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \NAMEREF{unicode-point}
        ( \NAMEREF{unicode-character}
            ( \VAR{UP} : \NAMEREF{unicode-points} ) ) \leadsto
        \VAR{UP}
\end{aligned}$$

#### Unicode basic multilingual plane
               



  The set of Unicode BMP characters and allocated points is open to extension.


$$\relax\begin{aligned}\relax
  \KEY{Built-in Datatype} ~ 
  \NAMEDECL{basic-multilingual-plane-characters} <: \NAMEREF{unicode-characters} 
  
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Alias} ~ 
  & \NAMEDECL{bmp-chars} = \NAMEREF{basic-multilingual-plane-characters}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Type} ~  
  & \NAMEDECL{basic-multilingual-plane-points} <: \NAMEHYPER{../.}{Integers}{bounded-integers}
                                                             ( 0, \\&\quad 
                                                               \NAMEHYPER{../../Composite}{Bits}{unsigned-bit-vector-maximum}
                                                                 ( 17 ) ) 
  
\end{aligned}$$


  The values in $$\SHADE{\NAMEREF{basic-multilingual-plane-characters}}$$ are the values of
  $$\SHADE{\NAMEREF{unicode-character}
           ( \VAR{BMPP} : \NAMEREF{basic-multilingual-plane-points} )}$$.


#### ISO Latin-1 character set
               


$$\relax\begin{aligned}\relax
  \KEY{Built-in Datatype} ~ 
  \NAMEDECL{iso-latin-1-characters} <: \NAMEREF{basic-multilingual-plane-characters} 
  
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Alias} ~ 
  & \NAMEDECL{latin-1-chars} = \NAMEREF{iso-latin-1-characters}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Type} ~  
  & \NAMEDECL{iso-latin-1-points}  
  \leadsto \NAMEHYPER{../.}{Integers}{bounded-integers}
             ( 0,      
               \NAMEHYPER{../../Composite}{Bits}{unsigned-bit-vector-maximum}
                 ( 8 ) )
\end{aligned}$$


  The values in $$\SHADE{\NAMEREF{iso-latin-1-characters}}$$ are the values of
  $$\SHADE{\NAMEREF{unicode-character}
           ( \VAR{ILP} : \NAMEREF{iso-latin-1-points} )}$$.


#### ASCII character set
               


$$\relax\begin{aligned}\relax
  \KEY{Built-in Type} ~  
  & \NAMEDECL{ascii-characters} <: \NAMEREF{iso-latin-1-characters} 
  
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{ascii-chars} = \NAMEREF{ascii-characters}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Type} ~  
  & \NAMEDECL{ascii-points}  
  \leadsto \NAMEHYPER{../.}{Integers}{bounded-integers}
             ( 0,      
               \NAMEHYPER{../../Composite}{Bits}{unsigned-bit-vector-maximum}
                 ( 7 ) )
\end{aligned}$$


  The values in $$\SHADE{\NAMEREF{ascii-characters}}$$ are the values of
  $$\SHADE{\NAMEREF{unicode-character}
           ( \VAR{AP} : \NAMEREF{ascii-points} )}$$.


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{ascii-character}(\_ : \NAMEHYPER{../../Composite}{Strings}{strings}) :  \TO \NAMEREF{ascii-characters}\QUERY
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{ascii-char} = \NAMEREF{ascii-character}
\end{aligned}$$


  $$\SHADE{\NAMEREF{ascii-character} ~
           \STRING{C}}$$ takes a string. When it consists of a single ASCII
  character $$\SHADE{\VAR{C}}$$ it gives the character, otherwise $$\SHADE{(  ~  )}$$.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \NAMEREF{ascii-character} ~
        [ \VAR{C} : \NAMEREF{ascii-characters} ] \leadsto
        \VAR{C}
\\
  \KEY{Rule} ~ 
    & \RULE{
      &  \VAR{C} : \mathop{\sim} \NAMEREF{ascii-characters}
      }{
      & \NAMEREF{ascii-character} ~
          [ \VAR{C} : \NAMEREF{characters} ] \leadsto
          (  ~  )
      }
\\
  \KEY{Rule} ~ 
    & \RULE{
      & \NAMEHYPER{../../Composite}{Sequences}{length}
          ( \VAR{C}\STAR ) \neq 1
      }{
      & \NAMEREF{ascii-character} ~
          [ \VAR{C}\STAR : \NAMEREF{characters}\STAR ] \leadsto
          (  ~  )
      }
\end{aligned}$$

#### Character point encodings
               



  See https://en.wikipedia.org/wiki/Character_encoding


$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{utf-8}(\_ : \NAMEREF{unicode-points}) :  \TO ( \NAMEHYPER{../../Composite}{Bits}{bytes},  
                                                                         ( \NAMEHYPER{../../Composite}{Bits}{bytes},  
                                                                           ( \NAMEHYPER{../../Composite}{Bits}{bytes},  
                                                                             \NAMEHYPER{../../Composite}{Bits}{bytes}\QUERY )\QUERY )\QUERY )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{utf-16}(\_ : \NAMEREF{unicode-points}) :  \TO ( \NAMEHYPER{../../Composite}{Bits}{bit-vectors}
                                                                           ( 16 ),  
                                                                         ( \NAMEHYPER{../../Composite}{Bits}{bit-vectors}
                                                                             ( 16 ) )\QUERY )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Built-in Funcon} ~ 
  & \NAMEDECL{utf-32}(\_ : \NAMEREF{unicode-points}) :  \TO \NAMEHYPER{../../Composite}{Bits}{bit-vectors}
                                                                         ( 32 )
\end{aligned}$$

#### Control characters
               


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{backspace} :  \TO \NAMEREF{ascii-characters} \\
  & \quad \leadsto \NAMEREF{unicode-character}
                     ( \NAMEHYPER{../.}{Integers}{hexadecimal-natural} ~
                         \STRING{0008} )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{horizontal-tab} :  \TO \NAMEREF{ascii-characters} \\
  & \quad \leadsto \NAMEREF{unicode-character}
                     ( \NAMEHYPER{../.}{Integers}{hexadecimal-natural} ~
                         \STRING{0009} )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{line-feed} :  \TO \NAMEREF{ascii-characters} \\
  & \quad \leadsto \NAMEREF{unicode-character}
                     ( \NAMEHYPER{../.}{Integers}{hexadecimal-natural} ~
                         \STRING{000a} )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{form-feed} :  \TO \NAMEREF{ascii-characters} \\
  & \quad \leadsto \NAMEREF{unicode-character}
                     ( \NAMEHYPER{../.}{Integers}{hexadecimal-natural} ~
                         \STRING{000c} )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{carriage-return} :  \TO \NAMEREF{ascii-characters} \\
  & \quad \leadsto \NAMEREF{unicode-character}
                     ( \NAMEHYPER{../.}{Integers}{hexadecimal-natural} ~
                         \STRING{000d} )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{double-quote} :  \TO \NAMEREF{ascii-characters} \\
  & \quad \leadsto \NAMEREF{unicode-character}
                     ( \NAMEHYPER{../.}{Integers}{hexadecimal-natural} ~
                         \STRING{0022} )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{single-quote} :  \TO \NAMEREF{ascii-characters} \\
  & \quad \leadsto \NAMEREF{unicode-character}
                     ( \NAMEHYPER{../.}{Integers}{hexadecimal-natural} ~
                         \STRING{0027} )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{backslash} :  \TO \NAMEREF{ascii-characters} \\
  & \quad \leadsto \NAMEREF{unicode-character}
                     ( \NAMEHYPER{../.}{Integers}{hexadecimal-natural} ~
                         \STRING{005c} )
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
