Funcon Reuse in Languages-beta
==============================
{: .no_toc }

Currently, Funcons-beta includes 387 funcons (including types, datatypes, and
entities, but not aliases). Of these, 192 are used in language specifications
in Languages-beta. The number of funcons used for each language is as follows:

|[IMP]  |[SMP]|[MiniJ]|[SL]   |[OC-L]
| :---: | :---:  | :---:    | :---: | :---:
| 29    | 62     | 70       | 71    | 160

The definitions of some of the used funcons reference other funcons, which are
not counted. The remaining funcons have either been used in previous language
specifications, or are expected to be useful in future specifications.

The following tables show which language specifications directly use each
funcon, thereby exhibiting the degree of funcon reuse in Languages-beta.

<details markdown="block">
  <summary>
    CONTENTS
  </summary>
____
- TOC
{:toc}
____
</details>

## Computations

### Types of computation

| Kind       | Name | Alias |[IMP]  |[SMP]|[MiniJ]|[SL]   |[OC-L]
| :---       | :--- | :--- | :---: | :---:  | :---:    | :---: | :---:
| _Funcon_   | `computation-types` | |       |        |          |       |       
{: .cbs-reuse }

### Normal computation

#### Flowing

| Kind       | Name | Alias |[IMP]  |[SMP]|[MiniJ]|[SL]   |[OC-L]
| :---       | :--- | :--- | :---: | :---:  | :---:    | :---: | :---:
| _Funcon_   | `left-to-right`   | `l-to-r` |       |        |          |       |       
| _Funcon_   | `right-to-left`   | `r-to-l` |       |        |          |       |       
| _Funcon_   | `sequential`      | `seq` | X     | X      | X        | X     | X     
| _Funcon_   | `effect` | |       | X      |          | X     | X     
| _Funcon_   | `choice` | |       |        |          |       |       
| _Funcon_   | `if-true-else`    | `if-else` | X     | X      | X        | X     | X     
| _Funcon_   | `while-true`      | `while` | X     | X      | X        | X     | X     
| _Funcon_   | `do-while-true`   | `do-while` |       |        |          |       |       
| _Funcon_   | `interleave` | |       |        |          |       |       
| _Datatype_ | `yielding` | |       |        |          |       |       
| _Funcon_   | `signal` | |       |        |          |       |       
| _Funcon_   | `yielded` | |       |        |          |       |       
| _Funcon_   | `yield` | |       |        |          |       |       
| _Funcon_   | `yield-on-value` | |       |        |          |       |       
| _Funcon_   | `yield-on-abrupt` | |       |        |          |       |       
| _Funcon_   | `atomic` | |       |        |          |       |       
{: .cbs-reuse }

#### Giving

| Kind       | Name | Alias |[IMP]  |[SMP]|[MiniJ]|[SL]   |[OC-L]
| :---       | :--- | :--- | :---: | :---:  | :---:    | :---: | :---:
| _Entity_   | `given-value` | |       |        |          |       |       
| _Funcon_   | `initialise-giving` | | X     | X      | X        | X     | X     
| _Funcon_   | `give` | |       | X      | X        | X     | X     
| _Funcon_   | `given` | |       | X      | X        | X     | X     
| _Funcon_   | `no-given` | |       |        |          |       |       
| _Funcon_   | `left-to-right-map` | |       |        |          |       |       
| _Funcon_   | `interleave-map` | |       |        |          |       |       
| _Funcon_   | `left-to-right-repeat` | |       | X      |          |       |       
| _Funcon_   | `interleave-repeat` | |       |        | X        |       |       
| _Funcon_   | `left-to-right-filter` | |       |        |          |       |       
| _Funcon_   | `interleave-filter` | |       |        |          |       |       
| _Funcon_   | `fold-left` | |       |        |          |       |       
| _Funcon_   | `fold-right` | |       |        |          |       |       
{: .cbs-reuse }

#### Binding

| Kind       | Name | Alias |[IMP]  |[SMP]|[MiniJ]|[SL]   |[OC-L]
| :---       | :--- | :--- | :---: | :---:  | :---:    | :---: | :---:
| _Type_     | `environments`       | `envs` | X     | X      | X        | X     | X     
| _Datatype_ | `identifiers`        | `ids` | X     | X      | X        | X     | X     
| _Funcon_   | `identifier-tagged`  | `id-tagged` |       |        |          |       |       
| _Funcon_   | `fresh-identifier` | |       |        |          |       |       
| _Entity_   | `environment`        | `env` |       |        |          |       |       
| _Funcon_   | `initialise-binding` | | X     | X      | X        | X     | X     
| _Funcon_   | `bind-value`         | `bind` | X     | X      |          | X     |       
| _Funcon_   | `unbind` | |       |        |          |       |       
| _Funcon_   | `bound-directly` | |       |        |          |       |       
| _Funcon_   | `bound-value`        | `bound` | X     | X      | X        | X     | X     
| _Funcon_   | `closed` | |       |        |          | X     |       
| _Funcon_   | `scope` | | X     | X      | X        | X     | X     
| _Funcon_   | `accumulate` | |       |        |          |       | X     
| _Funcon_   | `collateral` | | X     | X      | X        | X     | X     
| _Funcon_   | `bind-recursively` | |       |        |          |       |       
| _Funcon_   | `recursive` | |       |        | X        |       | X     
{: .cbs-reuse }

