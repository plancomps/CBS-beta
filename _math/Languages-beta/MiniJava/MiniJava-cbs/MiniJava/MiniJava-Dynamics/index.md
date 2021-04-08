---
title: "MiniJava-Dynamics"
math: katex
parent: MiniJava
ancestor: Languages-beta

---
[Languages-beta] : [MiniJava-Dynamics.cbs] \| [PLAIN] \| [PDF]

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

$$\KEY{Language} \quad \STRING{MiniJava}$$




# $$\SECT{1}$$ Programs
           


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{P} : \SYN{program}
      \ ::= \ & \
      \SYNREF{main-class} \ \SYNREF{class-declaration}\STAR
    \\
    \VARDECL{MC} : \SYN{main-class}
      \ ::= \ & \
      \LEX{class} \ \SYNREF{identifier} \ \LEX{{\LEFTBRACE}} \\
                                                               & \ \LEX{public} \ \LEX{static} \ \LEX{void} \ \LEX{main} \ \LEX{{(}} \ \LEX{String} \ \LEX{{[}} \ \LEX{{]}} \ \SYNREF{identifier} \ \LEX{{)}} \ \LEX{{\LEFTBRACE}} \\
                                                                                                                                                                                                                                                                                                      & \ \SYNREF{statement} \\
                                                                                                                                                                                                                                                                                                                           & \ \LEX{{\RIGHTBRACE}} \\
                                                                                                                                                                                                                                                                                                                                                & \ \LEX{{\RIGHTBRACE}}
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{run} \LEFTPHRASE \ \VARREF{P} : \SYNREF{program} \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} 
\\
  \KEY{Rule} \quad
    & \SEMREF{run} \LEFTPHRASE \
                            \LEX{class} \ \VARREF{ID}\SUB{1} \ \LEX{{\LEFTBRACE}} \\&\quad
                            \LEX{public} \ \LEX{static} \ \LEX{void} \ \LEX{main} \ \LEX{{(}} \ \LEX{String} \ \LEX{{[}} \ \LEX{{]}} \ \VARREF{ID}\SUB{2} \ \LEX{{)}} \ \LEX{{\LEFTBRACE}} \\&\quad
                            \VARREF{S} \\&\quad
                            \LEX{{\RIGHTBRACE}} \\&\quad
                            \LEX{{\RIGHTBRACE}} \\&\quad
                            \VARREF{CD}\STAR \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{scope}
        ( \\&\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{recursive}
                (  \SEMREF{bound-names} \LEFTPHRASE \
                                            \VAR{CD}\STAR \
                                          \RIGHTPHRASE , 
                       \SEMREF{declare-classes} \LEFTPHRASE \
                                            \VAR{CD}\STAR \
                                          \RIGHTPHRASE  ), \\&\quad\quad
               \SEMREF{execute} \LEFTPHRASE \
                                    \VAR{S} \
                                  \RIGHTPHRASE  )
\end{align*}$$


  $$\SHADE{\VAR{ID}\SUB{1}}$$ and $$\SHADE{\VAR{ID}\SUB{2}}$$ are not referenced in $$\SHADE{\VAR{S}}$$ or $$\SHADE{\VAR{CD}\STAR}$$


# $$\SECT{2}$$ Declarations
           


## Classes
               


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{CD} : \SYN{class-declaration}
      \ ::= \ & \
      \LEX{class} \ \SYNREF{identifier} \ \LEFTGROUP \LEX{extends} \ \SYNREF{identifier} \RIGHTGROUP\QUERY \ \LEX{{\LEFTBRACE}} \\
                                                                                    & \ \SYNREF{var-declaration}\STAR \\
                                                                                                         & \ \SYNREF{method-declaration}\STAR \\
                                                                                                                              & \ \LEX{{\RIGHTBRACE}}
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{bound-names} \LEFTPHRASE \ \VARREF{CD}\STAR : \SYNREF{class-declaration}\STAR \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sets}{sets}
                     (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{ids} ) 
\\
  \KEY{Rule} \quad
    & \SEMREF{bound-names} \LEFTPHRASE \
                            \LEX{class} \ \VARREF{ID}\SUB{1} \ \LEX{{\LEFTBRACE}} \ \VARREF{VD}\STAR \ \VARREF{MD}\STAR \ \LEX{{\RIGHTBRACE}} \
                          \RIGHTPHRASE  = 
      \{  \SEMREF{id} \LEFTPHRASE \
                                   \VAR{ID}\SUB{1} \
                                 \RIGHTPHRASE  \}
\\
  \KEY{Rule} \quad
    & \SEMREF{bound-names} \LEFTPHRASE \
                            \LEX{class} \ \VARREF{ID}\SUB{1} \ \LEX{extends} \ \VARREF{ID}\SUB{2} \ \LEX{{\LEFTBRACE}} \ \VARREF{VD}\STAR \ \VARREF{MD}\STAR \ \LEX{{\RIGHTBRACE}} \
                          \RIGHTPHRASE  = 
      \{  \SEMREF{id} \LEFTPHRASE \
                                   \VAR{ID}\SUB{1} \
                                 \RIGHTPHRASE  \}
