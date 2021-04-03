---
title: Notation
nav_order: 2
---

# CBS-beta Notation
{: .no_toc }

## Contents
{: .no_toc .text-delta }

- TOC
{:toc}


## Languages

__See the [CBS of IMP] for illustration of the following points.__

- Each file of the definition of a language `L` starts with the line
  *`Language "L"`*. Splitting a language definition across multiple files
  (within the same project) does not affect its well-formedness.

- Language definitions can be split into numbered sections. A section number is
  written `#n`, where `n` can be a series of numbers or (single) letters,
  separated by dots. Section numbers are hyperlinks in a table of contents,
  which is written `[...]`, and in multi-line comments `/*...*/`.

- Multi-line comments are written `/*...*/`, and may include funcon terms
  (delimited by back-ticks `` ` ``). End-of-line comments are written `//...`.

> __Multi-line comments are displayed as running text in generated web pages,
> without the enclosing `/*...*/`.__

### Syntax

*`Syntax`* introduces one or more grammar productions for the
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
    `*` for iteration, `+` for non-empty iteration, and grouping parentheses
    `(...)`.
  - Layout (including comments) is implicitly allowed everywhere in *`Syntax`*,
    but it can be excluded between two symbols by inserting an underscore `_`,
    e.g., [`num ::= '-'?_decimal`].

*`Lexis`* introduces one or more grammar productions for the
lexical (regular or context-free) syntax of the language, together with
meta-variables ranging over the specified *strings* of characters.

  - The range of characters from `'c1'` to `'c2'` is specified by `'c1'-'c2'`.
    For example, [`decimal`] is defined as `('0'-'9')+`.
  - Layout (including comments) is implicitly *excluded* everywhere in *`Lexis`*.
  - *`Lexis`* productions are otherwise specified as for *`Syntax`*.

Parsers generated from grammars for abstract syntax are usually ambiguous.
Associativity, relative priority, and lexical disambiguation are currently
specified separately, using notation from SDF, embedded in multi-line comments
`/*...*/`.

### Semantics

*`Semantics`* introduces a declaration of a translation function
  from ASTs (with strings as leaves) to funcon terms.

  - A translation function takes a single AST (or string) as argument,
    enclosed in double brackets `[[...]]`.
  - The sort of the argument is specified by `_:...`.
  - The type of the resulting funcon term is specified after `:`. It is usually
    a computation type `=>t` for some value type `t`; it can also be a
    computation sequence type of the form `(=>t)*`.

*`Rule`* introduces an equation defining the translation function
  on trees matching a specified pattern.

  - The pattern in a rule usually corresponds to a single alternative of the
    argument sort.
  - Meta-variables of the same sort in a rule are distinguished by subscripted
    digits, optionally followed by primes.
  - The notation `\"...\"` produces a funcon string value from a lexical symbol
    `...`. (In contrast, `"..."` is always a literal string, not containing
    references to meta-variables.)
  - Desugaring rules for ASTs are written `[[...]] : s = [[...]]`, where
    the patterns on both sides match the nonterminal symbol `s`. Note
    that desugaring rules do *not* refer to particular translation functions.

All funcons (etc.) defined in [Funcons-beta] can be used in all language
definitions. Funcons defined in a language definition file must have fresh
names, and cannot be reused in other language definitions \(except by
copy-paste).

------------------

## Funcons

*Funcon names* start with lowercase letters, and may include letters, digits,
and dashes `-`.

*Variables* in funcon terms start with uppercase letters, and may be suffixed by
digits and/or primes. Variables that stand for sequences of indefinite length
are suffixed by `*`, `+`, or `?`. Variables whose values are not required may
be replaced by underscores `_`.

A funcon term formed from a funcon `f` and argument sequence `s` is written in
prefix form: `f s`. When `f` has no arguments, it is written without
parentheses: `f`; when it has 2 or more arguments `t1`, ..., `tn`, they are
written in ordinary parentheses: `f(t1,...,tn)`. Parentheses are optional when
there is a single argument term, so both `f t` and `f(t)` are allowed.

- **N.B. Parentheses are also optional around composite argument terms:
  `f g t` is *always* grouped as `f(g(t))`!**

Funcons are *not* higher-order, so implicit grouping of `f g t` as `(f g)(t)`
would here be *completely useless*, as it would *never* give a well-formed term.
Grouping in funcon terms treats funcon names as prefix operations, such as the
'`-`' in '`-sin(x)`'. (Readers accustomed to higher-order programming in Haskell
may find it helpful to imagine `f g t` written as `f$g t`.)

Some funcons can take argument sequences of varying lengths; funcons may also
compute sequences of values. An example of a funcon that does both is
`left-to-right`, which is used to ensure that arguments are evaluated in the
specified order (the default is to allow interleaving). Composition with
`left-to-right` provides sequential variants of all multi-argument funcons, e.g.:

- `integer-add left-to-right(t1,t2)` (which abbreviates
  `integer-add(left-to-right(t1,t2))`)

The following special forms of funcon terms are allowed:

- Natural numbers in decimal notation
- Characters `'c'` (with the usual `\`-escapes)
- Strings `"c1...cn"` (with the usual `\`-escapes)
- Lists `[t1,...,tn]`, empty list `[ ]`
- Sets `{t1,...,tn}`, empty set `{ }`
- Maps `{k1|->t1,...,kn|->tn}`, empty map `map( )`
- Type union `t1|...|tn`
- Type intersection `t1&...&tn`
- Type complement `~t`
- Sequence types `t*`, `t+`, `t?`, `t^n`

The funcon definitions in [Funcons-beta] are language-independent.

CBS specifications do not refer to the hierarchy of folders and files
  used for [Funcons-beta].

Files in [Funcons-beta] are generally divided into *unnumbered* subsections.
The number of `#` characters in a subsection heading indicates its level,
with the top level sections [Computations] and [Values] having a single `#`.

### Type definitions

In CBS, types are values. They can be given as arguments to funcons, and
computed by funcons.

*`Type`* introduces a declaration of a fresh funcon name for a type, and lists
any arguments. The type of values it computes is `types`.

  - A type definition `Type t... ~> t1` combines a type declaration with a
    rewrite of the type to `t1`.
  - A type definition `Type t... <: t1` combines a type declaration with an
    assertion that `t...` is a subtype of `t1`.

*`Datatype`* introduces a definition of an *algebraic datatype*, written
  `t ::= f1(...) | ... | fn(...)`, which also declares the constructor funcons
  `fi(...):t` for its values.

  - A datatype definition `Datatype t(...)` written without constructors allows
    separate declaration of constructors with different instantiations of the
    parameterised type `t(...)`, corresponding to a GADT.

*`Meta-variables`* introduces type constraints on variables used in rules.
  These constraints are usually of the form `v <: t` where `v` is a variable,
  requiring `v` to be a subtype of `t`.

### Funcon definitions

*`Funcon`* introduces a declaration of a fresh funcon name,  together with
its signature.

  - Funcon names start with lowercase letters, and may include letters, digits,
    and dashes `-`.
  - The signature of a funcon taking no arguments and computing values of type
    `t` is written `:=>t`. For example, the signature of [`fail`] is written
    `:=>empty-type`.
  - The signature of a funcon taking one or more arguments and computing values
    of type `t` is written `(v1:ct1,...,vn:ctn):=>t`, where each `vi` is a
    variable, and each `cti` is either a type of values `ti` or a computation
    type `=>ti`. (Computation types `=>ti` resemble the types of call-by-name
    parameters in Scala.) For example, the signature of [`if-true-else`] is
    `(_:booleans, _:=>T, _:=>T) : =>T`, where `T` is a type variable.
  - Arguments specified by `vi:ti` are implicitly pre-evaluated (possibly
    interleaved) whereas evaluation of arguments specified by `vi:=>ti` is
    determined by explicit rules.
  - One of the argument types in a signature may be an indefinite sequence
    type, formed using a suffixed `*`, `+`, or `?`, allowing use of the funcon
    with varying numbers of arguments. (A sequence argument is usually at the
    end, but could be anywhere, since the other arguments in an application
    determine where to match it.)
  - The lack of a defined result of a partial funcon is represented by the
    empty sequence `( )`. The result type in the signature of a partial funcon
    is of the form `t?` for some value type `t`.
  - The signature of a *value constructor* is written `(v1:ct1,...,vn:ctn):t`,
    using a value result type `t` instead of a computation result type `=>t`.

*`Alias`* introduces an equation `n1 = n2` that declares a fresh name `n1`
  and defines it to be equivalent to another name `n2`. `n1` is usually an
  abbreviation for a longer `n2`; its declaration as an alias prevents it from
  being defined elsewhere to have a different interpretation.

*`Built-in`* introduces a declaration of a fresh funcon name and its
  signature, but does not provide a definition for it. Built-ins can be regarded
  as parameters of a collection of funcon definitions. They are generally
  reserved for types of values such as integers, sets, and maps, which are not
  amenable to specification using operational rules.

*`Auxiliary`* introduces a name that is not intended for direct use in
language definitions.

*`Rule`* introduces a formula or inference rule defining the
operational behaviour of a funcon.

  - `t1 ~> t2` is a *rewrite* from `t1` to `t2`.
  - `t1 ---> t2` is simple *transition* from `t1` to `t2`.
  - `e(v) |- t1 ---> t2` specifies dependence on a *contextual entity* named `e`.
  - `<t1,s(v1)> ---> <t2,s(v2)>` specifies inspection of a *mutable entity* named
   `s` and its replacement of its value `v1` by `v2`.
  - `t1 --i?(v*)-> t2` specifies a sequence of values `v*` for an *input entity*
    named `i`.
  - `t1 --o!(v*)-> t2` specifies a sequence of values `v*` for an *output entity*
    named `o`.
  - `t1 --c(v?)-> t2` specifies an optional value`v?` for a *control entity*
    named `c`.
  - An annotated variable `v:t` is restricted to *value* terms; un-annotated
    variables range over *computation* terms (including value terms), except that
    type variables declared by *`Meta-variables`* are restricted to type terms.
  - A single defining rewrite rule for a funcon may be combined with its
    declaration.
  - Arguments of funcons in rules may be *patterns* formed from variables and
    *value constructors* (which are usually introduced by *`Datatype`*
    definitions).

*`Assert`* introduces a formula that expresses the intention
  that it should hold (either as a consequence of specified definitions, or
  as a requirement for built-ins).

### Entities

*`Entity`* introduces a declaration of a fresh auxiliary entity name.

  - Entities are implicitly propagated in transition rules when not mentioned.
  - Rewrites are independent of entities.
  - The declaration of an entity specifies how the entity is written when used,
    which determines how it is propagated when omitted in transition formulae.
  - `e(v:t) |- _ ---> _` declares a *contextual entity* `e` of type `t`, e.g.,
    `environment(_:environments) |- _ ---> _`. When a contextual entity is
    omitted in a rule, it is implicitly the same in the conclusion and any
    premises.
  - `<_,s(v1:t)> ---> <_,s(v2:t)>` declares a *mutable entity* `s` of type `t`,
    e.g., `< _ , store(_:stores) > ---> < _ , store(_:stores) >`. When a mutable
    entity is omitted in an *axiom*, it is implicitly propagated unchanged.
    When it is omitted in a rule with a single premise, its value before the
    transition in the premise is the same as before the transition in the
    conclusion, and similarly for its value after the transitions. Changes to
    mutable entities are threaded through sequences of transitions.
  - `_ --i?(v*:t*)-> _` declares an *input entity* `i` of type `t*`, e.g.,
    `_ -- standard-in?(_:values*) -> _`. When an input entity is omitted in an
    *axiom*, it is implicitly required to be the empty sequence. When it is
    omitted in a rule with a single premise, the sequence of values in the
    conclusion is implicitly the same as in the premise. The value sequences
    of an input entity are concatenated in sequences of transitions.
  - `_ --o?(v*:t*)-> _` declares an *output entity* `o` of type `t*`, e.g.,
    `_ -- standard-out!(_:values*) -> _`. When an output entity is omitted in
    a rule, the implicit requirements are analogous to those for input entities.
  - `_ --c(v?:t?)-> _` declares a *control entity* `c` of type `t?`, e.g.,
    `_ --abrupted(_:values?)-> _`. When a control entity is omitted in a rule,
    the implicit requirements are analogous to those for input entities,
    except that a transition with a non-empty control entity value cannot be
    followed by a further transition (before being handled).

[Browsing Guide]: Browsing

[Publications]: Publications

[Changes]: Changes

[Downloads]: Downloads

[Funcons-beta]: Funcons-beta

[Unstable-Funcons-beta]: Unstable-Funcons-beta

[Funcons-Index]: /CBS-beta/Funcons-beta/Funcons-Index/

[Unstable-Funcons-Index]: /CBS-beta/Unstable-Funcons-beta/Unstable-Funcons-Index

[Funcon Reuse]: Languages-beta/Reuse

[Languages-beta]: Languages-beta

[Unstable-Languages-beta]: Unstable-Languages-beta

[CBS-beta]: /CBS-beta/

[PLanCompS Project]: http://plancomps.org

[CBS-beta issues...]: https://github.com/plancomps/plancomps.github.io/issues

[Suggest an improvement...]: mailto:plancomps@gmail.com

[CBS of IMP]: /CBS-beta/Languages-beta/IMP/IMP-cbs/IMP/IMP-Start/

[Values]: /CBS-beta/docs/Funcons-beta/Values

[Computations]: /CBS-beta/docs/Funcons-beta/Computations

[`num ::= '-'?_decimal`]: /CBS-beta/Languages-beta/IMP/IMP-cbs/IMP/IMP-1/#SyntaxName_num

[`decimal`]: /CBS-beta/Languages-beta/IMP/IMP-cbs/IMP/IMP-1/#SyntaxName_decimal

[`fail`]: /CBS-beta/Funcons-beta/Computations/Abnormal/Failing/#Name_fail

[`if-true-else`]: /CBS-beta/Funcons-beta/Computations/Normal/Flowing/#Name_if-true-else
