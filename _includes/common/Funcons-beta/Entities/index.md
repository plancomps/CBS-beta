Entities
========

The entities used in modular structural operational semantics are classified according to how they flow during program execution:

Contextual
: A *contextual* entity remains fixed for successive steps in the computation of a term, but can be different for the computations of sub-terms.

Mutable
: Changes to a *mutable* entity are threaded sequentially through the computation of a term and its sub-terms.

Input
: An *input* entity is a sequence of values, and the sequences input by successive steps are independent.

Output
: An *output* entity is a sequence of values, and the sequences output by successive steps are independent.

Control
: A *control* entity is a value that can optionally be signalled by a step. The corresponding step of an enclosing term may inspect the value, and signal the same value, signal a different value, or not signal.

There are *no funcons* for reifying entities as values, nor for reflecting values as entities! 
This is because the way that particular entities flow during funcon execution is inherent and characteristic; reification and reflection would allow the flow to be circumvented.

The following entities are used in the definitions of funcons for computations. The execution of a term is unaffected by entities that are not involved in the funcons used in it.

- The  [`given-value`] is a contextual entity that supports references to a previously computed value. 
  Funcon computation arguments that refer to an unknown given value correspond to 'lambdas'.
  
- The [`environment`] is a contextual entity that represents the currently visible bindings.
  Some funcons affect the environment during the execution of computation arguments, but the entity implicitly reverts back to the previous value afterwards ('push' and 'pop' steps are not required).
  
- The [`used-atom-set`] is a mutable entity supporting the generation of fresh atomic values.

- The [`store`] is a mutable entity representing the currently allocated variables and their current values.
  It supports uninitialised variables, and recycling of variables.
  Single-assignment variables are used to represent cyclic bindings.

- The [`standard-in`] is an input entity representing a sequences of interactive input values.
  Inputting a value removes it from the sequence.

- The [`standard-out`] is an output entity representing sequences of interactive output values.
  Outputting a value adds it to the sequence.

- The [`abrupted`] entity is a control entity which signals abrupt termination of a computation.

[`given-value`]:   ../Computations/Normal/Giving/index.html#Name_given-value
[`environment`]:   ../Computations/Normal/Binding/index.html#Name_environment
[`used-atom-set`]: ../Computations/Normal/Generating/index.html#Name_used-atom-set
[`store`]:         ../Computations/Normal/Storing/index.html#Name_store
[`standard-in`]:   ../Computations/Normal/Interacting/index.html#Name_standard-in
[`standard-out`]:  ../Computations/Normal/Interacting/index.html#Name_standard-out
[`abrupted`]:      ../Computations/Abnormal/Abrupting/index.html#Name_abrupted
