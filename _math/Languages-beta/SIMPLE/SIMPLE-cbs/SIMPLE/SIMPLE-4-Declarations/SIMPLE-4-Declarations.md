$$\KEY{Language} \STRING{SIMPLE}$$

# $$\SECT{4}$$ Declarations
           


$$\relax\begin{aligned}\relax
  \KEY{Syntax} ~ 
    \VARDECL{Decl} : \SYNDECL{decl}
      ~ ::= ~ &
      \SYNREF{vars-decl} \\
      ~ \mid ~ &  \SYNREF{func-decl}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{declare} \LEFTPHRASE ~ \_ : \SYNREF{decl} ~ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{environments}
\end{aligned}$$

## $$\SECT{4.1}$$ Variable Declarations
           


$$\relax\begin{aligned}\relax
  \KEY{Syntax} ~ 
    \VARDECL{VarsDecl} : \SYN{vars-decl}
      ~ ::= ~ & \LEX{var} ~ \SYNREF{declarators} ~ \LEX{;{}}
    \\
    \VARDECL{Declarators} : \SYN{declarators}
      ~ ::= ~ & \SYNREF{declarator} ~ \LEFTGROUP \LEX{,{}} ~ \SYNREF{declarators} \RIGHTGROUP\QUERY
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \LEFTPHRASE ~ \LEX{var} ~ \VARREF{Declarator} ~ \LEX{,{}} ~ \VARREF{Declarators} ~ \LEX{;{}} ~ \VARHYPER{../.}{SIMPLE-3-Statements}{Stmts}\QUERY ~ \RIGHTPHRASE : \SYNHYPER{../.}{SIMPLE-3-Statements}{stmts} = \\
    & \LEFTPHRASE ~ \LEX{var} ~ \VAR{Declarator} ~ \LEX{;{}} ~ \LEX{var} ~ \VAR{Declarators} ~ \LEX{;{}} ~ \VAR{Stmts}\QUERY ~ \RIGHTPHRASE
\\
  \KEY{Rule} ~ 
    & \LEFTPHRASE ~ \LEX{var} ~ \VARREF{Declarator} ~ \LEX{,{}} ~ \VARREF{Declarators} ~ \LEX{;{}} ~ \VARHYPER{../.}{SIMPLE-5-Programs}{Decls}\QUERY ~ \RIGHTPHRASE : \SYNHYPER{../.}{SIMPLE-5-Programs}{decls} = \\
    & \LEFTPHRASE ~ \LEX{var} ~ \VAR{Declarator} ~ \LEX{;{}} ~ \LEX{var} ~ \VAR{Declarators} ~ \LEX{;{}} ~ \VAR{Decls}\QUERY ~ \RIGHTPHRASE
\\
  \KEY{Rule} ~ 
    & \SEMREF{declare} \LEFTPHRASE ~ \LEX{var} ~ \VARREF{Declarator} ~ \LEX{;{}} ~ \RIGHTPHRASE  = \\&\quad
      \SEMREF{var-declare} \LEFTPHRASE ~ \VAR{Declarator} ~ \RIGHTPHRASE 
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Syntax} ~ 
    \VARDECL{Declarator} : \SYNDECL{declarator}
      ~ ::= ~ &
      \SYNHYPER{../.}{SIMPLE-1-Lexical}{id} \\
      ~ \mid ~ &  \SYNHYPER{../.}{SIMPLE-1-Lexical}{id} ~ \LEX{={}} ~ \SYNHYPER{../.}{SIMPLE-2-Expressions}{exp} \\
      ~ \mid ~ &  \SYNHYPER{../.}{SIMPLE-1-Lexical}{id} ~ \SYNREF{ranks}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{var-declare} \LEFTPHRASE ~ \_ : \SYNREF{declarator} ~ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{environments}
\\
  \KEY{Rule} ~ 
    & \SEMREF{var-declare} \LEFTPHRASE ~ \VARHYPER{../.}{SIMPLE-1-Lexical}{Id} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bind}
        ( \SEMHYPER{../.}{SIMPLE-1-Lexical}{id} \LEFTPHRASE ~ \VAR{Id} ~ \RIGHTPHRASE , \\&\quad \quad 
          \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{allocate-variable}
            ( \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values} ) )
\\
  \KEY{Rule} ~ 
    & \SEMREF{var-declare} \LEFTPHRASE ~ \VARHYPER{../.}{SIMPLE-1-Lexical}{Id} ~ \LEX{={}} ~ \VARHYPER{../.}{SIMPLE-2-Expressions}{Exp} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bind}
        ( \SEMHYPER{../.}{SIMPLE-1-Lexical}{id} \LEFTPHRASE ~ \VAR{Id} ~ \RIGHTPHRASE , \\&\quad \quad 
          \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{allocate-initialised-variable}
            ( \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values}, \\&\quad \quad \quad 
              \SEMHYPER{../.}{SIMPLE-2-Expressions}{rval} \LEFTPHRASE ~ \VAR{Exp} ~ \RIGHTPHRASE  ) )