\\
  \KEY{Rule} \quad
    & \SEMREF{bound-names} \LEFTPHRASE \
                             \
                          \RIGHTPHRASE  = 
      \{   \  \}
\\
  \KEY{Rule} \quad
    & \SEMREF{bound-names} \LEFTPHRASE \
                            \VARREF{CD} \ \VARREF{CD}\PLUS \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sets}{set-unite}
        (  \SEMREF{bound-names} \LEFTPHRASE \
                                    \VAR{CD} \
                                  \RIGHTPHRASE , 
               \SEMREF{bound-names} \LEFTPHRASE \
                                    \VAR{CD}\PLUS \
                                  \RIGHTPHRASE  )
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{declare-classes} \LEFTPHRASE \ \VARREF{CD}\STAR : \SYNREF{class-declaration}\STAR \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{envs} 
\\
  \KEY{Rule} \quad
    & \SEMREF{declare-classes} \LEFTPHRASE \
                            \LEX{class} \ \VARREF{ID}\SUB{1} \ \LEX{{\LEFTBRACE}} \ \VARREF{VD}\STAR \ \VARREF{MD}\STAR \ \LEX{{\RIGHTBRACE}} \
                          \RIGHTPHRASE  = \\&\quad
      \{ \SEMREF{id} \LEFTPHRASE \
                               \VAR{ID}\SUB{1} \
                             \RIGHTPHRASE  \mapsto \\&\quad\quad\quad
           \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Classes}{class}
             ( \\&\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Thunks}{thunk} \ 
                     \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Generic}{closure} \\&\quad\quad\quad\quad\quad 
                       \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{References}{reference} \ 
                         \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Objects}{object}
                           ( \\&\quad\quad\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Generating}{fresh-atom}, \\&\quad\quad\quad\quad\quad\quad
                                  \SEMREF{id} \LEFTPHRASE \
                                                       \VAR{ID}\SUB{1} \
                                                     \RIGHTPHRASE , \\&\quad\quad\quad\quad\quad\quad
                                  \SEMREF{declare-variables} \LEFTPHRASE \
                                                       \VAR{VD}\STAR \
                                                     \RIGHTPHRASE  ), \\&\quad\quad\quad\quad
                    \SEMREF{declare-methods} \LEFTPHRASE \
                                         \VAR{MD}\STAR \
                                       \RIGHTPHRASE  ) \}
\\
  \KEY{Rule} \quad
    & \SEMREF{declare-classes} \LEFTPHRASE \
                            \LEX{class} \ \VARREF{ID}\SUB{1} \ \LEX{extends} \ \VARREF{ID}\SUB{2} \ \LEX{{\LEFTBRACE}} \ \VARREF{VD}\STAR \ \VARREF{MD}\STAR \ \LEX{{\RIGHTBRACE}} \
                          \RIGHTPHRASE  = \\&\quad
      \{ \SEMREF{id} \LEFTPHRASE \
                               \VAR{ID}\SUB{1} \
                             \RIGHTPHRASE  \mapsto \\&\quad\quad\quad
           \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Classes}{class}
             ( \\&\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Thunks}{thunk} \ 
                     \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Generic}{closure} \\&\quad\quad\quad\quad\quad 
                       \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{References}{reference} \ 
                         \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Objects}{object}
                           ( \\&\quad\quad\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Generating}{fresh-atom}, \\&\quad\quad\quad\quad\quad\quad
                                  \SEMREF{id} \LEFTPHRASE \
                                                       \VAR{ID}\SUB{1} \
                                                     \RIGHTPHRASE , \\&\quad\quad\quad\quad\quad\quad
                                  \SEMREF{declare-variables} \LEFTPHRASE \
                                                       \VAR{VD}\STAR \
                                                     \RIGHTPHRASE , \\&\quad\quad\quad\quad\quad\quad
                                  \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{References}{dereference} \ 
                                   \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Thunks}{force} \ 
                                     \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Classes}{class-instantiator} \ 
                                       \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound} \ 
                                         \SEMREF{id} \LEFTPHRASE \
                                                               \VAR{ID}\SUB{2} \
                                                             \RIGHTPHRASE  ), \\&\quad\quad\quad\quad
                    \SEMREF{declare-methods} \LEFTPHRASE \
                                         \VAR{MD}\STAR \
                                       \RIGHTPHRASE , \\&\quad\quad\quad\quad
                    \SEMREF{id} \LEFTPHRASE \
                                         \VAR{ID}\SUB{2} \
                                       \RIGHTPHRASE  ) \}