#### Generating

| Kind       | Name | Alias |[IMP]  |[SMP]|[MiniJ]|[SL]   |[OC-L]
| :---       | :--- | :--- | :---: | :---:  | :---:    | :---: | :---:
| _Type_     | `atoms` | |       |        |          |       |       
| _Entity_   | `used-atom-set` | |       |        |          |       |       
| _Funcon_   | `initialise-generating` | |       |        |          |       |       
| _Funcon_   | `fresh-atom` | |       |        | X        | X     |       
| _Funcon_   | `use-atom-not-in` | |       |        |          |       |       
{: .cbs-reuse }

#### Storing

| Kind       | Name | Alias |[IMP]  |[SMP]|[MiniJ]|[SL]   |[OC-L]
| :---       | :--- | :--- | :---: | :---:  | :---:    | :---: | :---:
| _Datatype_ | `locations`                     | `locs` |       |        |          |       |       
| _Type_     | `stores` | |       |        |          |       |       
| _Entity_   | `store` | |       |        |          |       |       
| _Funcon_   | `initialise-storing` | | X     | X      | X        | X     | X     
| _Funcon_   | `store-clear` | |       |        |          |       |       
| _Datatype_ | `variables`                     | `vars` |       | X      | X        | X     | X     
| _Funcon_   | `variable`                      | `var` |       |        |          |       |       
| _Funcon_   | `allocate-variable`             | `alloc` |       | X      |          |       |       
| _Funcon_   | `recycle-variables`             | `recycle` |       |        |          |       |       
| _Funcon_   | `initialise-variable`           | `init` |       |        |          |       |       
| _Funcon_   | `allocate-initialised-variable` | `alloc-init` | X     | X      | X        | X     | X     
| _Funcon_   | `assign` | | X     | X      | X        | X     | X     
| _Funcon_   | `assigned` | | X     | X      | X        | X     | X     
| _Funcon_   | `current-value` | |       |        |          |       |       
| _Funcon_   | `un-assign` | |       |        |          |       |       
| _Funcon_   | `structural-assign` | |       |        |          |       |       
| _Funcon_   | `structural-assigned` | |       |        |          |       |       
{: .cbs-reuse }

#### Linking

| Kind       | Name | Alias |[IMP]  |[SMP]|[MiniJ]|[SL]   |[OC-L]
| :---       | :--- | :--- | :---: | :---:  | :---:    | :---: | :---:
| _Datatype_ | `links` | |       |        |          |       |       
| _Funcon_   | `initialise-linking` | |       |        |          |       |       
| _Funcon_   | `link` | |       |        |          |       |       
| _Funcon_   | `fresh-link` | |       |        |          |       |       
| _Funcon_   | `fresh-initialised-link`    | `fresh-init-link` |       |        |          |       |       
| _Funcon_   | `set-link` | |       |        |          |       |       
| _Funcon_   | `follow-if-link` | |       |        |          |       |       
{: .cbs-reuse }

#### Interacting

##### Input

| Kind       | Name | Alias |[IMP]  |[SMP]|[MiniJ]|[SL]   |[OC-L]
| :---       | :--- | :--- | :---: | :---:  | :---:    | :---: | :---:
| _Entity_   | `standard-in` | |       |        |          |       |       
| _Funcon_   | `read` | |       | X      |          | X     | X     
{: .cbs-reuse }

##### Output

| Kind       | Name | Alias |[IMP]  |[SMP]|[MiniJ]|[SL]   |[OC-L]
| :---       | :--- | :--- | :---: | :---:  | :---:    | :---: | :---:
| _Entity_   | `standard-out` | |       |        |          |       |       
| _Funcon_   | `print` | |       | X      | X        | X     | X     
{: .cbs-reuse }

### Abnormal computation

#### Terminating abruptly

| Kind       | Name | Alias |[IMP]  |[SMP]|[MiniJ]|[SL]   |[OC-L]
| :---       | :--- | :--- | :---: | :---:  | :---:    | :---: | :---:
| _Funcon_   | `stuck` | |       |        |          |       |       
| _Entity_   | `abrupted` | |       |        |          |       |       
| _Funcon_   | `finalise-abrupting` | |       |        |          | X     |       
| _Funcon_   | `abrupt` | |       |        |          |       |       
| _Funcon_   | `handle-abrupt` | |       |        |          |       |       
| _Funcon_   | `finally` | |       |        |          |       |       
{: .cbs-reuse }

#### Failing

| Kind       | Name | Alias |[IMP]  |[SMP]|[MiniJ]|[SL]   |[OC-L]
| :---       | :--- | :--- | :---: | :---:  | :---:    | :---: | :---:
| _Datatype_ | `failing` | |       |        |          |       |       
| _Funcon_   | `failed` | |       |        |          |       |       
| _Funcon_   | `finalise-failing` | | X     | X      | X        |       | X     
| _Funcon_   | `fail` | |       |        |          | X     | X     
| _Funcon_   | `else` | |       |        |          | X     | X     
| _Funcon_   | `else-choice` | |       |        |          |       |       
| _Funcon_   | `checked` | | X     | X      | X        | X     | X     
| _Funcon_   | `check-true` | |       |        |          |       | X     
{: .cbs-reuse }

