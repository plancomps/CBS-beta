# Funcons-beta

> This page introduces the beta-release of an initial collection of so-called 'funcons' (fundamental programming constructs).
> Other pages introduce and motivate the use of funcons in the [CBS framework], and explain the purpose of the [beta-release].

Funcons are *reusable components* of programming language specifications: the semantics of a language is specified by translating its syntax to funcons, reusing (by reference) the definitions of the required funcons.

> Specifying a language by translation to funcons  – and updating the specification as the language evolves – should be **much less effort** than defining its semantics in previous frameworks!
> See [Languages-beta] for some illustrative examples of language specifications in CBS, and [LangDev-2019] for a demonstration of the ease of updating a language specification as the language evolves.

## Funcon definitions

Funcons are defined using a variant of structural operational semantics (SOS, developed by Gordon Plotkin in the 1980s).
*Computations* are sequences of labelled transitions between states, which generally consist of syntax, computed values, and auxiliary entities such as stores and environments.
Computed values are final states, having no transitions.

However, SOS specifications lack modularity: when a new auxiliary entity is introduced for specifying an extended language, *all* the previous rules may need to be updated.
And modularity is crucial for CBS, since adding new funcons to the collection must not require any changes at all to the definitions of previous funcons.

In the modular variant of SOS used in CBS for defining funcons, auxiliary entities are *implicitly propagated* when omitted in particular rules:
adding a new auxiliary entity never affects existing rules.
Such modular SOS rules also look a lot simpler than the corresponding conventional SOS rules, since each rule references only the entities that it actually requires.

Funcons have *signatures*, which specify the numbers and types of their arguments and results, and whether particular arguments are to be evaluated before using the specified rules or not (corresponding closely to *strictness annotations* in the K-framework).

## Operational semantics

The operational semantics of a funcon term is the set of all its computations, where each computation consists of a (possibly-empty, possibly infinite) sequence of transitions according to the specified rules.
The computations generally depend on the computations of any subterms; they may also depend on the initial values of auxiliary entities.

### Computations

The [computations] page introduces funcons for specifying flow of control, and funcons whose execution generally involves auxiliary entities (environments, stores, etc.).
These funcons are defined using a modular variant of structural operational semantics: entities that are not essential for a particular funcon are implicitly propagated between premises and conclusions of the rules used to define it, so the rules do not need updating when new entities are introduced.

### Entities

The [entities] page lists the entities that are used in the definitions of funcons for computations. The execution of a term is unaffected by entities that are not involved in the funcons used in it.

There are *no* funcons for *reifying* auxiliary entities as values, nor for *reflecting* values as entities! 
This is because the way that particular entities flow during funcon execution is inherent and characteristic; reification and reflection would allow the flow to be circumvented.

For instance, stores that represent assignments to imperative variables are implicitly threaded through the individual steps of funcon executions, and cannot be (directly) copied or reset.
There are funcons for allocating a variable, initialising its value, inspecting its value, and assigning a new value -- but not for making a copy of the current store, nor for replacing the entire store.

### Values

*Value constructors* are particularly simple funcons: they have no rules at all, and the values they compute are formed by replacing their arguments by computed values.
Funcon terms formed entirely from value constructors are *ground values*; non-ground values include *abstractions*, formed from value constructors that have unevaluated arguments.
The only computation starting from a value is trivial: the empty sequence of transitions.

The [values] page introduces funcons whose executions compute values from argument values *without* use of auxiliary entities.
These funcons are defined using an embedding of conditional term rewriting in modular structural operational semantics, with *all* entities implicitly propagated between premises and conclusions of rules.
Value *constructors* are not affected by rewriting, and can be matched in argument patterns in rules for funcon computation.

## Funcons-Index

The [Funcons-Index] page lists the names of all the funcons defined in the CBS library (including aliases).
The funcons are grouped together according to the types and entities involved in their definitions.

Sections of the [Funcons-Index] page correspond to the folders and files that contain the funcon definitions.
However, *no* familiarity with the file system is required when browsing CBS specifications, since references to funcons are always hyperlinked to the corresponding definitions.

CBS does not have explicit packages: each language specification implicitly imports the entire library, and the list of the funcons that it uses is generated from the specification.
This not only eliminates tedious lists of imported packages, but also reduces the effort of making changes.


[CBS framework]:  /CBS-beta/
[Beta-release]:   /CBS-beta/#beta-release
[LangDev-2019]:   ../Unstable-Languages-beta/LangDev-2019
[Browsing guide]: /CBS-beta/docs/Browsing

[Languages-beta]: ../Languages-beta

[Funcons-Index]:  Funcons-Index
[Values]:         Values
[Computations]:   Computations
[Entities]:       Entities
