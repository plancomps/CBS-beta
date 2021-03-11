---
layout: default
title: "SIMPLE-2-Expressions"
math: katex
parent: SIMPLE
ancestor: Languages-beta

---

[Languages-beta] : [SIMPLE-2-Expressions.cbs]

$$\KEY{Language} \STRING{SIMPLE}$$

# $$\SECT{2}$$ Expressions
           


$$\relax\begin{aligned}\relax
  \KEY{Syntax} ~ 
    \VARDECL{Exp} : \SYNDECL{exp}
      ~ ::= ~ &
      \LEX{(} ~ \SYNREF{exp} ~ \LEX{)} \\
      ~ \mid ~ &  \SYNHYPER{../.}{SIMPLE-1-Lexical}{value} \\
      ~ \mid ~ &  \SYNREF{lexp} \\
      ~ \mid ~ &  \SYNREF{lexp} ~ \LEX{={}} ~ \SYNREF{exp} \\
      ~ \mid ~ &  \LEX{+{}+{}} ~ \SYNREF{lexp} \\
      ~ \mid ~ &  \LEX{-{}} ~ \SYNREF{exp} \\
      ~ \mid ~ &  \SYNREF{exp} ~ \LEX{(} ~ \SYNREF{exps}\QUERY ~ \LEX{)} \\
      ~ \mid ~ &  \LEX{sizeOf} ~ \LEX{(} ~ \SYNREF{exp} ~ \LEX{)} \\
      ~ \mid ~ &  \LEX{read} ~ \LEX{(} ~ \LEX{)} \\
      ~ \mid ~ &  \SYNREF{exp} ~ \LEX{+{}} ~ \SYNREF{exp} \\
      ~ \mid ~ &  \SYNREF{exp} ~ \LEX{-{}} ~ \SYNREF{exp} \\
      ~ \mid ~ &  \SYNREF{exp} ~ \LEX{*{}} ~ \SYNREF{exp} \\
      ~ \mid ~ &  \SYNREF{exp} ~ \LEX{/{}} ~ \SYNREF{exp} \\
      ~ \mid ~ &  \SYNREF{exp} ~ \LEX{\PERCENT } ~ \SYNREF{exp} \\
      ~ \mid ~ &  \SYNREF{exp} ~ \LEX{<{}} ~ \SYNREF{exp} \\
      ~ \mid ~ &  \SYNREF{exp} ~ \LEX{<{}={}} ~ \SYNREF{exp} \\
      ~ \mid ~ &  \SYNREF{exp} ~ \LEX{>{}} ~ \SYNREF{exp} \\
      ~ \mid ~ &  \SYNREF{exp} ~ \LEX{>{}={}} ~ \SYNREF{exp} \\
      ~ \mid ~ &  \SYNREF{exp} ~ \LEX{={}={}} ~ \SYNREF{exp} \\
      ~ \mid ~ &  \SYNREF{exp} ~ \LEX{!{}={}} ~ \SYNREF{exp} \\
      ~ \mid ~ &  \LEX{!{}} ~ \SYNREF{exp} \\
      ~ \mid ~ &  \SYNREF{exp} ~ \LEX{\AMPERSAND \AMPERSAND } ~ \SYNREF{exp} \\
      ~ \mid ~ &  \SYNREF{exp} ~ \LEX{||} ~ \SYNREF{exp}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \LEFTPHRASE ~ \LEX{(} ~ \VARREF{Exp} ~ \LEX{)} ~ \RIGHTPHRASE : \SYNREF{exp} = \\
    & \LEFTPHRASE ~ \VAR{Exp} ~ \RIGHTPHRASE
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{rval} \LEFTPHRASE ~ \_ : \SYNREF{exp} ~ \RIGHTPHRASE  :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values} 
\\
  \KEY{Rule} ~ 
    & \SEMREF{rval} \LEFTPHRASE ~ \VARHYPER{../.}{SIMPLE-1-Lexical}{V} ~ \RIGHTPHRASE  = \\&\quad
      \SEMHYPER{../.}{SIMPLE-1-Lexical}{val} \LEFTPHRASE ~ \VAR{V} ~ \RIGHTPHRASE 