#### Throwing

| Kind       | Name | Alias |[IMP]  |[SMP]|[MiniJ]|[SL]   |[OC-L]
| :---       | :--- | :--- | :---: | :---:  | :---:    | :---: | :---:
| _Datatype_ | `throwing` | |       |        |          |       |       
| _Funcon_   | `thrown` | |       |        |          |       |       
| _Funcon_   | `finalise-throwing` | |       | X      |          |       | X     
| _Funcon_   | `throw` | |       | X      |          |       | X     
| _Funcon_   | `handle-thrown` | |       | X      |          |       | X     
| _Funcon_   | `handle-recursively` | |       |        |          |       |       
| _Funcon_   | `catch-else-throw` | |       |        |          |       |       
{: .cbs-reuse }

#### Returning

| Kind       | Name | Alias |[IMP]  |[SMP]|[MiniJ]|[SL]   |[OC-L]
| :---       | :--- | :--- | :---: | :---:  | :---:    | :---: | :---:
| _Datatype_ | `returning` | |       |        |          |       |       
| _Funcon_   | `returned` | |       |        |          |       |       
| _Funcon_   | `finalise-returning` | |       |        |          |       |       
| _Funcon_   | `return` | |       | X      |          | X     |       
| _Funcon_   | `handle-return` | |       | X      |          | X     |       
{: .cbs-reuse }

#### Breaking

| Kind       | Name | Alias |[IMP]  |[SMP]|[MiniJ]|[SL]   |[OC-L]
| :---       | :--- | :--- | :---: | :---:  | :---:    | :---: | :---:
| _Datatype_ | `breaking` | |       |        |          |       |       
| _Funcon_   | `broken` | |       |        |          |       |       
| _Funcon_   | `finalise-breaking` | |       |        |          |       |       
| _Funcon_   | `break` | |       |        |          | X     |       
| _Funcon_   | `handle-break` | |       |        |          | X     |       
{: .cbs-reuse }

#### Continuing

| Kind       | Name | Alias |[IMP]  |[SMP]|[MiniJ]|[SL]   |[OC-L]
| :---       | :--- | :--- | :---: | :---:  | :---:    | :---: | :---:
| _Datatype_ | `continuing` | |       |        |          |       |       
| _Funcon_   | `continued` | |       |        |          |       |       
| _Funcon_   | `finalise-continuing` | |       |        |          |       |       
| _Funcon_   | `continue` | |       |        |          | X     |       
| _Funcon_   | `handle-continue` | |       |        |          | X     |       
{: .cbs-reuse }

#### Controlling

| Kind       | Name | Alias |[IMP]  |[SMP]|[MiniJ]|[SL]   |[OC-L]
| :---       | :--- | :--- | :---: | :---:  | :---:    | :---: | :---:
| _Datatype_ | `continuations` | |       |        |          |       |       
| _Funcon_   | `continuation` | |       |        |          |       |       
| _Entity_   | `plug-signal` | |       |        |          |       |       
| _Funcon_   | `hole` | |       |        |          |       |       
| _Funcon_   | `resume-continuation` | |       |        |          |       |       
| _Entity_   | `control-signal` | |       |        |          |       |       
| _Funcon_   | `control` | |       |        |          |       |       
| _Funcon_   | `delimit-current-continuation`  | `delimit-cc` |       |        |          |       |       
{: .cbs-reuse }


## Values

### Value Types

| Kind       | Name | Alias |[IMP]  |[SMP]|[MiniJ]|[SL]   |[OC-L]
| :---       | :--- | :--- | :---: | :---:  | :---:    | :---: | :---:
| _Type_     | `values`           | `vals` |       | X      |          | X     | X     
| _Type_     | `value-types`      | `types` |       |        | X        |       |       
| _Type_     | `empty-type` | |       |        |          |       |       
| _Funcon_   | `is-in-type`       | `is` |       |        |          |       | X     
| _Funcon_   | `is-value`         | `is-val` |       |        |          |       |       
| _Funcon_   | `when-true`        | `when` |       |        |          |       | X     
| _Type_     | `cast-to-type`     | `cast` |       |        |          | X     |       
| _Type_     | `ground-values`    | `ground-vals` |       |        |          |       | X     
| _Funcon_   | `is-equal`         | `is-eq` |       | X      |          | X     | X     
{: .cbs-reuse }

### Primitive values

#### Booleans

| Kind       | Name | Alias |[IMP]  |[SMP]|[MiniJ]|[SL]   |[OC-L]
| :---       | :--- | :--- | :---: | :---:  | :---:    | :---: | :---:
| _Datatype_ | `booleans`      | `bools` | X     |        | X        | X     | X     
| _Funcon_   | `true` | | X     | X      | X        | X     | X     
| _Funcon_   | `false` | | X     | X      | X        | X     | X     
| _Funcon_   | `not` | | X     | X      | X        | X     | X     
| _Funcon_   | `implies` | |       |        |          |       |       
| _Funcon_   | `and` | |       |        |          |       | X     
| _Funcon_   | `or` | |       |        |          |       | X     
| _Funcon_   | `exclusive-or`  | `xor` |       |        |          |       |       
{: .cbs-reuse }