\\
  \KEY{Rule} \quad
    & \SEMREF{declare-classes} \LEFTPHRASE \
                             \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{map}
        (   \  )
\\
  \KEY{Rule} \quad
    & \SEMREF{declare-classes} \LEFTPHRASE \
                            \VARREF{CD} \ \VARREF{CD}\PLUS \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{collateral}
        (  \SEMREF{declare-classes} \LEFTPHRASE \
                                    \VAR{CD} \
                                  \RIGHTPHRASE , 
               \SEMREF{declare-classes} \LEFTPHRASE \
                                    \VAR{CD}\PLUS \
                                  \RIGHTPHRASE  )
\end{align*}$$

## Variables
               


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{VD} : \SYN{var-declaration}
      \ ::= \ & \
      \SYNREF{type} \ \SYNREF{identifier} \ \LEX{{;}}
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{declare-variables} \LEFTPHRASE \ \VARREF{VD}\STAR : \SYNREF{var-declaration}\STAR \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{envs} 
\\
  \KEY{Rule} \quad
    & \SEMREF{declare-variables} \LEFTPHRASE \
                            \VARREF{T} \ \VARREF{ID} \ \LEX{{;}} \
                          \RIGHTPHRASE  = \\&\quad
      \{ \SEMREF{id} \LEFTPHRASE \
                               \VAR{ID} \
                             \RIGHTPHRASE  \mapsto \\&\quad\quad\quad
           \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{allocate-initialised-variable}
             (  \SEMREF{type} \LEFTPHRASE \
                                         \VAR{T} \
                                       \RIGHTPHRASE , 
                    \SEMREF{initial-value} \LEFTPHRASE \
                                         \VAR{T} \
                                       \RIGHTPHRASE  ) \}
\\
  \KEY{Rule} \quad
    & \SEMREF{declare-variables} \LEFTPHRASE \
                             \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{map}
        (   \  )
\\
  \KEY{Rule} \quad
    & \SEMREF{declare-variables} \LEFTPHRASE \
                            \VARREF{VD} \ \VARREF{VD}\PLUS \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{collateral}
        (  \SEMREF{declare-variables} \LEFTPHRASE \
                                    \VAR{VD} \
                                  \RIGHTPHRASE , 
               \SEMREF{declare-variables} \LEFTPHRASE \
                                    \VAR{VD}\PLUS \
                                  \RIGHTPHRASE  )
\end{align*}$$

## Types
               


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{T} : \SYN{type}
      \ ::= \ & \
      \LEX{int} \ \LEX{{[}} \ \LEX{{]}} \\
      \ \mid \ & \ \LEX{boolean} \\
      \ \mid \ & \ \LEX{int} \\
      \ \mid \ & \ \SYNREF{identifier}
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{type} \LEFTPHRASE \ \VARREF{T} : \SYNREF{type} \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{types} 
\\
  \KEY{Rule} \quad
    & \SEMREF{type} \LEFTPHRASE \
                            \LEX{int} \ \LEX{{[}} \ \LEX{{]}} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Vectors}{vectors}
        (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{variables} )
\\
  \KEY{Rule} \quad
    & \SEMREF{type} \LEFTPHRASE \
                            \LEX{boolean} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{booleans}
\\
  \KEY{Rule} \quad
    & \SEMREF{type} \LEFTPHRASE \
                            \LEX{int} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integers}
\\
  \KEY{Rule} \quad
    & \SEMREF{type} \LEFTPHRASE \
                            \VARREF{ID} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{References}{pointers}
        (  \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Objects}{objects} )
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{initial-value} \LEFTPHRASE \ \VARREF{T} : \SYNREF{type} \ \RIGHTPHRASE  
    :  \TO \NAMEREF{minijava-values} 
\\
  \KEY{Rule} \quad
    & \SEMREF{initial-value} \LEFTPHRASE \
                            \LEX{int} \ \LEX{{[}} \ \LEX{{]}} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Vectors}{vector}
        (   \  )
\\
  \KEY{Rule} \quad
    & \SEMREF{initial-value} \LEFTPHRASE \
                            \LEX{boolean} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{false}
\\
  \KEY{Rule} \quad
    & \SEMREF{initial-value} \LEFTPHRASE \
                            \LEX{int} \
                          \RIGHTPHRASE  = 
      0
\\
  \KEY{Rule} \quad
    & \SEMREF{initial-value} \LEFTPHRASE \
                            \VARREF{ID} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{References}{pointer-null}
\end{align*}$$

## Methods
               


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{MD} : \SYN{method-declaration}
      \ ::= \ & \
      \LEX{public} \ \SYNREF{type} \ \SYNREF{identifier} \ \LEX{{(}} \ \SYNREF{formal-list}\QUERY \ \LEX{{)}} \ \LEX{{\LEFTBRACE}} \\
                                                                                                                                                   & \ \SYNREF{var-declaration}\STAR \\
                                                                                                                                                                        & \ \SYNREF{statement}\STAR \\
                                                                                                                                                                                             & \ \LEX{return} \ \SYNREF{expression} \ \LEX{{;}} \\
                                                                                                                                                                                                                                                            & \ \LEX{{\RIGHTBRACE}}
