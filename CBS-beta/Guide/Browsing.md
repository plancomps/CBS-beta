CBS-beta Browsing Guide ![PREVIEW](../preview.png)
=======================

Navigation
----------

**All references to names of funcons (etc.) in CBS specifications are 
hyperlinks leading to their declarations.**

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

- *`Syntax`* introduces one or more grammar productions for the 
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

- *`Lexis`* introduces one or more grammar productions for the 
  lexical (regular or context-free) syntax of the language, together with
  meta-variables ranging over the specified strings of characters.
  
  - The range of characters from `'C1'` to `'C2'` is specified by `'C1'-'C2'`.
  - Layout (including comments) in lexical grammars is specified explicitly.
  - *`Lexis`* productions are otherwise as for *`Syntax`*.

- Parsers generated from grammars for abstract syntax are usually ambiguous.
  Associativity, relative priority, and lexical disambiguation are currently
  specified in CBS using notation from SDF, embedded in multi-line comments
  `/*...*/`.

- *`Semantics`* introduces a declaration of a translation function
  from ASTs (with strings as leaves) to funcon terms.
  
  - A translation functions takes a single AST (or string) as argument,
    enclosed in double brackets `[[...]]`.
  - The sort of the argument is specified by `_:...`.
  - The type of the resulting funcon term is specified after `:`. It is usually
    a computation type `=>T` for some value type `T`; it can also be a
    computation sequence type such as `(=>T)*`.

- *`Rule`* introduces an equation defining the translation function
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

Funcon terms
------------

A funcon term formed from a funcon `f` and argument sequence `s` is written in 
prefix form: `f s`. When `f` has no arguments, it is written without 
parentheses: `f`; when it has 2 or more arguments `t1`, ..., `tn`, they are
written in ordinary parentheses: `f(t1,...,tn)`. Parentheses are optional when
there is a single argument term, so both `f t` and `f(t)` are allowed.

- **N.B. Parentheses are also optional around composite argument terms: 
  `f g t` is *always* grouped as `f(g(t))`!**

Funcons are not higher-order, so implicit grouping of `f g t` as `(f g)(t)`
would here be *completely useless*, as it would *never* give a well-formed term. 
Grouping in funcon terms treats funcon names as prefix operations, such as the
'`-`' in '`-sin(x)`'. Readers accustomed to higher-order programming in Haskell
may find it helpful to imagine `f g t` written as `f$g t`.

Some funcons can take argument sequences of varying lengths; funcons may also
compute sequences of values. A funcon that does both is `left-to-right`,
which is used to ensure that arguments are evaluated in the specified order
(the default order allows interleaving). Composition with `left-to-right`
provides sequential variants of all multi-argument funcons, e.g.:

- `integer-add left-to-right(t1,t2)` (which abbreviates 
  `integer-add(left-to-right(t1,t2))`) 

The following special forms of funcon terms are allowed:

