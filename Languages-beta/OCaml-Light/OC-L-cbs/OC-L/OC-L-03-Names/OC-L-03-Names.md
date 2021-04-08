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

$$\KEY{Language} \quad \STRING{OCaml Light}$$

# $$\SECT{3}$$ Names
           


## Naming objects
               


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{VN} : \SYN{value-name}
      \ ::= \ & \
      \SYNHYPER{../.}{OC-L-01-Lexical-Conventions}{lowercase-ident} \\
      \ \mid \ & \ \LEX{{(}} \ \SYNREF{operator-name} \ \LEX{{)}}
    \\
    \VARDECL{ON} : \SYN{operator-name}
      \ ::= \ & \
      \SYNREF{prefix-op} \mid \SYNREF{infix-op}
    \\
    \VARDECL{PO} : \SYN{prefix-op}
      \ ::= \ & \
      \SYNHYPER{../.}{OC-L-01-Lexical-Conventions}{prefix-symbol}
\end{align*}$$


    // infix-op ::= infix-symbol  
    //            | '*' | '+' | '-' | '-.' | '=' | '<' | '>' | '||' | '&' | '&&'  
    //            | '!=' | 'or' | ':=' | 'mod'  
    //            | 'land' | 'lor' | 'lxor' | 'lsl' | 'lsr' | 'asr'  


### Infix operator precedence
               


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{IO} : \SYN{infix-op}
      \ ::= \ & \
      \SYNREF{infix-op-1} \mid \SYNREF{infix-op-2} \mid \SYNREF{infix-op-3} \mid \SYNREF{infix-op-4} \\
      \ \mid \ & \ \SYNREF{infix-op-5} \mid \SYNREF{infix-op-6} \mid \SYNREF{infix-op-7} \mid \SYNREF{infix-op-8}
\\
  \KEY{Lexis} \quad
    \VARDECL{IO-1} : \SYN{infix-op-1}
      \ ::= \ & \
      \LEX{{*}{*}} \ \SYNHYPER{../.}{OC-L-01-Lexical-Conventions}{operator-char}\STAR \mid \LEX{lsl} \mid \LEX{lsr} \mid \LEX{asr}
    \\
    \VARDECL{IO-2} : \SYN{infix-op-2}
      \ ::= \ & \
      \LEX{{*}} \\
      \ \mid \ & \ \LEX{{*}} \ \SYNHYPER{../.}{OC-L-01-Lexical-Conventions}{operator-char-not-asterisk} \ \SYNHYPER{../.}{OC-L-01-Lexical-Conventions}{operator-char}\STAR \\
      \ \mid \ & \ \LEFTGROUP \LEX{{/}} \mid \LEX{{\PERCENT}} \RIGHTGROUP \ \SYNHYPER{../.}{OC-L-01-Lexical-Conventions}{operator-char}\STAR \\
      \ \mid \ & \ \LEX{mod} \mid \LEX{land} \mid \LEX{lor} \mid \LEX{lxor}
    \\
    \VARDECL{IO-3} : \SYN{infix-op-3}
      \ ::= \ & \
      \LEFTGROUP \LEX{{+}} \mid \LEX{{-}} \RIGHTGROUP \ \SYNHYPER{../.}{OC-L-01-Lexical-Conventions}{operator-char}\STAR
    \\
    \VARDECL{IO-4} : \SYN{infix-op-4}
      \ ::= \ & \
      \LEFTGROUP \LEX{{@}} \mid \LEX{{\CARET}} \RIGHTGROUP \ \SYNHYPER{../.}{OC-L-01-Lexical-Conventions}{operator-char}\STAR
    \\
    \VARDECL{IO-5} : \SYN{infix-op-5}
      \ ::= \ & \
      \LEFTGROUP \LEX{{=}} \mid \LEX{{<}} \mid \LEX{{>}} \mid \LEX{{\DOLLAR}} \RIGHTGROUP \ \SYNHYPER{../.}{OC-L-01-Lexical-Conventions}{operator-char}\STAR \\
      \ \mid \ & \ \LEX{{|}} \ \LEFTGROUP \SYNHYPER{../.}{OC-L-01-Lexical-Conventions}{operator-char-not-bar} \ \SYNHYPER{../.}{OC-L-01-Lexical-Conventions}{operator-char}\STAR \RIGHTGROUP\QUERY \\
      \ \mid \ & \ \LEX{{|}{|}} \ \SYNHYPER{../.}{OC-L-01-Lexical-Conventions}{operator-char}\PLUS \\
      \ \mid \ & \ \LEX{{\AMPERSAND}} \ \SYNHYPER{../.}{OC-L-01-Lexical-Conventions}{operator-char-not-ampersand} \ \SYNHYPER{../.}{OC-L-01-Lexical-Conventions}{operator-char}\STAR \\
      \ \mid \ & \ \LEX{{\AMPERSAND}{\AMPERSAND}} \ \SYNHYPER{../.}{OC-L-01-Lexical-Conventions}{operator-char}\PLUS \\
      \ \mid \ & \ \LEX{{!}{=}}
    \\
    \VARDECL{IO-6} : \SYN{infix-op-6}
      \ ::= \ & \
      \LEX{{\AMPERSAND}} \mid \LEX{{\AMPERSAND}{\AMPERSAND}}
    \\
    \VARDECL{IO-7} : \SYN{infix-op-7}
      \ ::= \ & \
      \LEX{or} \mid \LEX{{|}{|}}
    \\
    \VARDECL{IO-8} : \SYN{infix-op-8}
      \ ::= \ & \
      \LEX{{:}{=}}