\\
  \KEY{Rule} ~ 
    & \SEMREF{rval} \LEFTPHRASE ~ \VARREF{LExp} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned}
        (\SEMREF{lval} \LEFTPHRASE ~ \VAR{LExp} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{rval} \LEFTPHRASE ~ \VARREF{LExp} ~ \LEX{={}} ~ \VARREF{Exp} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{give}
        (\SEMREF{rval} \LEFTPHRASE ~ \VAR{Exp} ~ \RIGHTPHRASE , \\&\quad \quad 
         \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
           (\NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
              (\SEMREF{lval} \LEFTPHRASE ~ \VAR{LExp} ~ \RIGHTPHRASE , \\&\quad \quad \quad \quad 
               \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}), \\&\quad \quad \quad 
            \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}))
\\
  \KEY{Rule} ~ 
    & \SEMREF{rval} \LEFTPHRASE ~ \LEX{+{}+{}} ~ \VARREF{LExp} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{give}
        (\SEMREF{lval} \LEFTPHRASE ~ \VAR{LExp} ~ \RIGHTPHRASE , \\&\quad \quad 
         \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{sequential}
           (\NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assign}
              (\NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}, \\&\quad \quad \quad \quad 
               \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-add}
                 (\NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned}
                    (\NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given}), \\&\quad \quad \quad \quad \quad 
                  1)), \\&\quad \quad \quad 
            \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{assigned}
              (\NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Giving}{given})))
\\
  \KEY{Rule} ~ 
    & \SEMREF{rval} \LEFTPHRASE ~ \LEX{-{}} ~ \VARREF{Exp} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-negate}
        (\SEMREF{rval} \LEFTPHRASE ~ \VAR{Exp} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{rval} \LEFTPHRASE ~ \VARREF{Exp} ~ \LEX{(} ~ \VARREF{Exps}\QUERY ~ \LEX{)} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Functions}{apply}
        (\SEMREF{rval} \LEFTPHRASE ~ \VAR{Exp} ~ \RIGHTPHRASE , \\&\quad \quad 
         \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuple}
           (\SEMREF{rvals} \LEFTPHRASE ~ \VAR{Exps}\QUERY ~ \RIGHTPHRASE ))
\\
  \KEY{Rule} ~ 
    & \SEMREF{rval} \LEFTPHRASE ~ \LEX{sizeOf} ~ \LEX{(} ~ \VARREF{Exp} ~ \LEX{)} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sequences}{length}
        (\NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Vectors}{vector-elements}
           (\SEMREF{rval} \LEFTPHRASE ~ \VAR{Exp} ~ \RIGHTPHRASE ))
\\
  \KEY{Rule} ~ 
    & \SEMREF{rval} \LEFTPHRASE ~ \LEX{read} ~ \LEX{(} ~ \LEX{)} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Interacting}{read}
