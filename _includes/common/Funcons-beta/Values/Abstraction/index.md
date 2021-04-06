Abstraction
===========

Abstraction values are formed by a constructor with an unevaluated computation argument.
Enacting an abstraction value executes its computation argument
-- potentially in a different context from that where the abstraction was constructed.

Constructed abstraction values thus naturally have *dynamic scopes* for bindings.
To obtain *static scopes*, it is necessary to explicitly compute a *closure* value.
The closure value computed from an abstraction value is an abstraction whose computation argument provides the current bindings to the original unevaluated computation argument.
The funcon that computes closures cannot be a constructor, since the resulting value depends on the current bindings.

Although abstractions are essentially procedural, they can also be used to represent potentially infinite data.
However, they are not ground values, and cannot be tested for equality.

[Abstractions]
: values corresponding to procedural abstractions

[Thunks]
: values formed from abstractions not referencing any given value

[Functions]
: values formed from abstractions referencing a single given value

[Patterns]
: values formed from abstractions matching a single given value

[values]:       Value-Types

[abstractions]: Generic
[thunks]:       Thunks
[functions]:    Functions
[patterns]:     Patterns

[computations]: ../../Computations