- Natural numbers in decimal notation
- Characters `'c'` (with the usual `\`-escapes)
- Strings `"c1...cn"` (with the usual `\`-escapes)
- Lists `[t1,...,tn]`, empty list `[ ]`
- Sets `{t1,...,tn}`, empty set `{ }`
- Maps `{k1|->t1,...,kn|->tn}`, empty map `map( )`.


------------------

Funcon definitions
------------------

- The funcon definitions in [Funcons-beta] are language-independent.

- CBS specifications do not refer to the hierarchy of folders and files 
  used for [Funcons-beta].

- Files in [Funcons-beta] are generally divided into *unnumbered* subsections.
  The number of `#` characters in a subsection heading indicates its level,
  with the top level sections [Computations] and [Values] having a single `#`.

- *`Funcon`* introduces a declaration of a fresh funcon name,
  together with its signature. 
  
  - Funcon names start with lowercase letters, and may include letters, digits,
    and dashes `-`.
  - The signature of a funcon taking no arguments is written `:=>T`, where
    `T` is a type of values.
  - The signature of a funcon taking one or more arguments is written 
    `(V1:CT1,...,Vn:CTn):=>T`, where each `Vi` is a meta-variable,
    each `CTi` is either a type of values `Ti` or a computation type `=>Ti`, 
    and `T` is a type of values.
  - One of the argument types in a signature may be an indefinite sequence
    type, formed using postfix `?`, `*`, or `+`, allowing use of the funcon
    with varying numbers of arguments. (A sequence argument is usually at the
    end, but with the funcon `sequential` it is at the beginning.)

- *`Rule`* introduces a formula or inference rule defining the
  operational behaviour of a funcon.
  
  - `T1 ~> T2` is a rewrite from `T1` to `T2`.
  - `T1 ---> T2` is simple transition from `T1` to `T2`.
  - `env(Env) |- T1 ---> T2` specifies dependence on an environment `Env`.
  - `<T1,store(S1)> ---> <T2,store(S2)>` specifies inspection of a store `S1`
    and its replacement by `S2`.
  - `T1 --stream?(V1,...,Vn)-> T2` specifies input of values matching `V1`,
    ..., `Vn` from `stream`.
  - `T1 --stream!(V1,...,Vn)-> T2` specifies output of the values of `V1`,
    ..., `Vn` to `stream`.
  - `T1 --signal(V)-> T2` specifies a `signal` `V`. Omitting `V` specifies the
    absence of the signal.
  - An annotated meta-variable `V:T` is restricted to value terms.
  - A single defining rule for a funcon may be combined with its declaration.

- *`Entity`* introduces a declaration of a fresh entity name.
  
  - Entities are implicitly propagated in transition rules when not mentioned.
  - Rewrites are independent of entities.
  - The declaration of an entity specifies how the entity is written when used,
    which determines how it is propagated when omitted in transition formulae.
  - When a contextual entity such as `env(Env) |- _ ---> _` is omitted, it is
    implicitly the same in the conclusion and any premises.
  - When a mutable entity such as `<_,store(S1)> ---> <_,store(S2)>` is omitted
    in an *axiom*, `S1` and `S2` are implicitly required to be equal. 
    When it is omitted in a rule with a single premise, the pair of stores in
    the conclusion is the same as the pair in the premise. Mutable entities are
    threaded through sequences of transitions. (Rules with multiple transitions
    in premises are seldom needed in small-step semantics.)
  - When an input entity such as `_ --stream?(V*)-> _` is omitted in an axiom,
    `V*` is implicitly required to be empty. When it is omitted in a rule with
    a single premise, the `V*` in the conclusion is the same as in the premise.
    The value sequences of input entities are concatenated in sequences of
    transitions.
  - When an output entity `_ --stream!(V1,...,Vn)-> _` is omitted, the implicit
    requirements are analogous to those for input entities.
  - When an output entity `_ --signal(V?)-> _` is omitted, the implicit
    requirements are analogous to those for input entities.

- *`Type`* introduces a declaration of a fresh funcon name. The
  type of values it computes is `types`, which is a value that represents 
  a subtype of `values`. 
  
  - Type definitions `Type t... ~> T` combine type declarations with rewrites.

- *`Datatype`* introduces a declaration of an algebraic datatype,
  together with constructor funcons for its values.

- *`Alias`* introduces an equation `N1 = N2` that declares a fresh name `N1`
  and defines it to be equivalent to another name `N2`. `N1` is usually an
  abbreviation for a longer `N2`; its declaration as an alias prevents it from
  being defined elsewhere to have a different interpretation.

- *`Built-in`* introduces a declaration of a fresh name and its
  signature, but does not provide a definition for it.

- *`Assert`* introduces a formula that expresses the intention
  that it should hold (either as a consequence of specified definitions, or
  as a requirement for built-ins).
  
- *`Auxiliary`* introduces a name that is not intended for direct use in 
  language definitions. 

- *`Meta-variables`* introduces type constraints on variables used in rules.
  These constraints are usually of the form `V <: T` where `V` is a variable,
  requiring `V` to be a subtype of `T`.

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