\\
  \KEY{Lexis} \quad
    \VARDECL{CN} : \SYN{constr-name}
      \ ::= \ & \
      \SYNHYPER{../.}{OC-L-01-Lexical-Conventions}{capitalized-ident}
    \\
    \VARDECL{TCN} : \SYN{typeconstr-name}
      \ ::= \ & \
      \SYNHYPER{../.}{OC-L-01-Lexical-Conventions}{lowercase-ident}
    \\
    \VARDECL{FN} : \SYN{field-name}
      \ ::= \ & \
      \SYNHYPER{../.}{OC-L-01-Lexical-Conventions}{lowercase-ident}
    \\
    \VARDECL{MN} : \SYN{module-name}
      \ ::= \ & \
      \SYNHYPER{../.}{OC-L-01-Lexical-Conventions}{capitalized-ident}
\end{align*}$$

## Referring to named objects
               


$$\begin{align*}
  \KEY{Syntax} \quad
    \VARDECL{VP} : \SYN{value-path}
      \ ::= \ & \
      \SYNREF{value-name}
    \\
    \VARDECL{CSTR} : \SYN{constr}
      \ ::= \ & \
      \SYNREF{constr-name}
    \\
    \VARDECL{TCSTR} : \SYN{typeconstr}
      \ ::= \ & \
      \SYNREF{typeconstr-name}
    \\
    \VARDECL{F} : \SYN{field}
      \ ::= \ & \
      \SYNREF{field-name}
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{value-name} \LEFTPHRASE \ \_ : \SYNREF{value-path} \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{ids} 
\\
  \KEY{Rule} \quad
    & \SEMREF{value-name} \LEFTPHRASE \
                            \VARHYPER{../.}{OC-L-01-Lexical-Conventions}{LI} \
                          \RIGHTPHRASE  = 
      \textsf{\textquotedblleft}\VAR{LI}\textsf{\textquotedblright}
\\
  \KEY{Rule} \quad
    & \SEMREF{value-name} \LEFTPHRASE \
                            \LEX{{(}} \ \VARHYPER{../.}{OC-L-01-Lexical-Conventions}{PS} \ \LEX{{)}} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Strings}{string-append}
        (  \STRING{{(}}, 
               \textsf{\textquotedblleft}\VAR{PS}\textsf{\textquotedblright}, 
               \STRING{{)}} )
\\
  \KEY{Rule} \quad
    & \SEMREF{value-name} \LEFTPHRASE \
                            \LEX{{(}} \ \VARREF{IO-1} \ \LEX{{)}} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Strings}{string-append}
        (  \STRING{{(}}, 
               \textsf{\textquotedblleft}\VAR{IO-1}\textsf{\textquotedblright}, 
               \STRING{{)}} )
