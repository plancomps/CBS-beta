---
layout: default
title: "IMPPP-2"
math: katex
parent: IMPPP
ancestor: Unstable-Languages-beta

---

[Unstable-Languages-beta] : [IMPPP-2.cbs]

$$\KEY{Language} \STRING{IMPPP}$$

# $$\SECT{2}$$ Value expressions
           


$$\relax\begin{aligned}\relax
  \KEY{Syntax} ~ 
    \VARDECL{AExp} : \SYNDECL{aexp}
      ~ ::= ~ &
      \SYNHYPER{../.}{IMPPP-1}{int} \\
      ~ \mid ~ &  \SYNHYPER{../.}{IMPPP-1}{string} \\
      ~ \mid ~ &  \SYNHYPER{../.}{IMPPP-1}{id} \\
      ~ \mid ~ &  \SYNREF{aexp} ~ \LEX{+{}} ~ \SYNREF{aexp} \\
      ~ \mid ~ &  \SYNREF{aexp} ~ \LEX{/{}} ~ \SYNREF{aexp} \\
      ~ \mid ~ &  \LEX{(} ~ \SYNREF{aexp} ~ \LEX{)} \\
      ~ \mid ~ &  \SYNHYPER{../.}{IMPPP-1}{id} ~ \LEX{={}} ~ \SYNREF{aexp} \\
      ~ \mid ~ &  \LEX{+{}+{}} ~ \SYNHYPER{../.}{IMPPP-1}{id} \\
      ~ \mid ~ &  \LEX{read} ~ \LEX{(} ~ \LEX{)} \\
      ~ \mid ~ &  \LEX{spawn} ~ \SYNHYPER{../.}{IMPPP-4}{block}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Type} ~  
  & \NAMEDECL{aexp-values}  
  \leadsto \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integers} \mid \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Strings}{strings}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{integer-add-or-string-append}(\_ : \NAMEREF{aexp-values}, \_ : \NAMEREF{aexp-values}) :  \TO \NAMEREF{aexp-values}
\\
  \KEY{Rule} ~ 
    & \NAMEREF{integer-add-or-string-append}
        (\VAR{N}\SUB{1} : \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integers},   
         \VAR{N}\SUB{2} : \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integers}) \leadsto \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-add}
                                                 (\VAR{N}\SUB{1},   
                                                  \VAR{N}\SUB{2})
\\
  \KEY{Rule} ~ 
    & \NAMEREF{integer-add-or-string-append}
        (\VAR{S}\SUB{1} : \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Strings}{strings},   
         \VAR{S}\SUB{2} : \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Strings}{strings}) \leadsto \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Strings}{string-append}
                                                 (\VAR{S}\SUB{1},   
                                                  \VAR{S}\SUB{2})
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{eval-arith} \LEFTPHRASE ~ \_ : \SYNREF{aexp} ~ \RIGHTPHRASE  :  \TO \NAMEREF{aexp-values} 
\\
  \KEY{Rule} ~ 
    & \SEMREF{eval-arith} \LEFTPHRASE ~ \VARHYPER{../.}{IMPPP-1}{N} ~ \RIGHTPHRASE  = \\&\quad
      \SEMHYPER{../.}{IMPPP-1}{int-val} \LEFTPHRASE ~ \VAR{N} ~ \RIGHTPHRASE 
\\
  \KEY{Rule} ~ 
    & \SEMREF{eval-arith} \LEFTPHRASE ~ \VARHYPER{../.}{IMPPP-1}{S} ~ \RIGHTPHRASE  = \\&\quad
      \SEMHYPER{../.}{IMPPP-1}{string-val} \LEFTPHRASE ~ \VAR{S} ~ \RIGHTPHRASE 
\\
  \KEY{Rule} ~ 
    & \SEMREF{eval-arith} \LEFTPHRASE ~ \VARHYPER{../.}{IMPPP-1}{I} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned}
        (\NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound}
           (\SEMHYPER{../.}{IMPPP-1}{id} \LEFTPHRASE ~ \VAR{I} ~ \RIGHTPHRASE ))
