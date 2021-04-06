Composite values
================

Conceptually, composite values are constructed from sequences of argument values.
The types of composite values include parametrised algebraic data types, with a generic representation.
Various algebraic datatypes are defined, and new ones can be introduced.
Composite values include also built-in parametrised types of sets, maps, multi-sets, and graphs.

A composite value can always be decomposed into a sequence of values from which it can be reconstructed.
For algebraic datatypes such as lists, the decomposition is unique.
For a built-in type such as sets, the funcon provided to compute values is not a constructor. and it may compute the same composite value from different sequences of arguments.
All composite [ground values] can be tested for equality.

The CBS library includes types of composite values corresponding to the following concepts:

Algebraic datatypes
-------------------

Algebraic [datatypes] correspond to unions of subtypes,
The values of each subtype generally consist of a fixed constructor identifier together with different sequences of argument values.
The constructors can be declared separately from the types of their values, supporting GADTs.

[Tuples]
: grouped sequences of values

[Lists]
: grouped sequences of values with the usual operations (strings are lists of characters)

[Vectors]
: grouped sequences of values

[Trees]
: finitely branching, with values at branch points

[References]
: values that represent other values (pointers are [references] or [pointer-null])

[Records]
: unordered indexed aggregate values

[Variants]
: values tagged by identifiers

[Classes]
: collections of features, allowing multiple superclasses, with abstractions to create objects

[Objects]
: classified collections of features

[Bit-vectors]
: including bits and bytes

Other types
-----------

The following types of composite values are all built-in.
The funcons used to compute such values are not regarded as constructors, as they are not injective.

[Sets]
: unordered, unindexed collections of values

[Maps]
: unordered, indexed collections of values

[Multisets]
: unordered, unindexed collections of values with multiplicities (bags)

[Graphs]
: directed, possibly cyclic, graphs

[values]:       ../Value-Types

[datatypes]:    Datatypes
[tuples]:       Tuples
[lists]:        Lists
[vectors]:      Vectors
[trees]:        Trees
[references]:   References
[pointer-null]: References
[records]:      Records
[variants]:     Variants
[classes]:      Classes
[objects]:      Objects
[bit-vectors]:  Bits
[sets]:         Sets
[maps]:         Maps
[multisets]:    Multisets
[graphs]:       Graphs

[value-types]:  ../Value-Types
[sequences]:    Sequences

[computations]: ../../Computations

[ground values]: ../Values#ground-values
