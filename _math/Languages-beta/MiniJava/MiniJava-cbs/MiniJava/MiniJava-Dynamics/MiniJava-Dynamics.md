$$\KEY{Language} \STRING{MiniJava}$$




# $$\SECT{1}$$ Programs
           


$$\relax\begin{aligned}\relax
  \KEY{Syntax} ~ 
    \VARDECL{P} : \SYN{program}
      ~ ::= ~ & \SYNREF{main-class} ~ \SYNREF{class-declaration}\STAR
    \\
    \VARDECL{MC} : \SYN{main-class}
      ~ ::= ~ & \LEX{class} ~ \SYNREF{identifier} ~ \LEX{\LEFTBRACE } ~ \LEX{public} ~ \LEX{static} ~ \LEX{void} ~ \LEX{main} ~ \LEX{(} ~ \LEX{String} ~ \LEX{[{}} ~ \LEX{]{}} ~ \SYNREF{identifier} ~ \LEX{)} ~ \LEX{\LEFTBRACE } ~ \SYNREF{statement} ~ \LEX{\RIGHTBRACE } ~ \LEX{\RIGHTBRACE }
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{run} \LEFTPHRASE ~ \VARREF{P} : \SYNREF{program} ~ \RIGHTPHRASE  :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} 
\\
  \KEY{Rule} ~ 
    & \SEMREF{run} \LEFTPHRASE ~ \LEX{class} ~ \VARREF{ID}\SUB{1} ~ \LEX{\LEFTBRACE } ~ \LEX{public} ~ \LEX{static} ~ \LEX{void} ~ \LEX{main} ~ \LEX{(} ~ \LEX{String} ~ \LEX{[{}} ~ \LEX{]{}} ~ \VARREF{ID}\SUB{2} ~ \LEX{)} ~ \LEX{\LEFTBRACE } ~ \VARREF{S} ~ \LEX{\RIGHTBRACE } ~ \LEX{\RIGHTBRACE } ~ \VARREF{CD}\STAR ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{scope}
        (\NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{recursive}
           (\SEMREF{bound-names} \LEFTPHRASE ~ \VAR{CD}\STAR ~ \RIGHTPHRASE , \\&\quad \quad \quad 
            \SEMREF{declare-classes} \LEFTPHRASE ~ \VAR{CD}\STAR ~ \RIGHTPHRASE ), \\&\quad \quad 
         \SEMREF{execute} \LEFTPHRASE ~ \VAR{S} ~ \RIGHTPHRASE )
\end{aligned}$$


  $$\SHADE{\VAR{ID}\SUB{1}}$$ and $$\SHADE{\VAR{ID}\SUB{2}}$$ are not referenced in $$\SHADE{\VAR{S}}$$ or $$\SHADE{\VAR{CD}\STAR}$$


# $$\SECT{2}$$ Declarations
           


## Classes
               


$$\relax\begin{aligned}\relax
  \KEY{Syntax} ~ 
    \VARDECL{CD} : \SYN{class-declaration}
      ~ ::= ~ & \LEX{class} ~ \SYNREF{identifier} ~ \LEFTGROUP \LEX{extends} ~ \SYNREF{identifier} \RIGHTGROUP\QUERY ~ \LEX{\LEFTBRACE } ~ \SYNREF{var-declaration}\STAR ~ \SYNREF{method-declaration}\STAR ~ \LEX{\RIGHTBRACE }
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{bound-names} \LEFTPHRASE ~ \VARREF{CD}\STAR : \SYNREF{class-declaration}\STAR ~ \RIGHTPHRASE  :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sets}{sets}
                                                                                                        (\NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{ids}) 
\\
  \KEY{Rule} ~ 
    & \SEMREF{bound-names} \LEFTPHRASE ~ \LEX{class} ~ \VARREF{ID}\SUB{1} ~ \LEX{\LEFTBRACE } ~ \VARREF{VD}\STAR ~ \VARREF{MD}\STAR ~ \LEX{\RIGHTBRACE } ~ \RIGHTPHRASE  = \\&\quad
      \{ \SEMREF{id} \LEFTPHRASE ~ \VAR{ID}\SUB{1} ~ \RIGHTPHRASE  \}
\\
  \KEY{Rule} ~ 
    & \SEMREF{bound-names} \LEFTPHRASE ~ \LEX{class} ~ \VARREF{ID}\SUB{1} ~ \LEX{extends} ~ \VARREF{ID}\SUB{2} ~ \LEX{\LEFTBRACE } ~ \VARREF{VD}\STAR ~ \VARREF{MD}\STAR ~ \LEX{\RIGHTBRACE } ~ \RIGHTPHRASE  = \\&\quad
      \{ \SEMREF{id} \LEFTPHRASE ~ \VAR{ID}\SUB{1} ~ \RIGHTPHRASE  \}