\\
  \KEY{Rule} ~ 
    & \SEMREF{eval-arith} \LEFTPHRASE ~ \VARREF{AExp}\SUB{1} ~ \LEX{+{}} ~ \VARREF{AExp}\SUB{2} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEREF{integer-add-or-string-append}
        (\SEMREF{eval-arith} \LEFTPHRASE ~ \VAR{AExp}\SUB{1} ~ \RIGHTPHRASE , \\&\quad \quad 
         \SEMREF{eval-arith} \LEFTPHRASE ~ \VAR{AExp}\SUB{2} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{eval-arith} \LEFTPHRASE ~ \VARREF{AExp}\SUB{1} ~ \LEX{/{}} ~ \VARREF{AExp}\SUB{2} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{checked} ~
        \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-divide}
          (\SEMREF{eval-arith} \LEFTPHRASE ~ \VAR{AExp}\SUB{1} ~ \RIGHTPHRASE , \\&\quad \quad \quad 
           \SEMREF{eval-arith} \LEFTPHRASE ~ \VAR{AExp}\SUB{2} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{eval-arith} \LEFTPHRASE ~ \LEX{(} ~ \VARREF{AExp} ~ \LEX{)} ~ \RIGHTPHRASE  = \\&\quad
      \SEMREF{eval-arith} \LEFTPHRASE ~ \VAR{AExp} ~ \RIGHTPHRASE 
\\
  \KEY{Rule} ~ 
    & \SEMREF{eval-arith} \LEFTPHRASE ~ \VARHYPER{../.}{IMPPP-1}{I} ~ \LEX{={}} ~ \VARREF{AExp} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{give}
        (\SEMREF{eval-arith} \LEFTPHRASE ~ \VAR{AExp} ~ \RIGHTPHRASE , \\&\quad \quad 
         \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
           (\NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
              (\NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound}
                 (\SEMHYPER{../.}{IMPPP-1}{id} \LEFTPHRASE ~ \VAR{I} ~ \RIGHTPHRASE ), \\&\quad \quad \quad \quad 
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}), \\&\quad \quad \quad 
            \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}))
\\
  \KEY{Rule} ~ 
    & \SEMREF{eval-arith} \LEFTPHRASE ~ \LEX{+{}+{}} ~ \VARHYPER{../.}{IMPPP-1}{I} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{give}
        (\NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-add}
           (\NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned}
              (\NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound}
                 (\SEMHYPER{../.}{IMPPP-1}{id} \LEFTPHRASE ~ \VAR{I} ~ \RIGHTPHRASE )), \\&\quad \quad \quad 
            1), \\&\quad \quad 
         \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
           (\NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
              (\NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound}
                 (\SEMHYPER{../.}{IMPPP-1}{id} \LEFTPHRASE ~ \VAR{I} ~ \RIGHTPHRASE ), \\&\quad \quad \quad \quad 
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}), \\&\quad \quad \quad 
            \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}))
\\
  \KEY{Rule} ~ 
    & \SEMREF{eval-arith} \LEFTPHRASE ~ \LEX{read} ~ \LEX{(} ~ \LEX{)} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Interacting}{read}
\\
  \KEY{Rule} ~ 
    & \SEMREF{eval-arith} \LEFTPHRASE ~ \LEX{spawn} ~ \VARHYPER{../.}{IMPPP-4}{Block} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Normal}{Indexing}{allocate-index}
        (\NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads}{Multithreading}{thread-activate} ~
           \NAMEHYPER{../../../../../Unstable-Funcons-beta/Computations/Threads}{Multithreading}{thread-joinable} ~
             \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Thunks}{thunk} ~
               \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Generic}{closure} ~
                 \SEMHYPER{../.}{IMPPP-4}{execute} \LEFTPHRASE ~ \VAR{Block} ~ \RIGHTPHRASE )
\end{aligned}$$

## Value expression sequences
               


$$\relax\begin{aligned}\relax
  \KEY{Syntax} ~ 
    \VARDECL{AExps} : \SYN{aexps}
      ~ ::= ~ & \SYNREF{aexp} ~ \LEFTGROUP \LEX{,{}} ~ \SYNREF{aexps} \RIGHTGROUP\QUERY
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{eval-arith-seq} \LEFTPHRASE ~ \_ : \SYNREF{aexps} ~ \RIGHTPHRASE  : ( \TO \NAMEREF{aexp-values})\PLUS 
\\
  \KEY{Rule} ~ 
    & \SEMREF{eval-arith-seq} \LEFTPHRASE ~ \VARREF{AExp} ~ \RIGHTPHRASE  = \\&\quad
      \SEMREF{eval-arith} \LEFTPHRASE ~ \VAR{AExp} ~ \RIGHTPHRASE 
\\
  \KEY{Rule} ~ 
    & \SEMREF{eval-arith-seq} \LEFTPHRASE ~ \VARREF{AExp} ~ \LEX{,{}} ~ \VARREF{AExps} ~ \RIGHTPHRASE  = \\&\quad
      \SEMREF{eval-arith} \LEFTPHRASE ~ \VAR{AExp} ~ \RIGHTPHRASE , \\&\quad 
      \SEMREF{eval-arith-seq} \LEFTPHRASE ~ \VAR{AExp} ~ \RIGHTPHRASE 
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

[IMPPP-2.cbs]: /CBS-beta/Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs/IMPPP/IMPPP-2/IMPPP-2.cbs
  "CBS SOURCE FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20IMPPP/IMPPP-2/IMPPP-2.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