\end{align*}$$

$$\begin{align*}
  \KEY{Type} \quad 
  & \NAMEDECL{methods}  \\&\quad
    \leadsto \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Functions}{functions}
               (  \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuples}
                       (  \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{References}{references}
                               (  \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Objects}{objects} ), 
                              \NAMEREF{minijava-values}\STAR ), 
                      \NAMEREF{minijava-values} )
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{declare-methods} \LEFTPHRASE \ \VARREF{MD}\STAR : \SYNREF{method-declaration}\STAR \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{envs} 
\\
  \KEY{Rule} \quad
    & \SEMREF{declare-methods} \LEFTPHRASE \
                            \LEX{public} \ \VARREF{T} \ \VARREF{ID} \ \LEX{{(}} \ \VARREF{FL}\QUERY \ \LEX{{)}} \ \LEX{{\LEFTBRACE}} \ \VARREF{VD}\STAR \ \VARREF{S}\STAR \ \LEX{return} \ \VARREF{E} \ \LEX{{;}} \ \LEX{{\RIGHTBRACE}} \
                          \RIGHTPHRASE  = \\&\quad
      \{ \SEMREF{id} \LEFTPHRASE \
                               \VAR{ID} \
                             \RIGHTPHRASE  \mapsto \\&\quad\quad\quad
           \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Functions}{function} \ 
             \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Generic}{closure} \ 
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{scope}
                 ( \\&\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{collateral}
                         ( \\&\quad\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Patterns}{match}
                                 ( \\&\quad\quad\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}, \\&\quad\quad\quad\quad\quad\quad
                                        \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuple}
                                         ( \\&\quad\quad\quad\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Patterns}{pattern} \ 
                                                 \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Generic}{abstraction} \\&\quad\quad\quad\quad\quad\quad\quad\quad 
                                                   \{ \STRING{this} \mapsto \\&\quad\quad\quad\quad\quad\quad\quad\quad\quad\quad
                                                        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{allocate-initialised-variable}
                                                          (  \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{References}{pointers}
                                                                  (  \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Objects}{objects} ), 
                                                                 \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given} ) \}, \\&\quad\quad\quad\quad\quad\quad\quad
                                                \SEMREF{bind-formals} \LEFTPHRASE \
                                                                     \VAR{FL}\QUERY \
                                                                   \RIGHTPHRASE  ) ), \\&\quad\quad\quad\quad\quad
                                \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Objects}{object-single-inheritance-feature-map} \\&\quad\quad\quad\quad\quad\quad 
                                 \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{checked} \ 
                                   \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{References}{dereference} \ 
                                     \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sequences}{first} \ 
                                       \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuple-elements} \ 
                                         \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}, \\&\quad\quad\quad\quad\quad
                                \SEMREF{declare-variables} \LEFTPHRASE \
                                                     \VAR{VD}\STAR \
                                                   \RIGHTPHRASE  ), \\&\quad\quad\quad\quad
                        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
                         (  \SEMREF{execute} \LEFTPHRASE \
                                                     \VAR{S}\STAR \
                                                   \RIGHTPHRASE , 
                                \SEMREF{evaluate} \LEFTPHRASE \
                                                     \VAR{E} \
                                                   \RIGHTPHRASE  ) ) \}
\\
  \KEY{Rule} \quad
    & \SEMREF{declare-methods} \LEFTPHRASE \
                             \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{map}
        (   \  )
\\
  \KEY{Rule} \quad
    & \SEMREF{declare-methods} \LEFTPHRASE \
                            \VARREF{MD} \ \VARREF{MD}\PLUS \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{collateral}
        (  \SEMREF{declare-methods} \LEFTPHRASE \
                                    \VAR{MD} \
                                  \RIGHTPHRASE , 
               \SEMREF{declare-methods} \LEFTPHRASE \
                                    \VAR{MD}\PLUS \
                                  \RIGHTPHRASE  )
\end{align*}$$

## Formals
               


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{FL} : \SYN{formal-list}
      \ ::= \ & \
      \SYNREF{type} \ \SYNREF{identifier} \ \LEFTGROUP \LEX{{,}} \ \SYNREF{formal-list} \RIGHTGROUP\QUERY
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{bind-formals} \LEFTPHRASE \ \VARREF{FL}\QUERY : \SYNREF{formal-list}\QUERY \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Patterns}{patterns}\STAR 
\\
  \KEY{Rule} \quad
    & \SEMREF{bind-formals} \LEFTPHRASE \
                            \VARREF{T} \ \VARREF{ID} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Patterns}{pattern} \ 
        \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Generic}{abstraction} \\&\quad\quad 
          \{ \SEMREF{id} \LEFTPHRASE \
                                   \VAR{ID} \
                                 \RIGHTPHRASE  \mapsto \\&\quad\quad\quad\quad
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{allocate-initialised-variable}
                 (  \SEMREF{type} \LEFTPHRASE \
                                             \VAR{T} \
                                           \RIGHTPHRASE , 
                        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given} ) \}