\\
  \KEY{Rule} ~ 
    & \SEMREF{bound-names} \LEFTPHRASE ~  ~ \RIGHTPHRASE  = \\&\quad
      \{  ~  \}
\\
  \KEY{Rule} ~ 
    & \SEMREF{bound-names} \LEFTPHRASE ~ \VARREF{CD} ~ \VARREF{CD}\PLUS ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sets}{set-unite}
        (\SEMREF{bound-names} \LEFTPHRASE ~ \VAR{CD} ~ \RIGHTPHRASE , \\&\quad \quad 
         \SEMREF{bound-names} \LEFTPHRASE ~ \VAR{CD}\PLUS ~ \RIGHTPHRASE )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{declare-classes} \LEFTPHRASE ~ \VARREF{CD}\STAR : \SYNREF{class-declaration}\STAR ~ \RIGHTPHRASE  :  \TO \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{envs} 
\\
  \KEY{Rule} ~ 
    & \SEMREF{declare-classes} \LEFTPHRASE ~ \LEX{class} ~ \VARREF{ID}\SUB{1} ~ \LEX{\LEFTBRACE } ~ \VARREF{VD}\STAR ~ \VARREF{MD}\STAR ~ \LEX{\RIGHTBRACE } ~ \RIGHTPHRASE  = \\&\quad
      \{ \SEMREF{id} \LEFTPHRASE ~ \VAR{ID}\SUB{1} ~ \RIGHTPHRASE  \mapsto \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Classes}{class}
                           (\NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Thunks}{thunk} ~
                              \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Generic}{closure} ~
                                \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{References}{reference} ~
                                  \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Objects}{object}
                                    (\NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Generating}{fresh-atom}, \\&\quad \quad \quad \quad \quad \quad 
                                     \SEMREF{id} \LEFTPHRASE ~ \VAR{ID}\SUB{1} ~ \RIGHTPHRASE , \\&\quad \quad \quad \quad \quad \quad 
                                     \SEMREF{declare-variables} \LEFTPHRASE ~ \VAR{VD}\STAR ~ \RIGHTPHRASE ), \\&\quad \quad 
                            \SEMREF{declare-methods} \LEFTPHRASE ~ \VAR{MD}\STAR ~ \RIGHTPHRASE ) \}
\\
  \KEY{Rule} ~ 
    & \SEMREF{declare-classes} \LEFTPHRASE ~ \LEX{class} ~ \VARREF{ID}\SUB{1} ~ \LEX{extends} ~ \VARREF{ID}\SUB{2} ~ \LEX{\LEFTBRACE } ~ \VARREF{VD}\STAR ~ \VARREF{MD}\STAR ~ \LEX{\RIGHTBRACE } ~ \RIGHTPHRASE  = \\&\quad
      \{ \SEMREF{id} \LEFTPHRASE ~ \VAR{ID}\SUB{1} ~ \RIGHTPHRASE  \mapsto \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Classes}{class}
                           (\NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Thunks}{thunk} ~
                              \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Generic}{closure} ~
                                \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{References}{reference} ~
                                  \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Objects}{object}
                                    (\NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Generating}{fresh-atom}, \\&\quad \quad \quad \quad \quad \quad 
                                     \SEMREF{id} \LEFTPHRASE ~ \VAR{ID}\SUB{1} ~ \RIGHTPHRASE , \\&\quad \quad \quad \quad \quad \quad 
                                     \SEMREF{declare-variables} \LEFTPHRASE ~ \VAR{VD}\STAR ~ \RIGHTPHRASE , \\&\quad \quad \quad \quad \quad \quad 
                                     \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{References}{dereference} ~
                                       \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Thunks}{force} ~
                                         \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Classes}{class-instantiator} ~
                                           \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound} ~
                                             \SEMREF{id} \LEFTPHRASE ~ \VAR{ID}\SUB{2} ~ \RIGHTPHRASE ), \\&\quad \quad 
                            \SEMREF{declare-methods} \LEFTPHRASE ~ \VAR{MD}\STAR ~ \RIGHTPHRASE , \\&\quad \quad 
                            \SEMREF{id} \LEFTPHRASE ~ \VAR{ID}\SUB{2} ~ \RIGHTPHRASE ) \}
\\
  \KEY{Rule} ~ 
    & \SEMREF{declare-classes} \LEFTPHRASE ~  ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{map}
        ( ~ )
\\
  \KEY{Rule} ~ 
    & \SEMREF{declare-classes} \LEFTPHRASE ~ \VARREF{CD} ~ \VARREF{CD}\PLUS ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{collateral}
        (\SEMREF{declare-classes} \LEFTPHRASE ~ \VAR{CD} ~ \RIGHTPHRASE , \\&\quad \quad 
         \SEMREF{declare-classes} \LEFTPHRASE ~ \VAR{CD}\PLUS ~ \RIGHTPHRASE )
\end{aligned}$$