\\
  \KEY{Rule} ~ 
    & \SEMREF{var-declare} \LEFTPHRASE ~ \VARHYPER{../.}{SIMPLE-1-Lexical}{Id} ~ \VARREF{Ranks} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bind}
        ( \SEMHYPER{../.}{SIMPLE-1-Lexical}{id} \LEFTPHRASE ~ \VAR{Id} ~ \RIGHTPHRASE , \\&\quad \quad 
          \NAMEREF{allocate-nested-vectors}
            ( \SEMREF{ranks} \LEFTPHRASE ~ \VAR{Ranks} ~ \RIGHTPHRASE  ) )
\end{aligned}$$

## $$\SECT{4.2}$$ Arrays
           


$$\relax\begin{aligned}\relax
  \KEY{Syntax} ~ 
    \VARDECL{Ranks} : \SYN{ranks}
      ~ ::= ~ & \LEX{[{}} ~ \SYNHYPER{../.}{SIMPLE-2-Expressions}{exps} ~ \LEX{]{}} ~ \SYNREF{ranks}\QUERY
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \LEFTPHRASE ~ \LEX{[{}} ~ \VARHYPER{../.}{SIMPLE-2-Expressions}{Exp} ~ \LEX{,{}} ~ \VARHYPER{../.}{SIMPLE-2-Expressions}{Exps} ~ \LEX{]{}} ~ \VARREF{Ranks}\QUERY ~ \RIGHTPHRASE : \SYNREF{ranks} = \\
    & \LEFTPHRASE ~ \LEX{[{}} ~ \VAR{Exp} ~ \LEX{]{}} ~ \LEX{[{}} ~ \VAR{Exps} ~ \LEX{]{}} ~ \VAR{Ranks}\QUERY ~ \RIGHTPHRASE
\end{aligned}$$

 Compare this with p28 of the K version. 

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{ranks} \LEFTPHRASE ~ \_ : \SYNREF{ranks} ~ \RIGHTPHRASE  
    : (  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{nats} )\PLUS
\\
  \KEY{Rule} ~ 
    & \SEMREF{ranks} \LEFTPHRASE ~ \LEX{[{}} ~ \VARHYPER{../.}{SIMPLE-2-Expressions}{Exp} ~ \LEX{]{}} ~ \RIGHTPHRASE  = \\&\quad
      \SEMHYPER{../.}{SIMPLE-2-Expressions}{rval} \LEFTPHRASE ~ \VAR{Exp} ~ \RIGHTPHRASE 
\\
  \KEY{Rule} ~ 
    & \SEMREF{ranks} \LEFTPHRASE ~ \LEX{[{}} ~ \VARHYPER{../.}{SIMPLE-2-Expressions}{Exp} ~ \LEX{]{}} ~ \VARREF{Ranks} ~ \RIGHTPHRASE  = \\&\quad
      \SEMHYPER{../.}{SIMPLE-2-Expressions}{rval} \LEFTPHRASE ~ \VAR{Exp} ~ \RIGHTPHRASE , \\&\quad 
      \SEMREF{ranks} \LEFTPHRASE ~ \VAR{Ranks} ~ \RIGHTPHRASE 
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{allocate-nested-vectors}(\_ : \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{nats}\PLUS) :  \TO \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{variables}
\\
  \KEY{Rule} ~ 
    & \NAMEREF{allocate-nested-vectors}
        ( \VAR{N} : \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{nats} ) \leadsto
        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{allocate-initialised-variable}
          ( \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Vectors}{vectors}
              ( \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{variables} ),   
            \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Vectors}{vector}
              ( \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{left-to-right-repeat}
                  ( \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{allocate-variable}
                      ( \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values} ),     
                    1,     
                    \VAR{N} ) ) )
\\
  \KEY{Rule} ~ 
    & \NAMEREF{allocate-nested-vectors}
        ( \VAR{N} : \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{nats},   
          \VAR{N}\PLUS : \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{nats}\PLUS ) \leadsto
        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{allocate-initialised-variable}
          ( \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Vectors}{vectors}
              ( \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{variables} ),   
            \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Vectors}{vector}
              ( \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{left-to-right-repeat}
                  ( \NAMEREF{allocate-nested-vectors}
                      ( \VAR{N}\PLUS ),     
                    1,     
                    \VAR{N} ) ) )
\end{aligned}$$