#### Integers

| Kind       | Name | Alias |[IMP]  |[SMP]|[MiniJ]|[SL]   |[OC-L]
| :---       | :--- | :--- | :---: | :---:  | :---:    | :---: | :---:
| _Type_     | `integers`                     | `ints` | X     |        | X        | X     | X     
| _Type_     | `integers-from`                | `from` |       |        |          |       |       
| _Type_     | `integers-up-to`               | `up-to` |       |        |          |       |       
| _Type_     | `bounded-integers`             | `bounded-ints` |       |        |          |       | X     
| _Type_     | `positive-integers`            | `pos-ints` |       |        |          |       |       
| _Type_     | `negative-integers`            | `neg-ints` |       |        |          |       |       
| _Type_     | `natural-numbers`              | `nats` |       | X      |          |       | X     
| _Funcon_   | `natural-successor`            | `nat-succ` |       |        |          |       | X     
| _Funcon_   | `natural-predecessor`          | `nat-pred` |       |        |          |       |       
| _Funcon_   | `integer-add`                  | `int-add` | X     | X      | X        | X     | X     
| _Funcon_   | `integer-subtract`             | `int-sub` |       | X      | X        | X     | X     
| _Funcon_   | `integer-multiply`             | `int-mul` |       | X      | X        | X     | X     
| _Funcon_   | `integer-divide`               | `int-div` | X     | X      |          | X     | X     
| _Funcon_   | `integer-modulo`               | `int-mod` |       | X      |          |       | X     
| _Funcon_   | `integer-power`                | `int-pow` |       |        |          |       |       
| _Funcon_   | `integer-absolute-value`       | `int-abs` |       |        |          |       | X     
| _Funcon_   | `integer-negate`               | `int-neg` | X     | X      |          | X     | X     
| _Funcon_   | `integer-is-less`              | `is-less` |       | X      | X        | X     | X     
| _Funcon_   | `integer-is-less-or-equal`     | `is-less-or-equal` | X     | X      |          | X     | X     
| _Funcon_   | `integer-is-greater`           | `is-greater` |       | X      |          | X     | X     
| _Funcon_   | `integer-is-greater-or-equal`  | `is-greater-or-equal` |       | X      |          | X     | X     
| _Funcon_   | `binary-natural`               | `binary` |       |        |          |       |       
| _Funcon_   | `octal-natural`                | `octal` |       |        |          |       |       
| _Funcon_   | `decimal-natural`              | `decimal` | X     | X      | X        | X     | X     
| _Funcon_   | `hexadecimal-natural`          | `hexadecimal` |       |        |          |       |       
| _Funcon_   | `integer-sequence` | |       |        |          |       | X     
{: .cbs-reuse }

#### Floats

| Kind       | Name | Alias |[IMP]  |[SMP]|[MiniJ]|[SL]   |[OC-L]
| :---       | :--- | :--- | :---: | :---:  | :---:    | :---: | :---:
| _Datatype_ | `float-formats` | |       |        |          |       | X     
| _Funcon_   | `binary32` | |       |        |          |       |       
| _Funcon_   | `binary64` | |       |        |          |       | X     
| _Funcon_   | `binary128` | |       |        |          |       |       
| _Funcon_   | `decimal64` | |       |        |          |       |       
| _Funcon_   | `decimal128` | |       |        |          |       |       
| _Type_     | `floats` | |       |        |          |       | X     
| _Funcon_   | `float` | |       |        |          |       |       
| _Funcon_   | `quiet-not-a-number`       | `qNaN` |       |        |          |       |       
| _Funcon_   | `signaling-not-a-number`   | `sNaN` |       |        |          |       |       
| _Funcon_   | `positive-infinity`        | `pos-inf` |       |        |          |       |       
| _Funcon_   | `negative-infinity`        | `neg-inf` |       |        |          |       |       
| _Funcon_   | `float-convert` | |       |        |          |       |       
| _Funcon_   | `float-equal` | |       |        |          |       |       
| _Funcon_   | `float-is-less` | |       |        |          |       |       
| _Funcon_   | `float-is-less-or-equal` | |       |        |          |       |       
| _Funcon_   | `float-is-greater` | |       |        |          |       |       
| _Funcon_   | `float-is-greater-or-equal` | |       |        |          |       |       
| _Funcon_   | `float-negate` | |       |        |          |       | X     
| _Funcon_   | `float-absolute-value` | |       |        |          |       | X     
| _Funcon_   | `float-add` | |       |        |          |       | X     
| _Funcon_   | `float-subtract` | |       |        |          |       | X     
| _Funcon_   | `float-multiply` | |       |        |          |       | X     
| _Funcon_   | `float-multiply-add` | |       |        |          |       |       
| _Funcon_   | `float-divide` | |       |        |          |       | X     
| _Funcon_   | `float-remainder` | |       |        |          |       | X     
| _Funcon_   | `float-sqrt` | |       |        |          |       | X     
| _Funcon_   | `float-integer-power` | |       |        |          |       |       
| _Funcon_   | `float-float-power` | |       |        |          |       | X     
| _Funcon_   | `float-round-ties-to-even` | |       |        |          |       |       
| _Funcon_   | `float-round-ties-to-infinity` | |       |        |          |       |       
| _Funcon_   | `float-floor` | |       |        |          |       | X     
| _Funcon_   | `float-ceiling` | |       |        |          |       | X     
| _Funcon_   | `float-truncate` | |       |        |          |       | X     
| _Funcon_   | `float-pi` | |       |        |          |       |       
| _Funcon_   | `float-e` | |       |        |          |       |       
| _Funcon_   | `float-log` | |       |        |          |       | X     
| _Funcon_   | `float-log10` | |       |        |          |       | X     
| _Funcon_   | `float-exp` | |       |        |          |       | X     
| _Funcon_   | `float-sin` | |       |        |          |       | X     
| _Funcon_   | `float-cos` | |       |        |          |       | X     
| _Funcon_   | `float-tan` | |       |        |          |       | X     
| _Funcon_   | `float-asin` | |       |        |          |       | X     
| _Funcon_   | `float-acos` | |       |        |          |       | X     
| _Funcon_   | `float-atan` | |       |        |          |       | X     
| _Funcon_   | `float-sinh` | |       |        |          |       | X     
| _Funcon_   | `float-cosh` | |       |        |          |       | X     
| _Funcon_   | `float-tanh` | |       |        |          |       | X     
| _Funcon_   | `float-asinh` | |       |        |          |       |       
| _Funcon_   | `float-acosh` | |       |        |          |       |       
| _Funcon_   | `float-atanh` | |       |        |          |       |       
| _Funcon_   | `float-atan2` | |       |        |          |       | X     
{: .cbs-reuse }