## Variables
               


$$\relax\begin{aligned}\relax
  \KEY{Syntax} ~ 
    \VARDECL{VD} : \SYN{var-declaration}
      ~ ::= ~ & \SYNREF{type} ~ \SYNREF{identifier} ~ \LEX{;{}}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{declare-variables} \LEFTPHRASE ~ \VARREF{VD}\STAR : \SYNREF{var-declaration}\STAR ~ \RIGHTPHRASE  :  \TO \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{envs} 
\\
  \KEY{Rule} ~ 
    & \SEMREF{declare-variables} \LEFTPHRASE ~ \VARREF{T} ~ \VARREF{ID} ~ \LEX{;{}} ~ \RIGHTPHRASE  = \\&\quad
      \{ \SEMREF{id} \LEFTPHRASE ~ \VAR{ID} ~ \RIGHTPHRASE  \mapsto \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{allocate-initialised-variable}
                           (\SEMREF{type} \LEFTPHRASE ~ \VAR{T} ~ \RIGHTPHRASE , \\&\quad \quad 
                            \SEMREF{initial-value} \LEFTPHRASE ~ \VAR{T} ~ \RIGHTPHRASE ) \}
\\
  \KEY{Rule} ~ 
    & \SEMREF{declare-variables} \LEFTPHRASE ~  ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{map}
        ( ~ )
\\
  \KEY{Rule} ~ 
    & \SEMREF{declare-variables} \LEFTPHRASE ~ \VARREF{VD} ~ \VARREF{VD}\PLUS ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{collateral}
        (\SEMREF{declare-variables} \LEFTPHRASE ~ \VAR{VD} ~ \RIGHTPHRASE , \\&\quad \quad 
         \SEMREF{declare-variables} \LEFTPHRASE ~ \VAR{VD}\PLUS ~ \RIGHTPHRASE )
\end{aligned}$$

## Types
               


$$\relax\begin{aligned}\relax
  \KEY{Syntax} ~ 
    \VARDECL{T} : \SYNDECL{type}
      ~ ::= ~ &
      \LEX{int} ~ \LEX{[{}} ~ \LEX{]{}} \\
      ~ \mid ~ &  \LEX{boolean} \\
      ~ \mid ~ &  \LEX{int} \\
      ~ \mid ~ &  \SYNREF{identifier}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{type} \LEFTPHRASE ~ \VARREF{T} : \SYNREF{type} ~ \RIGHTPHRASE  :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{types} 
\\
  \KEY{Rule} ~ 
    & \SEMREF{type} \LEFTPHRASE ~ \LEX{int} ~ \LEX{[{}} ~ \LEX{]{}} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Vectors}{vectors}
        (\NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{variables})
\\
  \KEY{Rule} ~ 
    & \SEMREF{type} \LEFTPHRASE ~ \LEX{boolean} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{booleans}
\\
  \KEY{Rule} ~ 
    & \SEMREF{type} \LEFTPHRASE ~ \LEX{int} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integers}
\\
  \KEY{Rule} ~ 
    & \SEMREF{type} \LEFTPHRASE ~ \VARREF{ID} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{References}{pointers}
        (\NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Objects}{objects})
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{initial-value} \LEFTPHRASE ~ \VARREF{T} : \SYNREF{type} ~ \RIGHTPHRASE  :  \TO \NAMEREF{minijava-values} 
\\
  \KEY{Rule} ~ 
    & \SEMREF{initial-value} \LEFTPHRASE ~ \LEX{int} ~ \LEX{[{}} ~ \LEX{]{}} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Vectors}{vector}
        ( ~ )
\\
  \KEY{Rule} ~ 
    & \SEMREF{initial-value} \LEFTPHRASE ~ \LEX{boolean} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{false}
\\
  \KEY{Rule} ~ 
    & \SEMREF{initial-value} \LEFTPHRASE ~ \LEX{int} ~ \RIGHTPHRASE  = \\&\quad
      0
\\
  \KEY{Rule} ~ 
    & \SEMREF{initial-value} \LEFTPHRASE ~ \VARREF{ID} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{References}{pointer-null}
\end{aligned}$$

## Methods
               


