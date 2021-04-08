{::comment}{% raw %}{:/}


----

$$\KEY{Language} \quad \STRING{OCaml Light}$$

# $$\SECT{A}$$ Disambiguation
           


\$$\KEY{Lexis SDF}$$

>    // 1 Lexical conventions\\
>      \\
>    // Comments\\
>    \\
>    lexical syntax\\
>    \\
>      LAYOUT = LEX-block-comment\\
>      LEX-block-comment = "(*" LEX-comment-part* "*)" \\
>      \\
>      LEX-comment-part = ~[\(\)\*]\\
>      LEX-comment-part = LEX-asterisk\\
>      LEX-comment-part = LEX-left-paren\\
>      LEX-comment-part = LEX-right-paren\\
>      LEX-comment-part = LEX-block-comment\\
>      \\
>      LEX-asterisk    = [\*]\\
>      LEX-left-paren  = [\(] \\
>      LEX-right-paren = [\)]\\
>     \\
>    lexical restrictions\\
>    \\
>      LEX-asterisk   -/- [\)]\\
>      LEX-left-paren -/- [\*]\\
>    \\
>    context-free restrictions\\
>    \\
>      LAYOUT? -/- [\(].[\*]\\
>    \\
>    // Identifiers\\
>    \\
>    lexical syntax\\
>           \\
>      $$\SHADE{\SYNHYPER{../.}{OC-L-01-Lexical-Conventions}{ident}}$$ =             $$\SHADE{\SYNHYPER{../.}{OC-L-01-Lexical-Conventions}{keyword}}$$    {reject}\\
>      $$\SHADE{\SYNHYPER{../.}{OC-L-01-Lexical-Conventions}{lowercase-ident}}$$ =   $$\SHADE{\SYNHYPER{../.}{OC-L-01-Lexical-Conventions}{keyword}}$$    {reject}\\
>      \\
>    lexical restrictions\\
>    \\
>      $$\SHADE{\SYNHYPER{../.}{OC-L-01-Lexical-Conventions}{ident}}$$ \\
>      $$\SHADE{\SYNHYPER{../.}{OC-L-01-Lexical-Conventions}{lowercase-ident}}$$ \\
>      $$\SHADE{\SYNHYPER{../.}{OC-L-01-Lexical-Conventions}{capitalized-ident}}$$ -/- [A-Za-z0-9\_\']

\$$\KEY{Syntax SDF}$$

>    // Integer literals\\
>    \\
>    context-free restrictions\\
>    \\
>      $$\SHADE{\SYNHYPER{../.}{OC-L-01-Lexical-Conventions}{integer-literal}}$$     -/- [0-9eE]

\$$\KEY{Syntax SDF}$$

>    // Floating-point literals\\
>    \\
>    context-free restrictions\\
>    \\
>      $$\SHADE{\SYNHYPER{../.}{OC-L-01-Lexical-Conventions}{float-literal}}$$       -/- [0-9eE]\\
>    \\
>    // String literals\\
>    \\
>    syntax\\
>    \\
>      $$\SHADE{ \SYNHYPER{../.}{OC-L-01-Lexical-Conventions}{string-character-star}  \ ::= \  \  \SYNHYPER{../.}{OC-L-01-Lexical-Conventions}{string-character} \_ \SYNHYPER{../.}{OC-L-01-Lexical-Conventions}{string-character-star}}$$    {avoid}

\$$\KEY{Lexis SDF}$$

>    // Keywords\\
>    \\
>    lexical restrictions\\
>    \\
>          "and"          "as"         "assert"   "asr"       "begin"     "class"\\
>          "constraint"   "do"         "done"     "downto"    "else"      "end"\\
>          "exception"    "external"   "false"    "for"       "fun"       "function"\\
>          "functor"      "if"         "in"       "include"   "inherit"   "initializer"\\
>          "land"         "lazy"       "let"      "lor"       "lsl"       "lsr"\\
>          "lxor"         "match"      "method"   "mod"       "module"    "mutable" \\
>          "new"          "nonrec"     "object"   "of"        "open"      "or"     \\
>          "private"      "rec"        "sig"      "struct"    "then"      "to"\\
>          "true"         "try"        "type"     "val"       "virtual"   "when" \\
>          "while"        "with"\\
>      -/- [A-Za-z0-9\_] \\
>    \\
>    // Key symbols\\
>    \\
>    $$\SHADE{\SYNHYPER{../.}{OC-L-03-Names}{infix-op-1}}$$ $$\SHADE{\SYNHYPER{../.}{OC-L-03-Names}{infix-op-2}}$$ $$\SHADE{\SYNHYPER{../.}{OC-L-03-Names}{infix-op-3}}$$ $$\SHADE{\SYNHYPER{../.}{OC-L-03-Names}{infix-op-4}}$$ \\
>    $$\SHADE{\SYNHYPER{../.}{OC-L-03-Names}{infix-op-5}}$$ $$\SHADE{\SYNHYPER{../.}{OC-L-03-Names}{infix-op-6}}$$ $$\SHADE{\SYNHYPER{../.}{OC-L-03-Names}{infix-op-7}}$$ $$\SHADE{\SYNHYPER{../.}{OC-L-03-Names}{infix-op-8}}$$ \\
>           -/- [\!\$\%\\*\+\-\.\/\:\<\=\>\?\@\^\|\~]\\
>      "["  -/- [\|]\\
>      "|"  -/- [\]]\\
>      ":"  -/- [\:]\\
>      ";"  -/- [\;]\\
>    \\
>    lexical syntax\\
>    \\
>      $$\SHADE{\SYNHYPER{../.}{OC-L-03-Names}{infix-op-3}}$$ = "->" {reject}\\
>    \\
>      $$\SHADE{\SYNHYPER{../.}{OC-L-03-Names}{infix-op-5}}$$ = "<-" {reject}

\$$\KEY{Syntax SDF}$$

>    // 4 Type expressions\\
>    \\
>    context-free syntax\\
>    \\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-04-Type-Expressions}{typexpr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-04-Type-Expressions}{typexpr} \ \LEX{{-}{>}} \ \SYNHYPER{../.}{OC-L-04-Type-Expressions}{typexpr}}$$    {right}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-04-Type-Expressions}{typexpr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-04-Type-Expressions}{typexpr} \ \SYNHYPER{../.}{OC-L-04-Type-Expressions}{star-typexpr}\PLUS}$$   {non-assoc}\\
>    \\
>    context-free priorities\\
>    \\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-04-Type-Expressions}{typexpr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-04-Type-Expressions}{typexpr} \ \SYNHYPER{../.}{OC-L-03-Names}{typeconstr}}$$  \\
>    \>\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-08-Type-and-Exception-Definitions}{constr-args}  \ ::= \  \  \SYNHYPER{../.}{OC-L-04-Type-Expressions}{typexpr} \ \SYNHYPER{../.}{OC-L-04-Type-Expressions}{star-typexpr}\STAR}$$\\
>    \>\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-04-Type-Expressions}{typexpr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-04-Type-Expressions}{typexpr} \ \SYNHYPER{../.}{OC-L-04-Type-Expressions}{star-typexpr}\PLUS}$$\\
>    \>\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-04-Type-Expressions}{typexpr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-04-Type-Expressions}{typexpr} \ \LEX{{-}{>}} \ \SYNHYPER{../.}{OC-L-04-Type-Expressions}{typexpr}}$$\\
>    \\
>    context-free priorities\\
>    \\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-04-Type-Expressions}{star-typexpr}  \ ::= \  \  \LEX{{*}} \ \SYNHYPER{../.}{OC-L-04-Type-Expressions}{typexpr}}$$\\
>    \>\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-04-Type-Expressions}{typexpr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-04-Type-Expressions}{typexpr} \ \SYNHYPER{../.}{OC-L-04-Type-Expressions}{star-typexpr}\PLUS}$$\\
>    \\
>    \\
>    // 6 Patterns\\
>    \\
>    context-free syntax\\
>    \\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-06-Patterns}{pattern}  \ ::= \  \  \SYNHYPER{../.}{OC-L-06-Patterns}{pattern} \ \LEX{{|}} \ \SYNHYPER{../.}{OC-L-06-Patterns}{pattern}}$$    {left}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-06-Patterns}{pattern}  \ ::= \  \  \SYNHYPER{../.}{OC-L-06-Patterns}{pattern} \ \SYNHYPER{../.}{OC-L-06-Patterns}{comma-pattern}\PLUS}$$ {non-assoc}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-06-Patterns}{pattern}  \ ::= \  \  \SYNHYPER{../.}{OC-L-06-Patterns}{pattern} \ \LEX{{:}{:}} \ \SYNHYPER{../.}{OC-L-06-Patterns}{pattern}}$$   {right}\\
>    \\
>    context-free priorities\\
>    \\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-06-Patterns}{pattern}  \ ::= \  \  \SYNHYPER{../.}{OC-L-03-Names}{constr} \ \SYNHYPER{../.}{OC-L-06-Patterns}{pattern}}$$\\
>    \>\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-06-Patterns}{pattern}  \ ::= \  \  \SYNHYPER{../.}{OC-L-06-Patterns}{pattern} \ \LEX{{:}{:}} \ \SYNHYPER{../.}{OC-L-06-Patterns}{pattern}}$$\\
>    \>\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-06-Patterns}{pattern}  \ ::= \  \  \SYNHYPER{../.}{OC-L-06-Patterns}{pattern} \ \SYNHYPER{../.}{OC-L-06-Patterns}{comma-pattern}\PLUS}$$\\
>    \>\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-06-Patterns}{pattern}  \ ::= \  \  \SYNHYPER{../.}{OC-L-06-Patterns}{pattern} \ \LEX{{|}} \ \SYNHYPER{../.}{OC-L-06-Patterns}{pattern}}$$\\
>    \>\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-06-Patterns}{pattern}  \ ::= \  \  \SYNHYPER{../.}{OC-L-06-Patterns}{pattern} \ \LEX{as} \ \SYNHYPER{../.}{OC-L-03-Names}{value-name}}$$\\
>    \\
>    context-free priorities\\
>    {\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-06-Patterns}{comma-pattern}  \ ::= \  \  \LEX{{,}} \ \SYNHYPER{../.}{OC-L-06-Patterns}{pattern}}$$\\
>    $$\SHADE{\LEFTGROUP \SYNHYPER{../.}{OC-L-06-Patterns}{pattern} \ \SYNHYPER{../.}{OC-L-06-Patterns}{comma-pattern}\STAR \RIGHTGROUP}$$\\
>    } >\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-06-Patterns}{pattern}  \ ::= \  \  \SYNHYPER{../.}{OC-L-06-Patterns}{pattern} \ \SYNHYPER{../.}{OC-L-06-Patterns}{comma-pattern}\PLUS}$$\\
>    \\
>    \\
>    // 7 Expressions      \\
>    \\
>    context-free syntax\\
>      \\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \SYNHYPER{../.}{OC-L-07-Expressions}{argument}\PLUS}$$          {non-assoc,avoid}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \LEX{{-}} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$$                {avoid}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \SYNHYPER{../.}{OC-L-03-Names}{infix-op-1} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$$    {right}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \SYNHYPER{../.}{OC-L-03-Names}{infix-op-2} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$$    {left}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \SYNHYPER{../.}{OC-L-03-Names}{infix-op-3} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$$    {left,prefer}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \LEX{{:}{:}} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$$          {right}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \SYNHYPER{../.}{OC-L-03-Names}{infix-op-4} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$$    {right}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \SYNHYPER{../.}{OC-L-03-Names}{infix-op-5} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$$    {left}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \SYNHYPER{../.}{OC-L-03-Names}{infix-op-6} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$$    {right}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \SYNHYPER{../.}{OC-L-03-Names}{infix-op-7} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$$    {right}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \SYNHYPER{../.}{OC-L-07-Expressions}{comma-expr}\PLUS}$$        {non-assoc}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \SYNHYPER{../.}{OC-L-03-Names}{infix-op-8} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$$    {right}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \LEX{{.}} \ \SYNHYPER{../.}{OC-L-03-Names}{field} \ \LEX{{<}{-}} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$${right}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \LEX{{.}{(}} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \LEX{{)}} \ \LEX{{<}{-}} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$${right}\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \LEX{{;}} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$$           {right}\\
>    \\
>    context-free priorities\\
>    \\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{argument}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$$\\
>    \>\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-01-Lexical-Conventions}{prefix-symbol} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$$\\
>    \>\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \LEX{{.}} \ \SYNHYPER{../.}{OC-L-03-Names}{field}}$$\\
>    \> {\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \SYNHYPER{../.}{OC-L-07-Expressions}{argument}\PLUS}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \LEX{assert} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$$\\
>    } > {\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \LEX{{-}} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \LEX{{-}{.}} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$$\\
>    } > \\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \SYNHYPER{../.}{OC-L-03-Names}{infix-op-1} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$$\\
>    \> \\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \SYNHYPER{../.}{OC-L-03-Names}{infix-op-2} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$$\\
>    \> \\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \SYNHYPER{../.}{OC-L-03-Names}{infix-op-3} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$$\\
>    \> \\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \LEX{{:}{:}} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$$\\
>    \> \\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \SYNHYPER{../.}{OC-L-03-Names}{infix-op-4} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$$\\
>    \> \\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \SYNHYPER{../.}{OC-L-03-Names}{infix-op-5} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$$\\
>    \> \\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \SYNHYPER{../.}{OC-L-03-Names}{infix-op-6} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$$\\
>    \>\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \SYNHYPER{../.}{OC-L-03-Names}{infix-op-7} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$$\\
>    \> \\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \SYNHYPER{../.}{OC-L-07-Expressions}{comma-expr}\PLUS}$$\\
>    \> {\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \LEX{{.}} \ \SYNHYPER{../.}{OC-L-03-Names}{field} \ \LEX{{<}{-}} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \LEX{{.}{(}} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \LEX{{)}} \ \LEX{{<}{-}} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \SYNHYPER{../.}{OC-L-03-Names}{infix-op-8} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$$\\
>    } > \\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \LEX{{;}} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$$\\
>    \\
>    context-free priorities\\
>    \\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-01-Lexical-Conventions}{prefix-symbol} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$$\\
>    \>\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \LEX{{.}{(}} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \LEX{{)}}}$$\\
>    <0> >\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \SYNHYPER{../.}{OC-L-07-Expressions}{argument}\PLUS}$$\\
>    \\
>    context-free priorities\\
>    {\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{argument}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \LEX{{.}} \ \SYNHYPER{../.}{OC-L-03-Names}{field}}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \LEX{{.}{(}} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \LEX{{)}}}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \SYNHYPER{../.}{OC-L-07-Expressions}{argument}\PLUS}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \LEX{assert} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \SYNHYPER{../.}{OC-L-03-Names}{infix-op-1} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \SYNHYPER{../.}{OC-L-03-Names}{infix-op-2} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \SYNHYPER{../.}{OC-L-03-Names}{infix-op-3} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \LEX{{:}{:}} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \SYNHYPER{../.}{OC-L-03-Names}{infix-op-4} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \SYNHYPER{../.}{OC-L-03-Names}{infix-op-5} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \SYNHYPER{../.}{OC-L-03-Names}{infix-op-6} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \SYNHYPER{../.}{OC-L-03-Names}{infix-op-7} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \SYNHYPER{../.}{OC-L-07-Expressions}{comma-expr}\PLUS}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \LEX{{.}} \ \SYNHYPER{../.}{OC-L-03-Names}{field} \ \LEX{{<}{-}} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \LEX{{.}{(}} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \LEX{{)}} \ \LEX{{<}{-}} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \SYNHYPER{../.}{OC-L-03-Names}{infix-op-8} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \LEX{{;}} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$$\\
>    } <0>. > {\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \LEX{if} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \LEX{then} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \LEFTGROUP \LEX{else} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \RIGHTGROUP\QUERY}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \LEX{match} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \LEX{with} \ \SYNHYPER{../.}{OC-L-07-Expressions}{pattern-matching}}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \LEX{function} \ \SYNHYPER{../.}{OC-L-07-Expressions}{pattern-matching}}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \LEX{fun} \ \SYNHYPER{../.}{OC-L-06-Patterns}{pattern}\PLUS \ \LEX{{-}{>}} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \LEX{try} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \LEX{with} \ \SYNHYPER{../.}{OC-L-07-Expressions}{pattern-matching}}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{let-definition} \ \LEX{in} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$$\\
>    }\\
>    \\
>    context-free priorities\\
>    {\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{comma-expr}  \ ::= \  \  \LEX{{,}} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$$\\
>    $$\SHADE{\LEFTGROUP \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \SYNHYPER{../.}{OC-L-07-Expressions}{comma-expr}\STAR \RIGHTGROUP}$$\\
>    } > \\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \SYNHYPER{../.}{OC-L-07-Expressions}{comma-expr}\PLUS}$$\\
>    \\
>    context-free priorities\\
>    {\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \LEX{{[}} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \SYNHYPER{../.}{OC-L-07-Expressions}{semic-expr}\STAR \ \LEX{{]}}}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \LEX{{[}} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \SYNHYPER{../.}{OC-L-07-Expressions}{semic-expr}\STAR \ \LEX{{;}} \ \LEX{{]}}}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \LEX{{[}{|}} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \SYNHYPER{../.}{OC-L-07-Expressions}{semic-expr}\STAR \ \LEX{{|}{]}}}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \LEX{{[}{|}} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \SYNHYPER{../.}{OC-L-07-Expressions}{semic-expr}\STAR \ \LEX{{;}} \ \LEX{{|}{]}}}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{semic-expr}  \ ::= \  \  \LEX{{;}} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$$\\
>    $$\SHADE{\LEFTGROUP \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \SYNHYPER{../.}{OC-L-07-Expressions}{semic-expr}\STAR \RIGHTGROUP}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \LEX{{\LEFTBRACE}} \ \SYNHYPER{../.}{OC-L-03-Names}{field} \ \LEX{{=}} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \SYNHYPER{../.}{OC-L-07-Expressions}{semic-field-expr}\STAR \ \LEX{{\RIGHTBRACE}}}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \LEX{{\LEFTBRACE}} \ \SYNHYPER{../.}{OC-L-03-Names}{field} \ \LEX{{=}} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \SYNHYPER{../.}{OC-L-07-Expressions}{semic-field-expr}\STAR \ \LEX{{;}} \ \LEX{{\RIGHTBRACE}}}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \LEX{{\LEFTBRACE}} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \LEX{with} \ \SYNHYPER{../.}{OC-L-03-Names}{field} \ \LEX{{=}} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \SYNHYPER{../.}{OC-L-07-Expressions}{semic-field-expr}\STAR \ \LEX{{\RIGHTBRACE}}}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \LEX{{\LEFTBRACE}} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \LEX{with} \ \SYNHYPER{../.}{OC-L-03-Names}{field} \ \LEX{{=}} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \SYNHYPER{../.}{OC-L-07-Expressions}{semic-field-expr}\STAR \ \LEX{{;}} \ \LEX{{\RIGHTBRACE}}}$$\\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{semic-field-expr}  \ ::= \  \  \LEX{{;}} \ \SYNHYPER{../.}{OC-L-03-Names}{field} \ \LEX{{=}} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$$\\
>    } > \\
>    $$\SHADE{\quad\SYNHYPER{../.}{OC-L-07-Expressions}{expr}  \ ::= \  \  \SYNHYPER{../.}{OC-L-07-Expressions}{expr} \ \LEX{{;}} \ \SYNHYPER{../.}{OC-L-07-Expressions}{expr}}$$



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
[OC-L-A-Disambiguation.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-A-Disambiguation/OC-L-A-Disambiguation.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-A-Disambiguation
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-A-Disambiguation
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-A-Disambiguation/OC-L-A-Disambiguation.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}