\\
  \KEY{Rule} \quad
    & \SEMREF{bind-formals} \LEFTPHRASE \
                            \VARREF{T} \ \VARREF{ID} \ \LEX{{,}} \ \VARREF{FL} \
                          \RIGHTPHRASE  = 
      \SEMREF{bind-formals} \LEFTPHRASE \
                            \VAR{T} \ \VAR{ID} \
                          \RIGHTPHRASE , 
       \SEMREF{bind-formals} \LEFTPHRASE \
                            \VAR{FL} \
                          \RIGHTPHRASE 
\\
  \KEY{Rule} \quad
    & \SEMREF{bind-formals} \LEFTPHRASE \
                             \
                          \RIGHTPHRASE  = 
      (   \  )
\end{align*}$$

# $$\SECT{3}$$ Statements
           


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{S} : \SYN{statement}
      \ ::= \ & \
      \LEX{{\LEFTBRACE}} \ \SYNREF{statement}\STAR \ \LEX{{\RIGHTBRACE}} \\
      \ \mid \ & \ \LEX{if} \ \LEX{{(}} \ \SYNREF{expression} \ \LEX{{)}} \ \SYNREF{statement} \ \LEX{else} \ \SYNREF{statement} \\
      \ \mid \ & \ \LEX{while} \ \LEX{{(}} \ \SYNREF{expression} \ \LEX{{)}} \ \SYNREF{statement} \\
      \ \mid \ & \ \LEX{System} \ \LEX{{.}} \ \LEX{out} \ \LEX{{.}} \ \LEX{println} \ \LEX{{(}} \ \SYNREF{expression} \ \LEX{{)}} \ \LEX{{;}} \\
      \ \mid \ & \ \SYNREF{identifier} \ \LEX{{=}} \ \SYNREF{expression} \ \LEX{{;}} \\
      \ \mid \ & \ \SYNREF{identifier} \ \LEX{{[}} \ \SYNREF{expression} \ \LEX{{]}} \ \LEX{{=}} \ \SYNREF{expression} \ \LEX{{;}}
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{execute} \LEFTPHRASE \ \VARREF{S}\STAR : \SYNREF{statement}\STAR \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} 
\\
  \KEY{Rule} \quad
    & \SEMREF{execute} \LEFTPHRASE \
                            \LEX{{\LEFTBRACE}} \ \VARREF{S}\STAR \ \LEX{{\RIGHTBRACE}} \
                          \RIGHTPHRASE  = 
      \SEMREF{execute} \LEFTPHRASE \
                            \VAR{S}\STAR \
                          \RIGHTPHRASE 
\\
  \KEY{Rule} \quad
    & \SEMREF{execute} \LEFTPHRASE \
                            \LEX{if} \ \LEX{{(}} \ \VARREF{E} \ \LEX{{)}} \ \VARREF{S}\SUB{1} \ \LEX{else} \ \VARREF{S}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-true-else}
        (  \SEMREF{evaluate} \LEFTPHRASE \
                                    \VAR{E} \
                                  \RIGHTPHRASE , 
               \SEMREF{execute} \LEFTPHRASE \
                                    \VAR{S}\SUB{1} \
                                  \RIGHTPHRASE , 
               \SEMREF{execute} \LEFTPHRASE \
                                    \VAR{S}\SUB{2} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{execute} \LEFTPHRASE \
                            \LEX{while} \ \LEX{{(}} \ \VARREF{E} \ \LEX{{)}} \ \VARREF{S} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{while-true}
        (  \SEMREF{evaluate} \LEFTPHRASE \
                                    \VAR{E} \
                                  \RIGHTPHRASE , 
               \SEMREF{execute} \LEFTPHRASE \
                                    \VAR{S} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{execute} \LEFTPHRASE \
                            \LEX{System} \ \LEX{{.}} \ \LEX{out} \ \LEX{{.}} \ \LEX{println} \ \LEX{{(}} \ \VARREF{E} \ \LEX{{)}} \ \LEX{{;}} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Interacting}{print}
        (  \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Strings}{to-string} \ 
                \SEMREF{evaluate} \LEFTPHRASE \
                                      \VAR{E} \
                                    \RIGHTPHRASE , 
               \STRING{{\BACKSLASH}n} )