#### Characters

| Kind       | Name | Alias |[IMP]  |[SMP]|[MiniJ]|[SL]   |[OC-L]
| :---       | :--- | :--- | :---: | :---:  | :---:    | :---: | :---:
| _Type_     | `characters`                          | `chars` |       |        |          |       | X     
| _Datatype_ | `unicode-characters`                  | `unicode-chars` |       |        |          |       |       
| _Type_     | `unicode-points` | |       |        |          |       |       
| _Funcon_   | `unicode-character`                   | `unicode-char` |       |        |          |       | X     
| _Funcon_   | `unicode-point`                       | `unicode` |       |        |          |       |       
| _Type_     | `basic-multilingual-plane-characters` | `bmp-chars` |       |        |          |       |       
| _Type_     | `basic-multilingual-plane-points` | |       |        |          |       |       
| _Type_     | `iso-latin-1-characters`              | `latin-1-chars` |       |        |          |       |       
| _Type_     | `iso-latin-1-points` | |       |        |          |       |       
| _Type_     | `ascii-characters`                    | `ascii-chars` |       |        |          |       |       
| _Type_     | `ascii-points` | |       |        |          |       |       
| _Type_     | `ascii-character`                     | `ascii-char` |       |        |          |       | X     
| _Funcon_   | `utf-8` | |       |        |          |       |       
| _Funcon_   | `utf-16` | |       |        |          |       |       
| _Funcon_   | `utf-32` | |       |        |          |       |       
| _Funcon_   | `backspace` | |       |        |          |       | X     
| _Funcon_   | `horizontal-tab` | |       |        |          |       | X     
| _Funcon_   | `line-feed` | |       |        |          |       | X     
| _Funcon_   | `form-feed` | |       |        |          |       |       
| _Funcon_   | `carriage-return` | |       |        |          |       | X     
| _Funcon_   | `double-quote` | |       |        |          |       |       
| _Funcon_   | `single-quote` | |       |        |          |       |       
| _Funcon_   | `backslash` | |       |        |          |       | X     
{: .cbs-reuse }

#### The null value

| Kind       | Name | Alias |[IMP]  |[SMP]|[MiniJ]|[SL]   |[OC-L]
| :---       | :--- | :--- | :---: | :---:  | :---:    | :---: | :---:
| _Datatype_ | `null-type` | | X     | X      | X        | X     | X     
| _Funcon_   | `null-value` | `null` | X     | X      | X        | X     | X     
{: .cbs-reuse }

### Composite values

#### Sequences of values

| Kind       | Name | Alias |[IMP]  |[SMP]|[MiniJ]|[SL]   |[OC-L]
| :---       | :--- | :--- | :---: | :---:  | :---:    | :---: | :---:
| _Funcon_   | `length` | |       | X      | X        |       | X     
| _Funcon_   | `index` | |       | X      | X        |       | X     
| _Funcon_   | `is-in` | |       |        |          |       |       
| _Funcon_   | `first` | |       |        | X        |       |       
| _Funcon_   | `second` | |       |        |          |       |       
| _Funcon_   | `third` | |       |        |          |       |       
| _Funcon_   | `first-n` | |       |        |          |       |       
| _Funcon_   | `drop-first-n` | |       |        |          |       |       
| _Funcon_   | `reverse` | |       |        |          |       | X     
| _Funcon_   | `n-of` | |       |        |          |       | X     
| _Funcon_   | `intersperse` | |       |        |          |       | X     
{: .cbs-reuse }

