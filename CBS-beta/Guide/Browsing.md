CBS-beta Browsing Guide
=======================

Navigation
----------

**All references to names of funcons (etc.) in CBS files are hyperlinks leading
to their declarations.**

Use of these hyperlinks avoids the need to become familiar with the hierarchy of
folders and files in the funcons library, and to drill down through it to find
declarations.

The global [Funcons-Index] page has hyperlinks to all funcons, with those 
defined in the same file grouped together. Similarly for local indexes
of funcons used in the CBS of particular languages. Hovering on a hyperlink
displays the declared arity of symbol \(where `values` stands for a *single*
argument value).

### Menu links

  The large button at the top right of each CBS page is a fixed drop-down menu.
    
  For pages in the `Funcons-beta` folder, it has the following links:

  - [Funcons-beta]\: the funcons index
  - [Languages-beta]\: the languages overview 
  - [CBS-beta]\: the CBS-beta overview

  For pages in the `Languages-beta/L` folder, it has also the following links:

  - `L-Start`: the root of the CBS of language `L` (which includes links to
    all the other sections for that language)
  - `L-Funcons-Index`: the index of funcons used for language `L`

### Header links

  - [CBS-beta]\: the overview page
  - [Funcons-beta] or [Languages-beta]\: the overview page
  - In the middle: the CBS source file from which the web page was generated

### Footer links
  
  - [PLanCompS Project, 2018]\: the main PLanCompS project website
  - [Suggest an improvement...]\: a template for an email to plancomps@gmail.com

Folding
-------

When a CBS web page is opened, all the rules and comments are folded into
single lines, as indicated by right-pointing 'disclosure' symbols 
(e.g.: &#9658;). Any subsections (starting with a heading line `#...`) are 
initially unfolded, as indicated by downward-pointing symbols (e.g.: &#9660;).
This provides an overview of all the specified declarations, which are never
folded.

Individual rules, comments and subsections can be folded/unfolded by clicking
on the line containing the disclosure symbol. Note that printing the page
omits the disclosure symbols, but does *not* show lines hidden by the current
folding.

The top right corner of each CBS web page has buttons for unfolding (&#9660;)
or folding (&#9658;) all rules, comments, or subsections on the current page. 
(These buttons require Javascript.)

--------------------

Language definitions
--------------------

See the [CBS of IMP] for illustration of the following points.

- Each file of the definition of a language `L` starts with the line
  *`Language "L"`*. Splitting a language definition across multiple files
  (within the same project) does not affect its well-formedness.

- When a language definition is split into numbered sections, links to them
  may be listed between brackets `[...]` to provide a table of contents.

- The keyword *`Syntax`* introduces one or more grammar productions for the 
  abstract (context-free) syntax of the language, together with meta-variables
  ranging over the associated sorts of ASTs.
  
  - Nonterminals start with lowercase letters, and may include letters, digits,
    and dashes `-`.
  - The start symbol of the grammar is named `start`.
  - Meta-variables start with uppercase letters, e.g., *`Pgm`*.
  - The left and right sides of productions are separated by `::=`.
  - Terminal symbols are enclosed in single quotes `'...'`.
  - Alternatives are separated by `|`. All alternatives for the same
    nonterminal have to be specified together.
  - Regular expressions are written using postfix `?` for optional parts,
    `*` for iteration, and `+` for non-empty iteration. Grouping parentheses
    `(...)` are used when the subexpression is not a single symbol.
  - Layout (including comments) is implicitly allowed everywhere. It can
    be excluded by inserting an underscore `_` between symbols.

- The keyword *`Lexis`* introduces one or more grammar productions for the 
  lexical (regular or context-free) syntax of the language, together with
  meta-variables ranging over the specified strings of characters.
  
  - The range of characters from `'C1'` to `'C2'` is specified by `'C1'-'C2'`.
  - Layout (including comments) in lexical grammars is specified explicitly.
  - *`Lexis`* productions are otherwise as for *`Syntax`*.

- Parsers generated from grammars for abstract syntax are usually ambiguous.
  Associativity, relative priority, and lexical disambiguation are currently
  specified in CBS using notation from SDF, embedded in multi-line comments
  `/*...*/`.

- The keyword *`Semantics`* introduces a declaration of a translation function
  from ASTs (with strings as leaves) to funcon terms.
  
  - A translation functions takes a single AST (or string) as argument,
    enclosed in double brackets `[[...]]`.
  - The sort of the argument is specified by `_:...`.
  - The type of the resulting funcon term is specified after `:`. It is usually
    a computation type `=>T` for some value type `T`; it can also be a
    computation sequence type such as `(=>T)*`.

- The keyword *`Rule`* introduces an equation defining the translation function
  on trees matching a specified pattern.
  
  - The pattern in a rule usually corresponds to a single alternative of the
    argument sort.
  - Meta-variables of the same sort in a rule are distinguished by subscripted
    digits, optionally followed by primes.
  - The notation `\"...\"` produces a funcon string value from a lexical symbol
    `...`.
  - Desugaring rules for ASTs are written `[[...]] : SORT = [[...]]`, where
    the patterns on both sides match the nonterminal symbol `SORT`. Note
    that desugaring rules do *not* refer to particular translation functions.

- Multi-line comments are written `/*...*/`, and may include funcon terms
  (delimited by back-ticks `` ` ``). End-of-line comments are written `//...`.
 
- All funcons (etc.) defined in [Funcons-beta] can be used in all language
  definitions. Funcons defined in a language definition file must have fresh
  names, and cannot be reused in other language definitions \(except by 
  copy-paste).

------------------

Funcon definitions
------------------

- The funcon definitions in [Funcons-beta] are language-independent, and cannot
  refer to funcons defined in language definition files.

- The division of [Funcons-beta] into files is not significant.

- Files in [Funcons-beta] are generally divided into *unnumbered* subsections.
  The number of `#` characters in a subsection heading indicates its level,
  with the top level sections [Computations] and [Values] having a single `#`.

- The keyword *`Funcon`* introduces a declaration of a fresh funcon name,
  together with its signature. 
  
  - Funcon names start with lowercase letters, and may include letters, digits,
    and dashes `-`.
  
  - The signature of a funcon taking no arguments is written `: =>T`, where
    `T` is a type of values.

  - The signature of a funcon taking one or more arguments is written 
    `(V1:CT1, ..., Vn:CTn) : =>T`, where each `Vi` is a meta-variable,
    each `CTi` is either a type of values `Ti` or a computation type `=>Ti`, 
    and `T` is a type of values.

  - One of the argument types in a signature can be an indefinite sequence
    type, formed using postfix `?`, `*`, or `+`, allowing use of the funcon
    with varying numbers of arguments.

(To be continued.)


[Funcons-beta]: ../Funcons-beta/Funcons-Index/index.html

[Funcons-Index]: ../Funcons-beta/Funcons-Index/index.html

[Languages-beta]: ../Languages-beta/index.md

[CBS-beta]: ../index.md

[PLanCompS Project, 2018]: http://plancomps.org

[Suggest an improvement...]: mailto:plancomps@gmail.com

[CBS of IMP]: ../Languages-beta/IMP/IMP-cbs/IMP/IMP-Start/index.html

[Values]: ../Funcons-beta/Values/index.md

[Computations]: ../Funcons-beta/Computations/index.md