$$\relax\begin{aligned}\relax
  \KEY{Syntax} ~ 
    \VARDECL{MD} : \SYN{method-declaration}
      ~ ::= ~ & \LEX{public} ~ \SYNREF{type} ~ \SYNREF{identifier} ~ \LEX{(} ~ \SYNREF{formal-list}\QUERY ~ \LEX{)} ~ \LEX{\LEFTBRACE } ~ \SYNREF{var-declaration}\STAR ~ \SYNREF{statement}\STAR ~ \LEX{return} ~ \SYNREF{expression} ~ \LEX{;{}} ~ \LEX{\RIGHTBRACE }
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Type} ~  
  & \NAMEDECL{methods}  
  \leadsto \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Functions}{functions}
             (\NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuples}
                (\NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{References}{references}
                   (\NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Objects}{objects}),    
                 \NAMEREF{minijava-values}\STAR),   
              \NAMEREF{minijava-values})
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{declare-methods} \LEFTPHRASE ~ \VARREF{MD}\STAR : \SYNREF{method-declaration}\STAR ~ \RIGHTPHRASE  :  \TO \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{envs} 
\\
  \KEY{Rule} ~ 
    & \SEMREF{declare-methods} \LEFTPHRASE ~ \LEX{public} ~ \VARREF{T} ~ \VARREF{ID} ~ \LEX{(} ~ \VARREF{FL}\QUERY ~ \LEX{)} ~ \LEX{\LEFTBRACE } ~ \VARREF{VD}\STAR ~ \VARREF{S}\STAR ~ \LEX{return} ~ \VARREF{E} ~ \LEX{;{}} ~ \LEX{\RIGHTBRACE } ~ \RIGHTPHRASE  = \\&\quad
      \{ \SEMREF{id} \LEFTPHRASE ~ \VAR{ID} ~ \RIGHTPHRASE  \mapsto \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Functions}{function} ~
                           \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Generic}{closure} ~
                             \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{scope}
                               (\NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{collateral}
                                  (\NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Patterns}{match}
                                     (\NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}, \\&\quad \quad \quad \quad \quad \quad 
                                      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuple}
                                        (\NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Patterns}{pattern} ~
                                           \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Generic}{abstraction} ~
                                             \{ \STRING{this} \mapsto \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{allocate-initialised-variable}
                                                                  (\NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{References}{pointers}
                                                                     (\NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Objects}{objects}), \\&\quad \quad \quad \quad \quad \quad \quad \quad \quad \quad 
                                                                   \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}) \}, \\&\quad \quad \quad \quad \quad \quad \quad 
                                         \SEMREF{bind-formals} \LEFTPHRASE ~ \VAR{FL}\QUERY ~ \RIGHTPHRASE )), \\&\quad \quad \quad \quad \quad 
                                   \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Objects}{object-single-inheritance-feature-map} ~
                                     \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{checked} ~
                                       \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{References}{dereference} ~
                                         \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sequences}{first} ~
                                           \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuple-elements} ~
                                             \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}, \\&\quad \quad \quad \quad \quad 
                                   \SEMREF{declare-variables} \LEFTPHRASE ~ \VAR{VD}\STAR ~ \RIGHTPHRASE ), \\&\quad \quad \quad \quad 
                                \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                                  (\SEMREF{execute} \LEFTPHRASE ~ \VAR{S}\STAR ~ \RIGHTPHRASE , \\&\quad \quad \quad \quad \quad 
                                   \SEMREF{evaluate} \LEFTPHRASE ~ \VAR{E} ~ \RIGHTPHRASE )) \}
\\
  \KEY{Rule} ~ 
    & \SEMREF{declare-methods} \LEFTPHRASE ~  ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{map}
        ( ~ )
\\
  \KEY{Rule} ~ 
    & \SEMREF{declare-methods} \LEFTPHRASE ~ \VARREF{MD} ~ \VARREF{MD}\PLUS ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{collateral}
        (\SEMREF{declare-methods} \LEFTPHRASE ~ \VAR{MD} ~ \RIGHTPHRASE , \\&\quad \quad 
         \SEMREF{declare-methods} \LEFTPHRASE ~ \VAR{MD}\PLUS ~ \RIGHTPHRASE )
\end{aligned}$$

## Formals
               


$$\relax\begin{aligned}\relax
  \KEY{Syntax} ~ 
    \VARDECL{FL} : \SYN{formal-list}
      ~ ::= ~ & \SYNREF{type} ~ \SYNREF{identifier} ~ \LEFTGROUP \LEX{,{}} ~ \SYNREF{formal-list} \RIGHTGROUP\QUERY
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{bind-formals} \LEFTPHRASE ~ \VARREF{FL}\QUERY : \SYNREF{formal-list}\QUERY ~ \RIGHTPHRASE  :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Patterns}{patterns}\STAR 
\\
  \KEY{Rule} ~ 
    & \SEMREF{bind-formals} \LEFTPHRASE ~ \VARREF{T} ~ \VARREF{ID} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Patterns}{pattern} ~
        \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Generic}{abstraction} ~
          \{ \SEMREF{id} \LEFTPHRASE ~ \VAR{ID} ~ \RIGHTPHRASE  \mapsto \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{allocate-initialised-variable}
                               (\SEMREF{type} \LEFTPHRASE ~ \VAR{T} ~ \RIGHTPHRASE , \\&\quad \quad \quad \quad 
                                \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}) \}