\\
  \KEY{Rule} \quad
    & \SEMREF{execute} \LEFTPHRASE \
                            \VARREF{ID} \ \LEX{{=}} \ \VARREF{E} \ \LEX{{;}} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
        (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound} \ 
                \SEMREF{id} \LEFTPHRASE \
                                      \VAR{ID} \
                                    \RIGHTPHRASE , 
               \SEMREF{evaluate} \LEFTPHRASE \
                                    \VAR{E} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{execute} \LEFTPHRASE \
                            \VARREF{ID} \ \LEX{{[}} \ \VARREF{E}\SUB{1} \ \LEX{{]}} \ \LEX{{=}} \ \VARREF{E}\SUB{2} \ \LEX{{;}} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
        ( \\&\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{checked} \ 
                \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sequences}{index}
                  ( \\&\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-add}
                          (  \SEMREF{evaluate} \LEFTPHRASE \
                                                      \VAR{E}\SUB{1} \
                                                    \RIGHTPHRASE , 
                                 1 ), \\&\quad\quad\quad
                         \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Vectors}{vector-elements} \ 
                          \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} \ 
                            \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound} \ 
                              \SEMREF{id} \LEFTPHRASE \
                                                    \VAR{ID} \
                                                  \RIGHTPHRASE  ), \\&\quad\quad
               \SEMREF{evaluate} \LEFTPHRASE \
                                    \VAR{E}\SUB{2} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{execute} \LEFTPHRASE \
                             \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null}
\\
  \KEY{Rule} \quad
    & \SEMREF{execute} \LEFTPHRASE \
                            \VARREF{S} \ \VARREF{S}\PLUS \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
        (  \SEMREF{execute} \LEFTPHRASE \
                                    \VAR{S} \
                                  \RIGHTPHRASE , 
               \SEMREF{execute} \LEFTPHRASE \
                                    \VAR{S}\PLUS \
                                  \RIGHTPHRASE  )
\end{align*}$$

# $$\SECT{4}$$ Expressions
           


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{E} : \SYN{expression}
      \ ::= \ & \
      \SYNREF{expression} \ \LEX{{\AMPERSAND}{\AMPERSAND}} \ \SYNREF{expression} \\
      \ \mid \ & \ \SYNREF{expression} \ \LEX{{<}} \ \SYNREF{expression} \\
      \ \mid \ & \ \SYNREF{expression} \ \LEX{{+}} \ \SYNREF{expression} \\
      \ \mid \ & \ \SYNREF{expression} \ \LEX{{-}} \ \SYNREF{expression} \\
      \ \mid \ & \ \SYNREF{expression} \ \LEX{{*}} \ \SYNREF{expression} \\
      \ \mid \ & \ \SYNREF{expression} \ \LEX{{[}} \ \SYNREF{expression} \ \LEX{{]}} \\
      \ \mid \ & \ \SYNREF{expression} \ \LEX{{.}} \ \LEX{length} \\
      \ \mid \ & \ \SYNREF{expression} \ \LEX{{.}} \ \SYNREF{identifier} \ \LEX{{(}} \ \SYNREF{expression-list}\QUERY \ \LEX{{)}} \\
      \ \mid \ & \ \SYNREF{integer-literal} \\
      \ \mid \ & \ \LEX{true} \\
      \ \mid \ & \ \LEX{false} \\
      \ \mid \ & \ \SYNREF{identifier} \\
      \ \mid \ & \ \LEX{this} \\
      \ \mid \ & \ \LEX{new} \ \LEX{int} \ \LEX{{[}} \ \SYNREF{expression} \ \LEX{{]}} \\
      \ \mid \ & \ \LEX{new} \ \SYNREF{identifier} \ \LEX{{(}} \ \LEX{{)}} \\
      \ \mid \ & \ \LEX{{!}} \ \SYNREF{expression} \\
      \ \mid \ & \ \LEX{{(}} \ \SYNREF{expression} \ \LEX{{)}}
\end{align*}$$

$$\begin{align*}
  \KEY{Type} \quad 
  & \NAMEDECL{minijava-values}  \\&\quad
    \leadsto \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{booleans}  \mid \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integers}  \mid \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Vectors}{vectors}
                                (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{variables} )  \mid \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{References}{pointers}
                                (  \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Objects}{objects} )
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{evaluate} \LEFTPHRASE \ \VARREF{E} : \SYNREF{expression} \ \RIGHTPHRASE  
    :  \TO \NAMEREF{minijava-values} 
\end{align*}$$


  $$\SHADE{\SEMREF{evaluate} \LEFTPHRASE \
                               \_ \
                             \RIGHTPHRASE }$$ is a well-typed funcon term only when $$\SHADE{\_}$$ is a well-typed
  MiniJava expression.