## $$\SECT{4.3}$$ Function Declarations
           


$$\relax\begin{aligned}\relax
  \KEY{Syntax} ~ 
    \VARDECL{FuncDecl} : \SYN{func-decl}
      ~ ::= ~ & \LEX{function} ~ \SYNHYPER{../.}{SIMPLE-1-Lexical}{id} ~ \LEX{(} ~ \SYNREF{ids}\QUERY ~ \LEX{)} ~ \SYNHYPER{../.}{SIMPLE-3-Statements}{block}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \SEMREF{declare} \LEFTPHRASE ~ \LEX{function} ~ \VARHYPER{../.}{SIMPLE-1-Lexical}{Id} ~ \LEX{(} ~ \VARREF{Ids}\QUERY ~ \LEX{)} ~ \VARHYPER{../.}{SIMPLE-3-Statements}{Block} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bind}
        ( \SEMHYPER{../.}{SIMPLE-1-Lexical}{id} \LEFTPHRASE ~ \VAR{Id} ~ \RIGHTPHRASE , \\&\quad \quad 
          \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{allocate-variable}
            ( \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Functions}{functions}
                ( \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuples}
                    ( \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values}\STAR ), \\&\quad \quad \quad \quad 
                  \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values} ) ) )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{initialise} \LEFTPHRASE ~ \_ : \SYNREF{decl} ~ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type}
\\
  \KEY{Rule} ~ 
    & \SEMREF{initialise} \LEFTPHRASE ~ \LEX{var} ~ \VARREF{Declarators} ~ \LEX{;{}} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null}
\\
  \KEY{Rule} ~ 
    & \SEMREF{initialise} \LEFTPHRASE ~ \LEX{function} ~ \VARHYPER{../.}{SIMPLE-1-Lexical}{Id} ~ \LEX{(} ~ \VARREF{Ids}\QUERY ~ \LEX{)} ~ \VARHYPER{../.}{SIMPLE-3-Statements}{Block} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
        ( \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound}
            ( \SEMHYPER{../.}{SIMPLE-1-Lexical}{id} \LEFTPHRASE ~ \VAR{Id} ~ \RIGHTPHRASE  ), \\&\quad \quad 
          \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Functions}{function} ~
            \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Generic}{closure}
              ( \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{scope}
                  ( \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Patterns}{match}
                      ( \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}, \\&\quad \quad \quad \quad \quad \quad 
                        \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuple}
                          ( \SEMREF{patts} \LEFTPHRASE ~ \VAR{Ids}\QUERY ~ \RIGHTPHRASE  ) ), \\&\quad \quad \quad \quad \quad 
                    \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Returning}{handle-return}
                      ( \SEMHYPER{../.}{SIMPLE-3-Statements}{exec} \LEFTPHRASE ~ \VAR{Block} ~ \RIGHTPHRASE  ) ) ) )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Syntax} ~ 
    \VARDECL{Ids} : \SYN{ids}
      ~ ::= ~ & \SYNHYPER{../.}{SIMPLE-1-Lexical}{id} ~ \LEFTGROUP \LEX{,{}} ~ \SYNREF{ids} \RIGHTGROUP\QUERY
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{patts} \LEFTPHRASE ~ \_ : \SYNREF{ids}\QUERY ~ \RIGHTPHRASE  
    : \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Patterns}{patterns}\STAR
\\
  \KEY{Rule} ~ 
    & \SEMREF{patts} \LEFTPHRASE ~  ~ \RIGHTPHRASE  = \\&\quad
      (  ~  )
\\
  \KEY{Rule} ~ 
    & \SEMREF{patts} \LEFTPHRASE ~ \VARHYPER{../.}{SIMPLE-1-Lexical}{Id} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Patterns}{pattern} ~
        \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Generic}{closure}
          ( \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bind}
              ( \SEMHYPER{../.}{SIMPLE-1-Lexical}{id} \LEFTPHRASE ~ \VAR{Id} ~ \RIGHTPHRASE , \\&\quad \quad \quad \quad 
                \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{allocate-initialised-variable}
                  ( \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values}, \\&\quad \quad \quad \quad \quad 
                    \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given} ) ) )
\\
  \KEY{Rule} ~ 
    & \SEMREF{patts} \LEFTPHRASE ~ \VARHYPER{../.}{SIMPLE-1-Lexical}{Id} ~ \LEX{,{}} ~ \VARREF{Ids} ~ \RIGHTPHRASE  = \\&\quad
      \SEMREF{patts} \LEFTPHRASE ~ \VAR{Id} ~ \RIGHTPHRASE , \\&\quad 
      \SEMREF{patts} \LEFTPHRASE ~ \VAR{Ids} ~ \RIGHTPHRASE 
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