\\
  \KEY{Rule} ~ 
    & \SEMREF{bind-formals} \LEFTPHRASE ~ \VARREF{T} ~ \VARREF{ID} ~ \LEX{,{}} ~ \VARREF{FL} ~ \RIGHTPHRASE  = \\&\quad
      \SEMREF{bind-formals} \LEFTPHRASE ~ \VAR{T} ~ \VAR{ID} ~ \RIGHTPHRASE , \\&\quad 
      \SEMREF{bind-formals} \LEFTPHRASE ~ \VAR{FL} ~ \RIGHTPHRASE 
\\
  \KEY{Rule} ~ 
    & \SEMREF{bind-formals} \LEFTPHRASE ~  ~ \RIGHTPHRASE  = \\&\quad
      ( ~ )
\end{aligned}$$

# $$\SECT{3}$$ Statements
           


$$\relax\begin{aligned}\relax
  \KEY{Syntax} ~ 
    \VARDECL{S} : \SYNDECL{statement}
      ~ ::= ~ &
      \LEX{\LEFTBRACE } ~ \SYNREF{statement}\STAR ~ \LEX{\RIGHTBRACE } \\
      ~ \mid ~ &  \LEX{if} ~ \LEX{(} ~ \SYNREF{expression} ~ \LEX{)} ~ \SYNREF{statement} ~ \LEX{else} ~ \SYNREF{statement} \\
      ~ \mid ~ &  \LEX{while} ~ \LEX{(} ~ \SYNREF{expression} ~ \LEX{)} ~ \SYNREF{statement} \\
      ~ \mid ~ &  \LEX{System} ~ \LEX{.{}} ~ \LEX{out} ~ \LEX{.{}} ~ \LEX{println} ~ \LEX{(} ~ \SYNREF{expression} ~ \LEX{)} ~ \LEX{;{}} \\
      ~ \mid ~ &  \SYNREF{identifier} ~ \LEX{={}} ~ \SYNREF{expression} ~ \LEX{;{}} \\
      ~ \mid ~ &  \SYNREF{identifier} ~ \LEX{[{}} ~ \SYNREF{expression} ~ \LEX{]{}} ~ \LEX{={}} ~ \SYNREF{expression} ~ \LEX{;{}}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{execute} \LEFTPHRASE ~ \VARREF{S}\STAR : \SYNREF{statement}\STAR ~ \RIGHTPHRASE  :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} 
\\
  \KEY{Rule} ~ 
    & \SEMREF{execute} \LEFTPHRASE ~ \LEX{\LEFTBRACE } ~ \VARREF{S}\STAR ~ \LEX{\RIGHTBRACE } ~ \RIGHTPHRASE  = \\&\quad
      \SEMREF{execute} \LEFTPHRASE ~ \VAR{S}\STAR ~ \RIGHTPHRASE 
\\
  \KEY{Rule} ~ 
    & \SEMREF{execute} \LEFTPHRASE ~ \LEX{if} ~ \LEX{(} ~ \VARREF{E} ~ \LEX{)} ~ \VARREF{S}\SUB{1} ~ \LEX{else} ~ \VARREF{S}\SUB{2} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-true-else}
        (\SEMREF{evaluate} \LEFTPHRASE ~ \VAR{E} ~ \RIGHTPHRASE , \\&\quad \quad 
         \SEMREF{execute} \LEFTPHRASE ~ \VAR{S}\SUB{1} ~ \RIGHTPHRASE , \\&\quad \quad 
         \SEMREF{execute} \LEFTPHRASE ~ \VAR{S}\SUB{2} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{execute} \LEFTPHRASE ~ \LEX{while} ~ \LEX{(} ~ \VARREF{E} ~ \LEX{)} ~ \VARREF{S} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{while-true}
        (\SEMREF{evaluate} \LEFTPHRASE ~ \VAR{E} ~ \RIGHTPHRASE , \\&\quad \quad 
         \SEMREF{execute} \LEFTPHRASE ~ \VAR{S} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{execute} \LEFTPHRASE ~ \LEX{System} ~ \LEX{.{}} ~ \LEX{out} ~ \LEX{.{}} ~ \LEX{println} ~ \LEX{(} ~ \VARREF{E} ~ \LEX{)} ~ \LEX{;{}} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Interacting}{print}
        (\NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Strings}{to-string} ~
           \SEMREF{evaluate} \LEFTPHRASE ~ \VAR{E} ~ \RIGHTPHRASE , \\&\quad \quad 
         \STRING{\BACKSLASH n})