$$\begin{align*}
  \KEY{Rule} \quad
    & \SEMREF{evaluate} \LEFTPHRASE \
                            \VARREF{E}\SUB{1} \ \LEX{{\AMPERSAND}{\AMPERSAND}} \ \VARREF{E}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-true-else}
        (  \SEMREF{evaluate} \LEFTPHRASE \
                                    \VAR{E}\SUB{1} \
                                  \RIGHTPHRASE , 
               \SEMREF{evaluate} \LEFTPHRASE \
                                    \VAR{E}\SUB{2} \
                                  \RIGHTPHRASE , 
               \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{false} )
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate} \LEFTPHRASE \
                            \VARREF{E}\SUB{1} \ \LEX{{<}} \ \VARREF{E}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-is-less}
        (  \SEMREF{evaluate} \LEFTPHRASE \
                                    \VAR{E}\SUB{1} \
                                  \RIGHTPHRASE , 
               \SEMREF{evaluate} \LEFTPHRASE \
                                    \VAR{E}\SUB{2} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate} \LEFTPHRASE \
                            \VARREF{E}\SUB{1} \ \LEX{{+}} \ \VARREF{E}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-add}
        (  \SEMREF{evaluate} \LEFTPHRASE \
                                    \VAR{E}\SUB{1} \
                                  \RIGHTPHRASE , 
               \SEMREF{evaluate} \LEFTPHRASE \
                                    \VAR{E}\SUB{2} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate} \LEFTPHRASE \
                            \VARREF{E}\SUB{1} \ \LEX{{-}} \ \VARREF{E}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-subtract}
        (  \SEMREF{evaluate} \LEFTPHRASE \
                                    \VAR{E}\SUB{1} \
                                  \RIGHTPHRASE , 
               \SEMREF{evaluate} \LEFTPHRASE \
                                    \VAR{E}\SUB{2} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate} \LEFTPHRASE \
                            \VARREF{E}\SUB{1} \ \LEX{{*}} \ \VARREF{E}\SUB{2} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-multiply}
        (  \SEMREF{evaluate} \LEFTPHRASE \
                                    \VAR{E}\SUB{1} \
                                  \RIGHTPHRASE , 
               \SEMREF{evaluate} \LEFTPHRASE \
                                    \VAR{E}\SUB{2} \
                                  \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate} \LEFTPHRASE \
                            \VARREF{E}\SUB{1} \ \LEX{{[}} \ \VARREF{E}\SUB{2} \ \LEX{{]}} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} \ 
        \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{checked} \ 
          \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sequences}{index}
            ( \\&\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-add}
                    (  \SEMREF{evaluate} \LEFTPHRASE \
                                                \VAR{E}\SUB{2} \
                                              \RIGHTPHRASE , 
                           1 ), \\&\quad\quad
                   \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Vectors}{vector-elements} \ 
                    \SEMREF{evaluate} \LEFTPHRASE \
                                          \VAR{E}\SUB{1} \
                                        \RIGHTPHRASE  )
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate} \LEFTPHRASE \
                            \VARREF{E} \ \LEX{{.}} \ \LEX{length} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sequences}{length} \ 
        \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Vectors}{vector-elements} \ 
          \SEMREF{evaluate} \LEFTPHRASE \
                                \VAR{E} \
                              \RIGHTPHRASE 
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate} \LEFTPHRASE \
                            \VARREF{E} \ \LEX{{.}} \ \VARREF{ID} \ \LEX{{(}} \ \VARREF{EL}\QUERY \ \LEX{{)}} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{give}
        ( \\&\quad\quad \SEMREF{evaluate} \LEFTPHRASE \
                                    \VAR{E} \
                                  \RIGHTPHRASE , \\&\quad\quad
               \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Functions}{apply}
                ( \\&\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{lookup}
                        ( \\&\quad\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Classes}{class-name-single-inheritance-feature-map} \\&\quad\quad\quad\quad\quad 
                                \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Objects}{object-class-name} \ 
                                  \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{checked} \ 
                                    \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{References}{dereference} \ 
                                      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}, \\&\quad\quad\quad\quad
                               \SEMREF{id} \LEFTPHRASE \
                                                    \VAR{ID} \
                                                  \RIGHTPHRASE  ), \\&\quad\quad\quad
                       \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuple}
                        (  \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}, 
                               \SEMREF{evaluate-actuals} \LEFTPHRASE \
                                                    \VAR{EL}\QUERY \
                                                  \RIGHTPHRASE  ) ) )
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate} \LEFTPHRASE \
                            \VARREF{IL} \
                          \RIGHTPHRASE  = 
      \SEMREF{integer-value} \LEFTPHRASE \
                            \VAR{IL} \
                          \RIGHTPHRASE 
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate} \LEFTPHRASE \
                            \LEX{true} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{true}
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate} \LEFTPHRASE \
                            \LEX{false} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{false}
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate} \LEFTPHRASE \
                            \VARREF{ID} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} \ 
        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound} \ 
          \SEMREF{id} \LEFTPHRASE \
                                \VAR{ID} \
                              \RIGHTPHRASE 
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate} \LEFTPHRASE \
                            \LEX{this} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned} \ 
        \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound} \ 
          \STRING{this}
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate} \LEFTPHRASE \
                            \LEX{new} \ \LEX{int} \ \LEX{{[}} \ \VARREF{E} \ \LEX{{]}} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Vectors}{vector}
        ( \\&\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{interleave-repeat}
                ( \\&\quad\quad\quad \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{allocate-initialised-variable}
                        (  \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integers}, 
                               0 ), 
                       1, 
                       \SEMREF{evaluate} \LEFTPHRASE \
                                            \VAR{E} \
                                          \RIGHTPHRASE  ) )
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate} \LEFTPHRASE \
                            \LEX{new} \ \VARREF{ID} \ \LEX{{(}} \ \LEX{{)}} \
                          \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Thunks}{force} \ 
        \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Classes}{class-instantiator} \ 
          \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound} \ 
            \SEMREF{id} \LEFTPHRASE \
                                  \VAR{ID} \
                                \RIGHTPHRASE 
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate} \LEFTPHRASE \
                            \LEX{{!}} \ \VARREF{E} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{not} \ 
        \SEMREF{evaluate} \LEFTPHRASE \
                              \VAR{E} \
                            \RIGHTPHRASE 
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate} \LEFTPHRASE \
                            \LEX{{(}} \ \VARREF{E} \ \LEX{{)}} \
                          \RIGHTPHRASE  = 
      \SEMREF{evaluate} \LEFTPHRASE \
                            \VAR{E} \
                          \RIGHTPHRASE 