#### Datatypes

| Kind       | Name | Alias |[IMP]  |[SMP]|[MiniJ]|[SL]   |[OC-L]
| :---       | :--- | :--- | :---: | :---:  | :---:    | :---: | :---:
| _Funcon_   | `datatype-value` | |       |        |          |       |       
| _Funcon_   | `datatype-value-id` | |       |        |          |       |       
| _Funcon_   | `datatype-value-elements` | |       |        |          |       |       
{: .cbs-reuse }

#### Tuples

| Kind       | Name | Alias |[IMP]  |[SMP]|[MiniJ]|[SL]   |[OC-L]
| :---       | :--- | :--- | :---: | :---:  | :---:    | :---: | :---:
| _Datatype_ | `tuples` | |       | X      | X        |       | X     
| _Funcon_   | `tuple-elements` | |       |        | X        |       | X     
| _Funcon_   | `tuple-zip` | |       |        |          |       |       
{: .cbs-reuse }

#### Lists

| Kind       | Name | Alias |[IMP]  |[SMP]|[MiniJ]|[SL]   |[OC-L]
| :---       | :--- | :--- | :---: | :---:  | :---:    | :---: | :---:
| _Datatype_ | `lists` | |       |        |          | X     | X     
| _Funcon_   | `list` | |       |        |          |       | X     
| _Funcon_   | `list-elements` | |       |        |          |       | X     
| _Funcon_   | `list-nil`       | `nil` |       |        |          | X     | X     
| _Funcon_   | `list-cons`      | `cons` |       |        |          | X     | X     
| _Funcon_   | `list-head`      | `head` |       |        |          | X     | X     
| _Funcon_   | `list-tail`      | `tail` |       |        |          | X     | X     
| _Funcon_   | `list-length` | |       |        |          |       | X     
| _Funcon_   | `list-append` | |       |        |          |       | X     
{: .cbs-reuse }

#### Strings

| Kind       | Name | Alias |[IMP]  |[SMP]|[MiniJ]|[SL]   |[OC-L]
| :---       | :--- | :--- | :---: | :---:  | :---:    | :---: | :---:
| _Type_     | `strings` | |       |        |          | X     | X     
| _Funcon_   | `string` | |       |        |          |       |       
| _Funcon_   | `string-append` | |       |        |          | X     | X     
| _Funcon_   | `to-string` | |       |        | X        | X     | X     
{: .cbs-reuse }

#### Vectors

| Kind       | Name | Alias |[IMP]  |[SMP]|[MiniJ]|[SL]   |[OC-L]
| :---       | :--- | :--- | :---: | :---:  | :---:    | :---: | :---:
| _Datatype_ | `vectors` | |       | X      | X        |       | X     
| _Funcon_   | `vector` | |       | X      | X        |       | X     
| _Funcon_   | `vector-elements` | |       | X      | X        |       | X     
{: .cbs-reuse }

#### Bits and bit vectors

| Kind       | Name | Alias |[IMP]  |[SMP]|[MiniJ]|[SL]   |[OC-L]
| :---       | :--- | :--- | :---: | :---:  | :---:    | :---: | :---:
| _Type_     | `bits` | |       |        |          |       |       
| _Datatype_ | `bit-vectors` | |       |        |          |       | X     
| _Funcon_   | `bit-vector` | |       |        |          |       |       
| _Type_     | `bytes`             | `octets` |       |        |          |       |       
| _Funcon_   | `bit-vector-not` | |       |        |          |       | X     
| _Funcon_   | `bit-vector-and` | |       |        |          |       | X     
| _Funcon_   | `bit-vector-or` | |       |        |          |       | X     
| _Funcon_   | `bit-vector-xor` | |       |        |          |       | X     
| _Funcon_   | `bit-vector-shift-left` | |       |        |          |       | X     
| _Funcon_   | `bit-vector-logical-shift-right` | |       |        |          |       | X     
| _Funcon_   | `bit-vector-arithmetic-shift-right` | |       |        |          |       | X     
| _Funcon_   | `integer-to-bit-vector` | |       |        |          |       | X     
| _Funcon_   | `bit-vector-to-integer` | |       |        |          |       | X     
| _Funcon_   | `bit-vector-to-natural` | |       |        |          |       |       
| _Funcon_   | `unsigned-bit-vector-maximum` | |       |        |          |       |       
| _Funcon_   | `signed-bit-vector-maximum` | |       |        |          |       | X     
| _Funcon_   | `signed-bit-vector-minimum` | |       |        |          |       | X     
| _Funcon_   | `is-in-signed-bit-vector` | |       |        |          |       |       
| _Funcon_   | `is-in-unsigned-bit-vector` | |       |        |          |       |       
{: .cbs-reuse }

#### Sets