\\
  \KEY{Rule} \quad
    & \SEMREF{value-name} \LEFTPHRASE \
                            \LEX{{(}} \ \VARREF{IO-2} \ \LEX{{)}} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Strings}{string-append}
        (  \STRING{{(}}, 
               \textsf{\textquotedblleft}\VAR{IO-2}\textsf{\textquotedblright}, 
               \STRING{{)}} )
\\
  \KEY{Rule} \quad
    & \SEMREF{value-name} \LEFTPHRASE \
                            \LEX{{(}} \ \VARREF{IO-3} \ \LEX{{)}} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Strings}{string-append}
        (  \STRING{{(}}, 
               \textsf{\textquotedblleft}\VAR{IO-3}\textsf{\textquotedblright}, 
               \STRING{{)}} )
\\
  \KEY{Rule} \quad
    & \SEMREF{value-name} \LEFTPHRASE \
                            \LEX{{(}} \ \VARREF{IO-4} \ \LEX{{)}} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Strings}{string-append}
        (  \STRING{{(}}, 
               \textsf{\textquotedblleft}\VAR{IO-4}\textsf{\textquotedblright}, 
               \STRING{{)}} )
\\
  \KEY{Rule} \quad
    & \SEMREF{value-name} \LEFTPHRASE \
                            \LEX{{(}} \ \VARREF{IO-5} \ \LEX{{)}} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Strings}{string-append}
        (  \STRING{{(}}, 
               \textsf{\textquotedblleft}\VAR{IO-5}\textsf{\textquotedblright}, 
               \STRING{{)}} )
\\
  \KEY{Rule} \quad
    & \SEMREF{value-name} \LEFTPHRASE \
                            \LEX{{(}} \ \VARREF{IO-6} \ \LEX{{)}} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Strings}{string-append}
        (  \STRING{{(}}, 
               \textsf{\textquotedblleft}\VAR{IO-6}\textsf{\textquotedblright}, 
               \STRING{{)}} )
\\
  \KEY{Rule} \quad
    & \SEMREF{value-name} \LEFTPHRASE \
                            \LEX{{(}} \ \VARREF{IO-7} \ \LEX{{)}} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Strings}{string-append}
        (  \STRING{{(}}, 
               \textsf{\textquotedblleft}\VAR{IO-7}\textsf{\textquotedblright}, 
               \STRING{{)}} )
\\
  \KEY{Rule} \quad
    & \SEMREF{value-name} \LEFTPHRASE \
                            \LEX{{(}} \ \VARREF{IO-8} \ \LEX{{)}} \
                          \RIGHTPHRASE  = 
      \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Strings}{string-append}
        (  \STRING{{(}}, 
               \textsf{\textquotedblleft}\VAR{IO-8}\textsf{\textquotedblright}, 
               \STRING{{)}} )
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{constr-name} \LEFTPHRASE \ \_ : \SYNREF{constr} \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{ids} 
\\
  \KEY{Rule} \quad
    & \SEMREF{constr-name} \LEFTPHRASE \
                            \VARREF{CN} \
                          \RIGHTPHRASE  = 
      \textsf{\textquotedblleft}\VAR{CN}\textsf{\textquotedblright}
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{typeconstr-name} \LEFTPHRASE \ \_ : \SYNREF{typeconstr} \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{ids} 
\\
  \KEY{Rule} \quad
    & \SEMREF{typeconstr-name} \LEFTPHRASE \
                            \VARREF{TCN} \
                          \RIGHTPHRASE  = 
      \textsf{\textquotedblleft}\VAR{TCN}\textsf{\textquotedblright}
\end{align*}$$

$$\begin{align*}
  \KEY{Semantics} \quad
  & \SEMDECL{field-name} \LEFTPHRASE \ \_ : \SYNREF{field} \ \RIGHTPHRASE  
    :  \TO \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Binding}{ids} 
\\
  \KEY{Rule} \quad
    & \SEMREF{field-name} \LEFTPHRASE \
                            \VARREF{FN} \
                          \RIGHTPHRASE  = 
      \textsf{\textquotedblleft}\VAR{FN}\textsf{\textquotedblright}
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
[OC-L-03-Names.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-03-Names/OC-L-03-Names.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-03-Names
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-03-Names
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-03-Names/OC-L-03-Names.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}