\\
  \KEY{Rule} ~ 
    & \SEMREF{execute} \LEFTPHRASE ~ \VARREF{ID} ~ \LEX{={}} ~ \VARREF{E} ~ \LEX{;{}} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
        (\NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound} ~
           \SEMREF{id} \LEFTPHRASE ~ \VAR{ID} ~ \RIGHTPHRASE , \\&\quad \quad 
         \SEMREF{evaluate} \LEFTPHRASE ~ \VAR{E} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{execute} \LEFTPHRASE ~ \VARREF{ID} ~ \LEX{[{}} ~ \VARREF{E}\SUB{1} ~ \LEX{]{}} ~ \LEX{={}} ~ \VARREF{E}\SUB{2} ~ \LEX{;{}} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
        (\NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{checked} ~
           \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sequences}{index}
             (\NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-add}
                (\SEMREF{evaluate} \LEFTPHRASE ~ \VAR{E}\SUB{1} ~ \RIGHTPHRASE , \\&\quad \quad \quad \quad \quad 
                 1), \\&\quad \quad \quad \quad 
              \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Vectors}{vector-elements} ~
                \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} ~
                  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound} ~
                    \SEMREF{id} \LEFTPHRASE ~ \VAR{ID} ~ \RIGHTPHRASE ), \\&\quad \quad 
         \SEMREF{evaluate} \LEFTPHRASE ~ \VAR{E}\SUB{2} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{execute} \LEFTPHRASE ~  ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null}
\\
  \KEY{Rule} ~ 
    & \SEMREF{execute} \LEFTPHRASE ~ \VARREF{S} ~ \VARREF{S}\PLUS ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
        (\SEMREF{execute} \LEFTPHRASE ~ \VAR{S} ~ \RIGHTPHRASE , \\&\quad \quad 
         \SEMREF{execute} \LEFTPHRASE ~ \VAR{S}\PLUS ~ \RIGHTPHRASE )
\end{aligned}$$

# $$\SECT{4}$$ Expressions
           


$$\relax\begin{aligned}\relax
  \KEY{Syntax} ~ 
    \VARDECL{E} : \SYNDECL{expression}
      ~ ::= ~ &
      \SYNREF{expression} ~ \LEX{\AMPERSAND \AMPERSAND } ~ \SYNREF{expression} \\
      ~ \mid ~ &  \SYNREF{expression} ~ \LEX{<{}} ~ \SYNREF{expression} \\
      ~ \mid ~ &  \SYNREF{expression} ~ \LEX{+{}} ~ \SYNREF{expression} \\
      ~ \mid ~ &  \SYNREF{expression} ~ \LEX{-{}} ~ \SYNREF{expression} \\
      ~ \mid ~ &  \SYNREF{expression} ~ \LEX{*{}} ~ \SYNREF{expression} \\
      ~ \mid ~ &  \SYNREF{expression} ~ \LEX{[{}} ~ \SYNREF{expression} ~ \LEX{]{}} \\
      ~ \mid ~ &  \SYNREF{expression} ~ \LEX{.{}} ~ \LEX{length} \\
      ~ \mid ~ &  \SYNREF{expression} ~ \LEX{.{}} ~ \SYNREF{identifier} ~ \LEX{(} ~ \SYNREF{expression-list}\QUERY ~ \LEX{)} \\
      ~ \mid ~ &  \SYNREF{integer-literal} \\
      ~ \mid ~ &  \LEX{true} \\
      ~ \mid ~ &  \LEX{false} \\
      ~ \mid ~ &  \SYNREF{identifier} \\
      ~ \mid ~ &  \LEX{this} \\
      ~ \mid ~ &  \LEX{new} ~ \LEX{int} ~ \LEX{[{}} ~ \SYNREF{expression} ~ \LEX{]{}} \\
      ~ \mid ~ &  \LEX{new} ~ \SYNREF{identifier} ~ \LEX{(} ~ \LEX{)} \\
      ~ \mid ~ &  \LEX{!{}} ~ \SYNREF{expression} \\
      ~ \mid ~ &  \LEX{(} ~ \SYNREF{expression} ~ \LEX{)}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Type} ~  
  & \NAMEDECL{minijava-values}  
  \leadsto \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{booleans} \mid \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integers} \mid \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Vectors}{vectors}
                          (\NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{variables}) \mid \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{References}{pointers}
                          (\NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Objects}{objects})
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{evaluate} \LEFTPHRASE ~ \VARREF{E} : \SYNREF{expression} ~ \RIGHTPHRASE  :  \TO \NAMEREF{minijava-values} 
\end{aligned}$$


  evaluate[[E]] is a well-typed funcon term only when E is a well-typed
  MiniJava expression.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \SEMREF{evaluate} \LEFTPHRASE ~ \VARREF{E}\SUB{1} ~ \LEX{\AMPERSAND \AMPERSAND } ~ \VARREF{E}\SUB{2} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-true-else}
        (\SEMREF{evaluate} \LEFTPHRASE ~ \VAR{E}\SUB{1} ~ \RIGHTPHRASE , \\&\quad \quad 
         \SEMREF{evaluate} \LEFTPHRASE ~ \VAR{E}\SUB{2} ~ \RIGHTPHRASE , \\&\quad \quad 
         \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{false})