| Kind       | Name | Alias |[IMP]  |[SMP]|[MiniJ]|[SL]   |[OC-L]
| :---       | :--- | :--- | :---: | :---:  | :---:    | :---: | :---:
| _Type_     | `sets` | |       |        | X        |       |       
| _Funcon_   | `set` | |       |        |          |       | X     
| _Funcon_   | `set-elements` | |       |        |          |       | X     
| _Funcon_   | `is-in-set` | |       |        |          |       | X     
| _Funcon_   | `is-subset` | |       |        |          |       |       
| _Funcon_   | `set-insert` | |       |        |          |       |       
| _Funcon_   | `set-unite` | |       |        | X        |       |       
| _Funcon_   | `set-intersect` | |       |        |          |       |       
| _Funcon_   | `set-difference` | |       |        |          |       |       
| _Funcon_   | `set-size` | |       |        |          |       |       
| _Funcon_   | `some-element` | |       |        |          |       |       
| _Funcon_   | `element-not-in` | |       |        |          |       |       
{: .cbs-reuse }

#### Maps

| Kind       | Name | Alias |[IMP]  |[SMP]|[MiniJ]|[SL]   |[OC-L]
| :---       | :--- | :--- | :---: | :---:  | :---:    | :---: | :---:
| _Type_     | `maps` | |       |        |          |       | X     
| _Funcon_   | `map` | |       |        | X        | X     | X     
| _Funcon_   | `map-elements` | |       |        |          |       | X     
| _Funcon_   | `map-lookup`    | `lookup` |       |        | X        | X     | X     
| _Funcon_   | `map-domain`    | `dom` |       |        |          |       | X     
| _Funcon_   | `map-override` | |       |        |          | X     | X     
| _Funcon_   | `map-unite` | |       |        |          |       | X     
| _Funcon_   | `map-delete` | |       |        |          |       |       
{: .cbs-reuse }

#### Multisets (bags)

| Kind       | Name | Alias |[IMP]  |[SMP]|[MiniJ]|[SL]   |[OC-L]
| :---       | :--- | :--- | :---: | :---:  | :---:    | :---: | :---:
| _Type_     | `multisets` | |       |        |          |       |       
| _Funcon_   | `multiset` | |       |        |          |       |       
| _Funcon_   | `multiset-elements` | |       |        |          |       |       
| _Funcon_   | `multiset-occurrences` | |       |        |          |       |       
| _Funcon_   | `multiset-insert` | |       |        |          |       |       
| _Funcon_   | `multiset-delete` | |       |        |          |       |       
| _Funcon_   | `is-submultiset` | |       |        |          |       |       
{: .cbs-reuse }

#### Trees

| Kind       | Name | Alias |[IMP]  |[SMP]|[MiniJ]|[SL]   |[OC-L]
| :---       | :--- | :--- | :---: | :---:  | :---:    | :---: | :---:
| _Datatype_ | `trees` | |       |        |          |       |       
| _Funcon_   | `tree` | |       |        |          |       |       
| _Funcon_   | `tree-root-value` | |       |        |          |       |       
| _Funcon_   | `tree-branch-sequence` | |       |        |          |       |       
| _Funcon_   | `single-branching-sequence` | |       |        |          |       |       
| _Funcon_   | `forest-root-value-sequence` | |       |        |          |       |       
| _Funcon_   | `forest-branch-sequence` | |       |        |          |       |       
| _Funcon_   | `forest-value-sequence` | |       |        |          |       |       
{: .cbs-reuse }

#### Graphs

| Kind       | Name | Alias |[IMP]  |[SMP]|[MiniJ]|[SL]   |[OC-L]
| :---       | :--- | :--- | :---: | :---:  | :---:    | :---: | :---:
| _Type_     | `directed-graphs` | |       |        |          |       |       
| _Funcon_   | `is-cyclic` | |       |        |          |       |       
| _Funcon_   | `topological-sort` | |       |        |          |       |       
{: .cbs-reuse }

#### References and pointers

| Kind       | Name | Alias |[IMP]  |[SMP]|[MiniJ]|[SL]   |[OC-L]
| :---       | :--- | :--- | :---: | :---:  | :---:    | :---: | :---:
| _Datatype_ | `references` | |       |        | X        |       |       
| _Funcon_   | `reference` | |       |        | X        |       |       
| _Type_     | `pointers` | |       |        | X        |       |       
| _Funcon_   | `dereference` | |       |        | X        |       |       
{: .cbs-reuse }

#### Records

| Kind       | Name | Alias |[IMP]  |[SMP]|[MiniJ]|[SL]   |[OC-L]
| :---       | :--- | :--- | :---: | :---:  | :---:    | :---: | :---:
| _Datatype_ | `records` | |       |        |          |       | X     
| _Funcon_   | `record` | |       |        |          |       | X     
| _Funcon_   | `record-map` | |       |        |          |       | X     
| _Funcon_   | `record-select` | |       |        |          |       | X     
{: .cbs-reuse }

#### Variants

| Kind       | Name | Alias |[IMP]  |[SMP]|[MiniJ]|[SL]   |[OC-L]
| :---       | :--- | :--- | :---: | :---:  | :---:    | :---: | :---:
| _Datatype_ | `variants` | |       |        |          |       | X     
| _Funcon_   | `variant` | |       |        |          |       | X     
| _Funcon_   | `variant-id` | |       |        |          |       |       
| _Funcon_   | `variant-value` | |       |        |          |       |       
{: .cbs-reuse }

