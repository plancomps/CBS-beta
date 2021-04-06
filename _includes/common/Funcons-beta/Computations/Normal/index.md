Normal computations
===================

Funcons for expressing *normal computation* generally terminate normally, computing (sequences of) values.
If an executed computation argument terminates abnormally, however, these funcons always propagate the abnormal termination.
The execution of a funcon for normal computation may also *fail*, which is a particular kind of abnormal termination used to represent dynamic errors (e.g., referencing an unbound identifier).

The CBS library includes funcons corresponding to the following concepts:

[Flowing]
: pure flow of control

[Giving]
: computing values, and referencing the latest computed value

[Binding]
: binding identifiers to values, and referencing them

[Generating]
: computing fresh values

[Storing]
: allocating variables, assigning values to them, and inspecting current values

[Linking]
: creating potentially cyclic bindings

[Interacting]
: interactive input and output.

[flowing]:     Flowing
[giving]:      Giving
[binding]:     Binding
[generating]:  Generating
[storing]:     Storing
[linking]:     Linking
[interacting]: Interacting