\end{align*}$$

$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{EL} : \SYN{expression-list}
      \ ::= \ & \
      \SYNREF{expression} \ \LEFTGROUP \LEX{{,}} \ \SYNREF{expression-list} \RIGHTGROUP\QUERY
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{evaluate-actuals} \LEFTPHRASE \ \VARREF{EL}\QUERY : \SYNREF{expression-list}\QUERY \ \RIGHTPHRASE  
    : (   \TO \NAMEREF{minijava-values} )\STAR 
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate-actuals} \LEFTPHRASE \
                            \VARREF{E} \
                          \RIGHTPHRASE  = 
      \SEMREF{evaluate} \LEFTPHRASE \
                            \VAR{E} \
                          \RIGHTPHRASE 
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate-actuals} \LEFTPHRASE \
                            \VARREF{E} \ \LEX{{,}} \ \VARREF{EL} \
                          \RIGHTPHRASE  = 
      \SEMREF{evaluate} \LEFTPHRASE \
                            \VAR{E} \
                          \RIGHTPHRASE , 
       \SEMREF{evaluate-actuals} \LEFTPHRASE \
                            \VAR{EL} \
                          \RIGHTPHRASE 
\\
  \KEY{Rule} \quad
    & \SEMREF{evaluate-actuals} \LEFTPHRASE \
                             \
                          \RIGHTPHRASE  = 
      (   \  )
\end{align*}$$

# $$\SECT{5}$$ Lexemes
           


$$\begin{align*}
  \KEY{Lexis} \quad
    \VARDECL{ID} : \SYN{identifier}
      \ ::= \ & \
      \SYNREF{letter} \ \LEFTGROUP \SYNREF{letter} \mid \SYNREF{digit} \mid \LEX{{\UNDERSCORE}} \RIGHTGROUP\STAR
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{id} \LEFTPHRASE \ \VARREF{ID} : \SYNREF{identifier} \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{ids} \\&\quad
    =  \textsf{\textquotedblleft}\VAR{ID}\textsf{\textquotedblright}
\end{align*}$$

$$\begin{align*}
  \KEY{Lexis} \quad
    \VARDECL{IL} : \SYN{integer-literal}
      \ ::= \ & \
      \SYNREF{digit}\PLUS
    \\
     \SYN{letter}
      \ ::= \ & \
      \LEX{a} {-} \LEX{z} \mid \LEX{A} {-} \LEX{Z}
    \\
     \SYN{digit}
      \ ::= \ & \
      \LEX{0} {-} \LEX{9}
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{integer-value} \LEFTPHRASE \ \VARREF{IL} : \SYNREF{integer-literal} \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integers} \\&\quad
    =  \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{decimal-natural} \ 
         \textsf{\textquotedblleft}\VAR{IL}\textsf{\textquotedblright}
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
[MiniJava-Dynamics.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/MiniJava/MiniJava-cbs/MiniJava/MiniJava-Dynamics/MiniJava-Dynamics.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/MiniJava/MiniJava-cbs/MiniJava/MiniJava-Dynamics
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Languages-beta/MiniJava/MiniJava-cbs/MiniJava/MiniJava-Dynamics
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/MiniJava/MiniJava-cbs/MiniJava/MiniJava-Dynamics/MiniJava-Dynamics.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20MiniJava/MiniJava-Dynamics/MiniJava-Dynamics.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
  "GENERATE AN EMAIL TEMPLATE"