#### Classes

| Kind       | Name | Alias |[IMP]  |[SMP]|[MiniJ]|[SL]   |[OC-L]
| :---       | :--- | :--- | :---: | :---:  | :---:    | :---: | :---:
| _Datatype_ | `classes` | |       |        |          |       |       
| _Funcon_   | `class` | |       |        | X        |       |       
| _Funcon_   | `class-instantiator` | |       |        | X        |       |       
| _Funcon_   | `class-feature-map` | |       |        |          |       |       
| _Funcon_   | `class-superclass-name-sequence` | |       |        |          |       |       
| _Funcon_   | `class-name-tree` | |       |        |          |       |       
| _Funcon_   | `is-subclass-name` | |       |        |          |       |       
| _Funcon_   | `class-name-single-inheritance-feature-map` | |       |        | X        |       |       
{: .cbs-reuse }

#### Objects

| Kind       | Name | Alias |[IMP]  |[SMP]|[MiniJ]|[SL]   |[OC-L]
| :---       | :--- | :--- | :---: | :---:  | :---:    | :---: | :---:
| _Datatype_ | `objects` | |       |        | X        | X     |       
| _Funcon_   | `object` | |       |        | X        | X     |       
| _Funcon_   | `object-identity` | |       |        |          |       |       
| _Funcon_   | `object-class-name` | |       |        | X        |       |       
| _Funcon_   | `object-feature-map` | |       |        |          | X     |       
| _Funcon_   | `object-subobject-sequence` | |       |        |          |       |       
| _Funcon_   | `object-tree` | |       |        |          |       |       
| _Funcon_   | `object-single-inheritance-feature-map` | |       |        | X        |       |       
{: .cbs-reuse }

### Abstraction values

#### Generic abstractions

| Kind       | Name | Alias |[IMP]  |[SMP]|[MiniJ]|[SL]   |[OC-L]
| :---       | :--- | :--- | :---: | :---:  | :---:    | :---: | :---:
| _Type_     | `abstractions` | |       |        |          |       |       
| _Funcon_   | `abstraction` | |       |        | X        |       | X     
| _Funcon_   | `closure` | |       | X      | X        | X     | X     
| _Funcon_   | `enact` | |       |        |          |       |       
{: .cbs-reuse }

#### Thunks

| Kind       | Name | Alias |[IMP]  |[SMP]|[MiniJ]|[SL]   |[OC-L]
| :---       | :--- | :--- | :---: | :---:  | :---:    | :---: | :---:
| _Datatype_ | `thunks` | |       |        |          |       |       
| _Funcon_   | `thunk` | |       |        | X        |       |       
| _Funcon_   | `force` | |       |        | X        |       |       
{: .cbs-reuse }

#### Functions

| Kind       | Name | Alias |[IMP]  |[SMP]|[MiniJ]|[SL]   |[OC-L]
| :---       | :--- | :--- | :---: | :---:  | :---:    | :---: | :---:
| _Datatype_ | `functions` | |       | X      | X        | X     | X     
| _Funcon_   | `function` | |       | X      | X        | X     | X     
| _Funcon_   | `apply` | |       | X      | X        | X     | X     
| _Funcon_   | `supply` | |       |        |          |       |       
| _Funcon_   | `compose` | |       |        |          |       |       
| _Funcon_   | `uncurry` | |       |        |          |       |       
| _Funcon_   | `curry` | |       |        |          |       | X     
| _Funcon_   | `partial-apply` | |       |        |          |       |       
{: .cbs-reuse }

#### Patterns

| Kind       | Name | Alias |[IMP]  |[SMP]|[MiniJ]|[SL]   |[OC-L]
| :---       | :--- | :--- | :---: | :---:  | :---:    | :---: | :---:
| _Datatype_ | `patterns` | |       | X      | X        |       | X     
| _Funcon_   | `pattern` | |       | X      | X        |       | X     
| _Funcon_   | `pattern-any` | |       |        |          |       | X     
| _Funcon_   | `pattern-bind` | |       |        |          |       | X     
| _Funcon_   | `pattern-type` | |       |        |          |       |       
| _Funcon_   | `pattern-else` | |       |        |          |       | X     
| _Funcon_   | `pattern-unite` | |       |        |          |       | X     
| _Funcon_   | `match` | |       | X      | X        |       | X     
| _Funcon_   | `match-loosely` | |       |        |          |       | X     
| _Funcon_   | `case-match` | |       |        |          |       | X     
| _Funcon_   | `case-match-loosely` | |       |        |          |       |       
| _Funcon_   | `case-variant-value` | |       |        |          |       |       
{: .cbs-reuse }


[IMP]:   IMP/IMP-cbs/IMP/IMP-Funcons-Index
[SMP]:   SIMPLE/SIMPLE-cbs/SIMPLE/SIMPLE-Funcons-Index
[MiniJ]: MiniJava/MiniJava-cbs/MiniJava/MiniJava-Funcons-Index
[SL]:    SL/SL-cbs/SL/SL-Funcons-Index
[OC-L]:  OCaml-Light/OC-L-cbs/OC-L/OC-L-Funcons-Index
