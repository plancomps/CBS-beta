Values
======

The CBS library provides funcons for expressing and computing various kinds of *values*.
The characteristic feature of values is that they are *immutable* (computations cannot cause them to change) and *inert* (they cannot change themselves).

Values can be bound to identifiers, assigned to variables, input, output, etc., and matched against patterns of constructors. In contrast, computations can only be executed.

Kinds of values
---------------

Values are classified in various ways (non-exclusively) as follows.

### Ground values

*Ground values* are formed inductively from constructors, and represent finite data. 
All ground values can be tested for equality.

### Abstraction values

[Abstraction] values are formed by a constructor with an unevaluated computation argument.
Enacting an abstraction value executes its computation argument
-- potentially in a different context from that where the abstraction was constructed.

Although abstractions are essentially procedural, they can also be used to represent potentially infinite data.
However, they are not ground values, and cannot be tested for equality.

### Types of values

[Value-types] are values used to classify (possibly infinite) sets of values. 
The universal type classifies all values (including itself!) and the vacuous type classifies no values. 
Type union, intersection, and complement correspond to the familiar set-theoretic operations on the classified sets of values. 

Type equality is non-extensional: equality of ground type values implies that they classify the same set of values, but different type values may classify the same set of values. 
Similarly for subtypes: type inclusion implies subset inclusion for the sets of classified values, but not vice versa.

### Composite values

[Composite] values are constructed from sequences of argument values.
The types of composite values include parametrised algebraic data types, with a generic representation.
Various algebraic datatypes are defined, and new ones can be introduced.
Composite values include also built-in parametrised types of sets, maps, multi-sets, and graphs.

A composite value can always be decomposed into a sequence of values from which it can be reconstructed.
For algebraic datatypes such as lists, the decomposition is unique.
For a built-in type such as sets, the funcon provided to compute values is not a constructor. and it may compute the same composite value from different sequences of arguments.
All composite ground values can be tested for equality.

### Primitive values

[Primitive] values are atomic, and not constructed from other values:.
The types of primitive values include the Boolean truth values, Unicode characters, unbounded integers (with bounded subtypes), IEEE-754 floating-point numbers, and a null value.

Further types of values, introduced in connection with particular kinds of [computations], are defined in terms of the above types.

### Built-in values

*Built-in* types of values are regarded as parameters of the universe of values. 
The signatures of their required operations and some of their required properties are specified in CBS.
Most of the primitive types are built-in (as it would not be feasible to define them in CBS).

Value computation
-----------------

Value funcons compute values from argument values *without* use of auxiliary entities.
In particular, their computations always terminate normally: 
abrupt termination and non-termination cannot arise.

These funcons are defined using an embedding of conditional term rewriting in modular structural operational semantics, with *all* entities implicitly propagated between premises and conclusions of rules.
Value *constructors* are not affected by rewriting, so they do not have any defining rules.

Value funcon computations may be non-deterministic.
For example, a funcon may select an arbitrary element from a composite set value.

Sequences of values
-------------------

Funcons can take [sequences] of values as arguments, and they may compute sequences of values as results.
The only sequences that are themselves values are trivial sequences of length one.

The absence of a computed value is represented by the empty sequence `( )`.
Funcons that may compute `( )` have result types of the form `T?`, and generally need to be preceded by `checked` when used as arguments of other funcons.
Value funcons that compute `( )` correspond to partial operations on values, 


[Value-types]:   Value-Types

[Primitive]:     Primitive

[Composite]:     Composite

[Abstraction]:   Abstraction

[sequences]:     Composite/Sequences

[computations]:  ../Computations