\\
  \KEY{Rule} ~ 
    & \SEMREF{rval} \LEFTPHRASE ~ \VARREF{Exp}\SUB{1} ~ \LEX{+{}} ~ \VARREF{Exp}\SUB{2} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-add}
        (\SEMREF{rval} \LEFTPHRASE ~ \VAR{Exp}\SUB{1} ~ \RIGHTPHRASE , \\&\quad \quad 
         \SEMREF{rval} \LEFTPHRASE ~ \VAR{Exp}\SUB{2} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{rval} \LEFTPHRASE ~ \VARREF{Exp}\SUB{1} ~ \LEX{-{}} ~ \VARREF{Exp}\SUB{2} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-subtract}
        (\SEMREF{rval} \LEFTPHRASE ~ \VAR{Exp}\SUB{1} ~ \RIGHTPHRASE , \\&\quad \quad 
         \SEMREF{rval} \LEFTPHRASE ~ \VAR{Exp}\SUB{2} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{rval} \LEFTPHRASE ~ \VARREF{Exp}\SUB{1} ~ \LEX{*{}} ~ \VARREF{Exp}\SUB{2} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-multiply}
        (\SEMREF{rval} \LEFTPHRASE ~ \VAR{Exp}\SUB{1} ~ \RIGHTPHRASE , \\&\quad \quad 
         \SEMREF{rval} \LEFTPHRASE ~ \VAR{Exp}\SUB{2} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{rval} \LEFTPHRASE ~ \VARREF{Exp}\SUB{1} ~ \LEX{/{}} ~ \VARREF{Exp}\SUB{2} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{checked} ~
        \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-divide}
          (\SEMREF{rval} \LEFTPHRASE ~ \VAR{Exp}\SUB{1} ~ \RIGHTPHRASE , \\&\quad \quad \quad 
           \SEMREF{rval} \LEFTPHRASE ~ \VAR{Exp}\SUB{2} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{rval} \LEFTPHRASE ~ \VARREF{Exp}\SUB{1} ~ \LEX{\PERCENT } ~ \VARREF{Exp}\SUB{2} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{checked} ~
        \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-modulo}
          (\SEMREF{rval} \LEFTPHRASE ~ \VAR{Exp}\SUB{1} ~ \RIGHTPHRASE , \\&\quad \quad \quad 
           \SEMREF{rval} \LEFTPHRASE ~ \VAR{Exp}\SUB{2} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{rval} \LEFTPHRASE ~ \VARREF{Exp}\SUB{1} ~ \LEX{<{}} ~ \VARREF{Exp}\SUB{2} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{is-less}
        (\SEMREF{rval} \LEFTPHRASE ~ \VAR{Exp}\SUB{1} ~ \RIGHTPHRASE , \\&\quad \quad 
         \SEMREF{rval} \LEFTPHRASE ~ \VAR{Exp}\SUB{2} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{rval} \LEFTPHRASE ~ \VARREF{Exp}\SUB{1} ~ \LEX{<{}={}} ~ \VARREF{Exp}\SUB{2} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{is-less-or-equal}
        (\SEMREF{rval} \LEFTPHRASE ~ \VAR{Exp}\SUB{1} ~ \RIGHTPHRASE , \\&\quad \quad 
         \SEMREF{rval} \LEFTPHRASE ~ \VAR{Exp}\SUB{2} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{rval} \LEFTPHRASE ~ \VARREF{Exp}\SUB{1} ~ \LEX{>{}} ~ \VARREF{Exp}\SUB{2} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{is-greater}
        (\SEMREF{rval} \LEFTPHRASE ~ \VAR{Exp}\SUB{1} ~ \RIGHTPHRASE , \\&\quad \quad 
         \SEMREF{rval} \LEFTPHRASE ~ \VAR{Exp}\SUB{2} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{rval} \LEFTPHRASE ~ \VARREF{Exp}\SUB{1} ~ \LEX{>{}={}} ~ \VARREF{Exp}\SUB{2} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{is-greater-or-equal}
        (\SEMREF{rval} \LEFTPHRASE ~ \VAR{Exp}\SUB{1} ~ \RIGHTPHRASE , \\&\quad \quad 
         \SEMREF{rval} \LEFTPHRASE ~ \VAR{Exp}\SUB{2} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{rval} \LEFTPHRASE ~ \VARREF{Exp}\SUB{1} ~ \LEX{={}={}} ~ \VARREF{Exp}\SUB{2} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{is-equal}
        (\SEMREF{rval} \LEFTPHRASE ~ \VAR{Exp}\SUB{1} ~ \RIGHTPHRASE , \\&\quad \quad 
         \SEMREF{rval} \LEFTPHRASE ~ \VAR{Exp}\SUB{2} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{rval} \LEFTPHRASE ~ \VARREF{Exp}\SUB{1} ~ \LEX{!{}={}} ~ \VARREF{Exp}\SUB{2} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{not}
        (\NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{is-equal}
           (\SEMREF{rval} \LEFTPHRASE ~ \VAR{Exp}\SUB{1} ~ \RIGHTPHRASE , \\&\quad \quad \quad 
            \SEMREF{rval} \LEFTPHRASE ~ \VAR{Exp}\SUB{2} ~ \RIGHTPHRASE ))
\\
  \KEY{Rule} ~ 
    & \SEMREF{rval} \LEFTPHRASE ~ \LEX{!{}} ~ \VARREF{Exp} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{not}
        (\SEMREF{rval} \LEFTPHRASE ~ \VAR{Exp} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{rval} \LEFTPHRASE ~ \VARREF{Exp}\SUB{1} ~ \LEX{\AMPERSAND \AMPERSAND } ~ \VARREF{Exp}\SUB{2} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-else}
        (\SEMREF{rval} \LEFTPHRASE ~ \VAR{Exp}\SUB{1} ~ \RIGHTPHRASE , \\&\quad \quad 
         \SEMREF{rval} \LEFTPHRASE ~ \VAR{Exp}\SUB{2} ~ \RIGHTPHRASE , \\&\quad \quad 
         \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{false})
\\
  \KEY{Rule} ~ 
    & \SEMREF{rval} \LEFTPHRASE ~ \VARREF{Exp}\SUB{1} ~ \LEX{||} ~ \VARREF{Exp}\SUB{2} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Flowing}{if-else}
        (\SEMREF{rval} \LEFTPHRASE ~ \VAR{Exp}\SUB{1} ~ \RIGHTPHRASE , \\&\quad \quad 
         \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{true}, \\&\quad \quad 
         \SEMREF{rval} \LEFTPHRASE ~ \VAR{Exp}\SUB{2} ~ \RIGHTPHRASE )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Syntax} ~ 
    \VARDECL{Exps} : \SYN{exps}
      ~ ::= ~ & \SYNREF{exp} ~ \LEFTGROUP \LEX{,{}} ~ \SYNREF{exps} \RIGHTGROUP\QUERY
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{rvals} \LEFTPHRASE ~ \_ : \SYNREF{exps}\QUERY ~ \RIGHTPHRASE  : ( \TO \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values})\STAR 
\\
  \KEY{Rule} ~ 
    & \SEMREF{rvals} \LEFTPHRASE ~  ~ \RIGHTPHRASE  = \\&\quad
      ( ~ )
\\
  \KEY{Rule} ~ 
    & \SEMREF{rvals} \LEFTPHRASE ~ \VARREF{Exp} ~ \RIGHTPHRASE  = \\&\quad
      \SEMREF{rval} \LEFTPHRASE ~ \VAR{Exp} ~ \RIGHTPHRASE 
\\
  \KEY{Rule} ~ 
    & \SEMREF{rvals} \LEFTPHRASE ~ \VARREF{Exp} ~ \LEX{,{}} ~ \VARREF{Exps} ~ \RIGHTPHRASE  = \\&\quad
      \SEMREF{rval} \LEFTPHRASE ~ \VAR{Exp} ~ \RIGHTPHRASE , \\&\quad 
      \SEMREF{rvals} \LEFTPHRASE ~ \VAR{Exps} ~ \RIGHTPHRASE 
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Syntax} ~ 
    \VARDECL{LExp} : \SYNDECL{lexp}
      ~ ::= ~ &
      \SYNHYPER{../.}{SIMPLE-1-Lexical}{id} \\
      ~ \mid ~ &  \SYNREF{lexp} ~ \LEX{[{}} ~ \SYNREF{exps} ~ \LEX{]{}}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \LEFTPHRASE ~ \VARREF{LExp} ~ \LEX{[{}} ~ \VARREF{Exp} ~ \LEX{,{}} ~ \VARREF{Exps} ~ \LEX{]{}} ~ \RIGHTPHRASE : \SYNREF{lexp} = \\
    & \LEFTPHRASE ~ \VAR{LExp} ~ \LEX{[{}} ~ \VAR{Exp} ~ \LEX{]{}} ~ \LEX{[{}} ~ \VAR{Exps} ~ \LEX{]{}} ~ \RIGHTPHRASE
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Semantics} ~ 
  & \SEMDECL{lval} \LEFTPHRASE ~ \_ : \SYNREF{lexp} ~ \RIGHTPHRASE  :  \TO \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{variables} 
\\
  \KEY{Rule} ~ 
    & \SEMREF{lval} \LEFTPHRASE ~ \VARHYPER{../.}{SIMPLE-1-Lexical}{Id} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{bound}
        (\SEMHYPER{../.}{SIMPLE-1-Lexical}{id} \LEFTPHRASE ~ \VAR{Id} ~ \RIGHTPHRASE )
\\
  \KEY{Rule} ~ 
    & \SEMREF{lval} \LEFTPHRASE ~ \VARREF{LExp} ~ \LEX{[{}} ~ \VARREF{Exp} ~ \LEX{]{}} ~ \RIGHTPHRASE  = \\&\quad
      \NAMEHYPER{../../../../../Funcons-beta/Computations/Abnormal}{Failing}{checked} ~
        \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sequences}{index}
          (\NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integer-add}
             (1, \\&\quad \quad \quad \quad 
              \SEMREF{rval} \LEFTPHRASE ~ \VAR{Exp} ~ \RIGHTPHRASE ), \\&\quad \quad \quad 
           \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Vectors}{vector-elements}
             (\SEMREF{rval} \LEFTPHRASE ~ \VAR{LExp} ~ \RIGHTPHRASE ))
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

[SIMPLE-2-Expressions.cbs]: /CBS-beta/Languages-beta/SIMPLE/SIMPLE-cbs/SIMPLE/SIMPLE-2-Expressions/SIMPLE-2-Expressions.cbs
  "CBS SOURCE FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20SIMPLE/SIMPLE-2-Expressions/SIMPLE-2-Expressions.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