\\
  \KEY{Rule} ~ 
    & \SEMREF{evaluate} \LEFTPHRASE ~ \VARREF{E}\SUB{1} ~ \LEX{<{}} ~ \VARREF{E}\SUB{2} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-is-less}
        (\SEMREF{evaluate} \LEFTPHRASE ~ \VAR{E}\SUB{1} ~ \RIGHTPHRASE , \\&\quad \quad 
         \SEMREF{evaluate} \LEFTPHRASE ~ \VAR{E}\SUB{2} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{evaluate} \LEFTPHRASE ~ \VARREF{E}\SUB{1} ~ \LEX{+{}} ~ \VARREF{E}\SUB{2} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-add}
        (\SEMREF{evaluate} \LEFTPHRASE ~ \VAR{E}\SUB{1} ~ \RIGHTPHRASE , \\&\quad \quad 
         \SEMREF{evaluate} \LEFTPHRASE ~ \VAR{E}\SUB{2} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{evaluate} \LEFTPHRASE ~ \VARREF{E}\SUB{1} ~ \LEX{-{}} ~ \VARREF{E}\SUB{2} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-subtract}
        (\SEMREF{evaluate} \LEFTPHRASE ~ \VAR{E}\SUB{1} ~ \RIGHTPHRASE , \\&\quad \quad 
         \SEMREF{evaluate} \LEFTPHRASE ~ \VAR{E}\SUB{2} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{evaluate} \LEFTPHRASE ~ \VARREF{E}\SUB{1} ~ \LEX{*{}} ~ \VARREF{E}\SUB{2} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-multiply}
        (\SEMREF{evaluate} \LEFTPHRASE ~ \VAR{E}\SUB{1} ~ \RIGHTPHRASE , \\&\quad \quad 
         \SEMREF{evaluate} \LEFTPHRASE ~ \VAR{E}\SUB{2} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{evaluate} \LEFTPHRASE ~ \VARREF{E}\SUB{1} ~ \LEX{[{}} ~ \VARREF{E}\SUB{2} ~ \LEX{]{}} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} ~
        \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{checked} ~
          \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sequences}{index}
            (\NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-add}
               (\SEMREF{evaluate} \LEFTPHRASE ~ \VAR{E}\SUB{2} ~ \RIGHTPHRASE , \\&\quad \quad \quad \quad \quad 
                1), \\&\quad \quad \quad \quad 
             \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Vectors}{vector-elements} ~
               \SEMREF{evaluate} \LEFTPHRASE ~ \VAR{E}\SUB{1} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{evaluate} \LEFTPHRASE ~ \VARREF{E} ~ \LEX{.{}} ~ \LEX{length} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sequences}{length} ~
        \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Vectors}{vector-elements} ~
          \SEMREF{evaluate} \LEFTPHRASE ~ \VAR{E} ~ \RIGHTPHRASE 
\\
  \KEY{Rule} ~ 
    & \SEMREF{evaluate} \LEFTPHRASE ~ \VARREF{E} ~ \LEX{.{}} ~ \VARREF{ID} ~ \LEX{(} ~ \VARREF{EL}\QUERY ~ \LEX{)} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{give}
        (\SEMREF{evaluate} \LEFTPHRASE ~ \VAR{E} ~ \RIGHTPHRASE , \\&\quad \quad 
         \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Functions}{apply}
           (\NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{lookup}
              (\NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Classes}{class-name-single-inheritance-feature-map} ~
                 \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Objects}{object-class-name} ~
                   \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{checked} ~
                     \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{References}{dereference} ~
                       \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}, \\&\quad \quad \quad \quad 
               \SEMREF{id} \LEFTPHRASE ~ \VAR{ID} ~ \RIGHTPHRASE ), \\&\quad \quad \quad 
            \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuple}
              (\NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}, \\&\quad \quad \quad \quad 
               \SEMREF{evaluate-actuals} \LEFTPHRASE ~ \VAR{EL}\QUERY ~ \RIGHTPHRASE )))
\\
  \KEY{Rule} ~ 
    & \SEMREF{evaluate} \LEFTPHRASE ~ \VARREF{IL} ~ \RIGHTPHRASE  = \\&\quad
      \SEMREF{integer-value} \LEFTPHRASE ~ \VAR{IL} ~ \RIGHTPHRASE 
\\
  \KEY{Rule} ~ 
    & \SEMREF{evaluate} \LEFTPHRASE ~ \LEX{true} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{true}
\\
  \KEY{Rule} ~ 
    & \SEMREF{evaluate} \LEFTPHRASE ~ \LEX{false} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{false}
\\
  \KEY{Rule} ~ 
    & \SEMREF{evaluate} \LEFTPHRASE ~ \VARREF{ID} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} ~
        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound} ~
          \SEMREF{id} \LEFTPHRASE ~ \VAR{ID} ~ \RIGHTPHRASE 
