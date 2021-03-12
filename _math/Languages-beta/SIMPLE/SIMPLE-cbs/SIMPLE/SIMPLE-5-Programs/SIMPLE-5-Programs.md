$$\KEY{Language} \STRING{SIMPLE}$$

# $$\SECT{5}$$ Programs
           


$$\relax\begin{aligned}\relax
  \KEY{Syntax} ~ 
    \VARDECL{Pgm} : \SYN{pgm}
      ~ ::= ~ & \SYNREF{decls}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{run} \LEFTPHRASE ~ \VARREF{Decls} : \SYNREF{pgm} ~ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values} 
    = \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{scope}
        ( \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{collateral}
            ( \SEMREF{declarations} \LEFTPHRASE ~ \VAR{Decls} ~ \RIGHTPHRASE  ), \\&\quad \quad \quad \quad 
          \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
            ( \SEMREF{initialisations} \LEFTPHRASE ~ \VAR{Decls} ~ \RIGHTPHRASE , \\&\quad \quad \quad \quad \quad 
              \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Functions}{apply}
                ( \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned}
                    ( \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound}
                        ( \STRING{main} ) ), \\&\quad \quad \quad \quad \quad \quad 
                  \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuple}
                    (  ~  ) ) ) )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Syntax} ~ 
    \VARDECL{Decls} : \SYN{decls}
      ~ ::= ~ & \SYNHYPER{../.}{SIMPLE-4-Declarations}{decl} ~ \SYNREF{decls}\QUERY
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{declarations} \LEFTPHRASE ~ \_ : \SYNREF{decls} ~ \RIGHTPHRASE  
    : (  \TO \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{environments} )\PLUS
\\
  \KEY{Rule} ~ 
    & \SEMREF{declarations} \LEFTPHRASE ~ \VARHYPER{../.}{SIMPLE-4-Declarations}{Decl} ~ \RIGHTPHRASE  = \\&\quad
      \SEMHYPER{../.}{SIMPLE-4-Declarations}{declare} \LEFTPHRASE ~ \VAR{Decl} ~ \RIGHTPHRASE 
\\
  \KEY{Rule} ~ 
    & \SEMREF{declarations} \LEFTPHRASE ~ \VARHYPER{../.}{SIMPLE-4-Declarations}{Decl} ~ \VARREF{Decls} ~ \RIGHTPHRASE  = \\&\quad
      \SEMHYPER{../.}{SIMPLE-4-Declarations}{declare} \LEFTPHRASE ~ \VAR{Decl} ~ \RIGHTPHRASE , \\&\quad 
      \SEMREF{declarations} \LEFTPHRASE ~ \VAR{Decls} ~ \RIGHTPHRASE 
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{initialisations} \LEFTPHRASE ~ \_ : \SYNREF{decls} ~ \RIGHTPHRASE  
    : (  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} )\PLUS
\\
  \KEY{Rule} ~ 
    & \SEMREF{initialisations} \LEFTPHRASE ~ \VARHYPER{../.}{SIMPLE-4-Declarations}{Decl} ~ \RIGHTPHRASE  = \\&\quad
      \SEMHYPER{../.}{SIMPLE-4-Declarations}{initialise} \LEFTPHRASE ~ \VAR{Decl} ~ \RIGHTPHRASE 
\\
  \KEY{Rule} ~ 
    & \SEMREF{initialisations} \LEFTPHRASE ~ \VARHYPER{../.}{SIMPLE-4-Declarations}{Decl} ~ \VARREF{Decls} ~ \RIGHTPHRASE  = \\&\quad
      \SEMHYPER{../.}{SIMPLE-4-Declarations}{initialise} \LEFTPHRASE ~ \VAR{Decl} ~ \RIGHTPHRASE , \\&\quad 
      \SEMREF{initialisations} \LEFTPHRASE ~ \VAR{Decls} ~ \RIGHTPHRASE 
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
