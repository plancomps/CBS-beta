Primitive values
================

Conceptually, primitive values are atomic, and not formed from other values:
each primitive value corresponds to a constant constructor.
For large (or infinite) types of primitive values, however, it is infeasible to declare a separate constant for each value.
So in practice, funcons used to construct primitive values usually take other values as arguments.
For example, a funcon for constructing a character value takes the integer corresponding to its point in a Unicode plane as argument;
and a funcon for constructing an integer value takes its representation in decimal notation as a string argument.

The CBS library includes types of primitive values corresponding to the following concepts:

[Booleans]
: the usual Boolean truth-values

[Integers]
: unbounded integer arithmetic, together with subtypes of bounded integers

[Floats]
: IEEE floating point arithmetic

[Characters]
: Unicode, its various subtypes, and its encodings as byte sequences

[null-type]
: a singleton type

[values]:       ../Value-Types

[booleans]:     Booleans
[integers]:     Integers
[floats]:       Floats
[characters]:   Characters
[null-type]:    Null
[pointer-null]: ../Composite/References

[value-types]:  ../Value-Types
[sequences]:    ../Composite/Sequences

[computations]: ../../Computations