\\
  \KEY{Rule} ~ 
    & \SEMREF{evaluate} \LEFTPHRASE ~ \LEX{this} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} ~
        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound} ~
          \STRING{this}
\\
  \KEY{Rule} ~ 
    & \SEMREF{evaluate} \LEFTPHRASE ~ \LEX{new} ~ \LEX{int} ~ \LEX{[{}} ~ \VARREF{E} ~ \LEX{]{}} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Vectors}{vector}
        (\NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{interleave-repeat}
           (\NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{allocate-initialised-variable}
              (\NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integers}, \\&\quad \quad \quad \quad 
               0), \\&\quad \quad \quad 
            1, \\&\quad \quad \quad 
            \SEMREF{evaluate} \LEFTPHRASE ~ \VAR{E} ~ \RIGHTPHRASE ))
\\
  \KEY{Rule} ~ 
    & \SEMREF{evaluate} \LEFTPHRASE ~ \LEX{new} ~ \VARREF{ID} ~ \LEX{(} ~ \LEX{)} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Thunks}{force} ~
        \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Classes}{class-instantiator} ~
          \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound} ~
            \SEMREF{id} \LEFTPHRASE ~ \VAR{ID} ~ \RIGHTPHRASE 
\\
  \KEY{Rule} ~ 
    & \SEMREF{evaluate} \LEFTPHRASE ~ \LEX{!{}} ~ \VARREF{E} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{not} ~
        \SEMREF{evaluate} \LEFTPHRASE ~ \VAR{E} ~ \RIGHTPHRASE 
\\
  \KEY{Rule} ~ 
    & \SEMREF{evaluate} \LEFTPHRASE ~ \LEX{(} ~ \VARREF{E} ~ \LEX{)} ~ \RIGHTPHRASE  = \\&\quad
      \SEMREF{evaluate} \LEFTPHRASE ~ \VAR{E} ~ \RIGHTPHRASE 
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Syntax} ~ 
    \VARDECL{EL} : \SYN{expression-list}
      ~ ::= ~ & \SYNREF{expression} ~ \LEFTGROUP \LEX{,{}} ~ \SYNREF{expression-list} \RIGHTGROUP\QUERY
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{evaluate-actuals} \LEFTPHRASE ~ \VARREF{EL}\QUERY : \SYNREF{expression-list}\QUERY ~ \RIGHTPHRASE  : ( \TO \NAMEREF{minijava-values})\STAR 
\\
  \KEY{Rule} ~ 
    & \SEMREF{evaluate-actuals} \LEFTPHRASE ~ \VARREF{E} ~ \RIGHTPHRASE  = \\&\quad
      \SEMREF{evaluate} \LEFTPHRASE ~ \VAR{E} ~ \RIGHTPHRASE 
\\
  \KEY{Rule} ~ 
    & \SEMREF{evaluate-actuals} \LEFTPHRASE ~ \VARREF{E} ~ \LEX{,{}} ~ \VARREF{EL} ~ \RIGHTPHRASE  = \\&\quad
      \SEMREF{evaluate} \LEFTPHRASE ~ \VAR{E} ~ \RIGHTPHRASE , \\&\quad 
      \SEMREF{evaluate-actuals} \LEFTPHRASE ~ \VAR{EL} ~ \RIGHTPHRASE 
\\
  \KEY{Rule} ~ 
    & \SEMREF{evaluate-actuals} \LEFTPHRASE ~  ~ \RIGHTPHRASE  = \\&\quad
      ( ~ )
\end{aligned}$$

# $$\SECT{5}$$ Lexemes
           


$$\relax\begin{aligned}\relax
  \KEY{Lexis} ~ 
    \VARDECL{ID} : \SYN{identifier}
      ~ ::= ~ & \SYNREF{letter} ~ \LEFTGROUP \SYNREF{letter} \mid \SYNREF{digit} \mid \LEX{\UNDERSCORE } \RIGHTGROUP\STAR
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{id} \LEFTPHRASE ~ \VARREF{ID} : \SYNREF{identifier} ~ \RIGHTPHRASE  :  \TO \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{ids} = \textsf{\textquotedblleft}\VAR{ID}\textsf{\textquotedblright}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Lexis} ~ 
    \VARDECL{IL} : \SYN{integer-literal}
      ~ ::= ~ & \SYNREF{digit}\PLUS
    \\
     \SYNDECL{letter}
      ~ ::= ~ &
      \LEX{a} - \LEX{z} \\
      ~ \mid ~ &  \LEX{A} - \LEX{Z}
    \\
     \SYN{digit}
      ~ ::= ~ & \LEX{0} - \LEX{9}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{integer-value} \LEFTPHRASE ~ \VARREF{IL} : \SYNREF{integer-literal} ~ \RIGHTPHRASE  :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integers} = \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{decimal-natural} ~
                                                                                                                            \textsf{\textquotedblleft}\VAR{IL}\textsf{\textquotedblright}
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
