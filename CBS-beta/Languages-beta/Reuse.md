---
layout: default
title: Funcon reuse
parent: Languages-beta
nav_order: 1
---

Funcon Reuse in Languages-beta
==============================

Currently, Funcons-beta includes 387 funcons (including types, datatypes, and
entities, but not aliases). Of these, 192 are used in language specifications
in Languages-beta. The number of funcons used for each language is as follows:

|[IMP]  |[SIMPLE]|[MiniJava]|[SL]   |[OC-L]
| :---: | :---:  | :---:    | :---: | :---:
| 29    | 62     | 70       | 71    | 160

The definitions of some of the used funcons reference other funcons, which are
not counted. The remaining funcons have either been used in previous language
specifications, or are expected to be useful in future specifications.

The following tables show which language specifications directly use each
funcon, thereby exhibiting the degree of funcon reuse in Languages-beta.

## Computations

### Types of computation

|[IMP]  |[SIMPLE]|[MiniJava]|[SL]   |[OC-L] | Kind       | Name | Alias
| :---: | :---:  | :---:    | :---: | :---: | :---       | :--- | :---
|       |        |          |       |       | _Funcon_   | `computation-types`


### Normal computation

#### Flowing

|[IMP]  |[SIMPLE]|[MiniJava]|[SL]   |[OC-L] | Kind       | Name | Alias
| :---: | :---:  | :---:    | :---: | :---: | :---       | :--- | :---
|       |        |          |       |       | _Funcon_   | `left-to-right`   | `l-to-r`
|       |        |          |       |       | _Funcon_   | `right-to-left`   | `r-to-l`
| X     | X      | X        | X     | X     | _Funcon_   | `sequential`      | `seq`
|       | X      |          | X     | X     | _Funcon_   | `effect`
|       |        |          |       |       | _Funcon_   | `choice`
| X     | X      | X        | X     | X     | _Funcon_   | `if-true-else`    | `if-else`
| X     | X      | X        | X     | X     | _Funcon_   | `while-true`      | `while`
|       |        |          |       |       | _Funcon_   | `do-while-true`   | `do-while`
|       |        |          |       |       | _Funcon_   | `interleave`
|       |        |          |       |       | _Datatype_ | `yielding`
|       |        |          |       |       | _Funcon_   | `signal`
|       |        |          |       |       | _Funcon_   | `yielded`
|       |        |          |       |       | _Funcon_   | `yield`
|       |        |          |       |       | _Funcon_   | `yield-on-value`
|       |        |          |       |       | _Funcon_   | `yield-on-abrupt`
|       |        |          |       |       | _Funcon_   | `atomic`


#### Giving

|[IMP]  |[SIMPLE]|[MiniJava]|[SL]   |[OC-L] | Kind       | Name | Alias
| :---: | :---:  | :---:    | :---: | :---: | :---       | :--- | :---
|       |        |          |       |       | _Entity_   | `given-value`
| X     | X      | X        | X     | X     | _Funcon_   | `initialise-giving`
|       | X      | X        | X     | X     | _Funcon_   | `give`
|       | X      | X        | X     | X     | _Funcon_   | `given`
|       |        |          |       |       | _Funcon_   | `no-given`
|       |        |          |       |       | _Funcon_   | `left-to-right-map`
|       |        |          |       |       | _Funcon_   | `interleave-map`
|       | X      |          |       |       | _Funcon_   | `left-to-right-repeat`
|       |        | X        |       |       | _Funcon_   | `interleave-repeat`
|       |        |          |       |       | _Funcon_   | `left-to-right-filter`
|       |        |          |       |       | _Funcon_   | `interleave-filter`
|       |        |          |       |       | _Funcon_   | `fold-left`
|       |        |          |       |       | _Funcon_   | `fold-right`


#### Binding

|[IMP]  |[SIMPLE]|[MiniJava]|[SL]   |[OC-L] | Kind       | Name | Alias
| :---: | :---:  | :---:    | :---: | :---: | :---       | :--- | :---
| X     | X      | X        | X     | X     | _Type_     | `environments`       | `envs`
| X     | X      | X        | X     | X     | _Datatype_ | `identifiers`        | `ids`
|       |        |          |       |       | _Funcon_   | `identifier-tagged`  | `id-tagged`
|       |        |          |       |       | _Funcon_   | `fresh-identifier`
|       |        |          |       |       | _Entity_   | `environment`        | `env`
| X     | X      | X        | X     | X     | _Funcon_   | `initialise-binding`
| X     | X      |          | X     |       | _Funcon_   | `bind-value`         | `bind`
|       |        |          |       |       | _Funcon_   | `unbind`
|       |        |          |       |       | _Funcon_   | `bound-directly`
| X     | X      | X        | X     | X     | _Funcon_   | `bound-value`        | `bound`
|       |        |          | X     |       | _Funcon_   | `closed`
| X     | X      | X        | X     | X     | _Funcon_   | `scope`
|       |        |          |       | X     | _Funcon_   | `accumulate`
| X     | X      | X        | X     | X     | _Funcon_   | `collateral`
|       |        |          |       |       | _Funcon_   | `bind-recursively`
|       |        | X        |       | X     | _Funcon_   | `recursive`


#### Generating

|[IMP]  |[SIMPLE]|[MiniJava]|[SL]   |[OC-L] | Kind       | Name | Alias
| :---: | :---:  | :---:    | :---: | :---: | :---       | :--- | :---
|       |        |          |       |       | _Type_     | `atoms`
|       |        |          |       |       | _Entity_   | `used-atom-set`
|       |        |          |       |       | _Funcon_   | `initialise-generating`
|       |        | X        | X     |       | _Funcon_   | `fresh-atom`
|       |        |          |       |       | _Funcon_   | `use-atom-not-in`


#### Storing

|[IMP]  |[SIMPLE]|[MiniJava]|[SL]   |[OC-L] | Kind       | Name | Alias
| :---: | :---:  | :---:    | :---: | :---: | :---       | :--- | :---
|       |        |          |       |       | _Datatype_ | `locations`                     | `locs`
|       |        |          |       |       | _Type_     | `stores`
|       |        |          |       |       | _Entity_   | `store`
| X     | X      | X        | X     | X     | _Funcon_   | `initialise-storing`
|       |        |          |       |       | _Funcon_   | `store-clear`
|       | X      | X        | X     | X     | _Datatype_ | `variables`                     | `vars`
|       |        |          |       |       | _Funcon_   | `variable`                      | `var`
|       | X      |          |       |       | _Funcon_   | `allocate-variable`             | `alloc`
|       |        |          |       |       | _Funcon_   | `recycle-variables`             | `recycle`
|       |        |          |       |       | _Funcon_   | `initialise-variable`           | `init`
| X     | X      | X        | X     | X     | _Funcon_   | `allocate-initialised-variable` | `alloc-init`
| X     | X      | X        | X     | X     | _Funcon_   | `assign`
| X     | X      | X        | X     | X     | _Funcon_   | `assigned`
|       |        |          |       |       | _Funcon_   | `current-value`
|       |        |          |       |       | _Funcon_   | `un-assign`
|       |        |          |       |       | _Funcon_   | `structural-assign`
|       |        |          |       |       | _Funcon_   | `structural-assigned`


#### Linking

|[IMP]  |[SIMPLE]|[MiniJava]|[SL]   |[OC-L] | Kind       | Name | Alias
| :---: | :---:  | :---:    | :---: | :---: | :---       | :--- | :---
|       |        |          |       |       | _Datatype_ | `links`
|       |        |          |       |       | _Funcon_   | `initialise-linking`
|       |        |          |       |       | _Funcon_   | `link`
|       |        |          |       |       | _Funcon_   | `fresh-link`
|       |        |          |       |       | _Funcon_   | `fresh-initialised-link`    | `fresh-init-link`
|       |        |          |       |       | _Funcon_   | `set-link`
|       |        |          |       |       | _Funcon_   | `follow-if-link`


#### Interacting

##### Input

|[IMP]  |[SIMPLE]|[MiniJava]|[SL]   |[OC-L] | Kind       | Name | Alias
| :---: | :---:  | :---:    | :---: | :---: | :---       | :--- | :---
|       |        |          |       |       | _Entity_   | `standard-in`
|       | X      |          | X     | X     | _Funcon_   | `read`


##### Output

|[IMP]  |[SIMPLE]|[MiniJava]|[SL]   |[OC-L] | Kind       | Name | Alias
| :---: | :---:  | :---:    | :---: | :---: | :---       | :--- | :---
|       |        |          |       |       | _Entity_   | `standard-out`
|       | X      | X        | X     | X     | _Funcon_   | `print`


### Abnormal computation

#### Terminating abruptly

|[IMP]  |[SIMPLE]|[MiniJava]|[SL]   |[OC-L] | Kind       | Name | Alias
| :---: | :---:  | :---:    | :---: | :---: | :---       | :--- | :---
|       |        |          |       |       | _Funcon_   | `stuck`
|       |        |          |       |       | _Entity_   | `abrupted`
|       |        |          | X     |       | _Funcon_   | `finalise-abrupting`
|       |        |          |       |       | _Funcon_   | `abrupt`
|       |        |          |       |       | _Funcon_   | `handle-abrupt`
|       |        |          |       |       | _Funcon_   | `finally`


#### Failing

|[IMP]  |[SIMPLE]|[MiniJava]|[SL]   |[OC-L] | Kind       | Name | Alias
| :---: | :---:  | :---:    | :---: | :---: | :---       | :--- | :---
|       |        |          |       |       | _Datatype_ | `failing`
|       |        |          |       |       | _Funcon_   | `failed`
| X     | X      | X        |       | X     | _Funcon_   | `finalise-failing`
|       |        |          | X     | X     | _Funcon_   | `fail`
|       |        |          | X     | X     | _Funcon_   | `else`
|       |        |          |       |       | _Funcon_   | `else-choice`
| X     | X      | X        | X     | X     | _Funcon_   | `checked`
|       |        |          |       | X     | _Funcon_   | `check-true`


#### Throwing

|[IMP]  |[SIMPLE]|[MiniJava]|[SL]   |[OC-L] | Kind       | Name | Alias
| :---: | :---:  | :---:    | :---: | :---: | :---       | :--- | :---
|       |        |          |       |       | _Datatype_ | `throwing`
|       |        |          |       |       | _Funcon_   | `thrown`
|       | X      |          |       | X     | _Funcon_   | `finalise-throwing`
|       | X      |          |       | X     | _Funcon_   | `throw`
|       | X      |          |       | X     | _Funcon_   | `handle-thrown`
|       |        |          |       |       | _Funcon_   | `handle-recursively`
|       |        |          |       |       | _Funcon_   | `catch-else-throw`


#### Returning

|[IMP]  |[SIMPLE]|[MiniJava]|[SL]   |[OC-L] | Kind       | Name | Alias
| :---: | :---:  | :---:    | :---: | :---: | :---       | :--- | :---
|       |        |          |       |       | _Datatype_ | `returning`
|       |        |          |       |       | _Funcon_   | `returned`
|       |        |          |       |       | _Funcon_   | `finalise-returning`
|       | X      |          | X     |       | _Funcon_   | `return`
|       | X      |          | X     |       | _Funcon_   | `handle-return`


#### Breaking

|[IMP]  |[SIMPLE]|[MiniJava]|[SL]   |[OC-L] | Kind       | Name | Alias
| :---: | :---:  | :---:    | :---: | :---: | :---       | :--- | :---
|       |        |          |       |       | _Datatype_ | `breaking`
|       |        |          |       |       | _Funcon_   | `broken`
|       |        |          |       |       | _Funcon_   | `finalise-breaking`
|       |        |          | X     |       | _Funcon_   | `break`
|       |        |          | X     |       | _Funcon_   | `handle-break`


#### Continuing

|[IMP]  |[SIMPLE]|[MiniJava]|[SL]   |[OC-L] | Kind       | Name | Alias
| :---: | :---:  | :---:    | :---: | :---: | :---       | :--- | :---
|       |        |          |       |       | _Datatype_ | `continuing`
|       |        |          |       |       | _Funcon_   | `continued`
|       |        |          |       |       | _Funcon_   | `finalise-continuing`
|       |        |          | X     |       | _Funcon_   | `continue`
|       |        |          | X     |       | _Funcon_   | `handle-continue`


#### Controlling

|[IMP]  |[SIMPLE]|[MiniJava]|[SL]   |[OC-L] | Kind       | Name | Alias
| :---: | :---:  | :---:    | :---: | :---: | :---       | :--- | :---
|       |        |          |       |       | _Datatype_ | `continuations`
|       |        |          |       |       | _Funcon_   | `continuation`
|       |        |          |       |       | _Entity_   | `plug-signal`
|       |        |          |       |       | _Funcon_   | `hole`
|       |        |          |       |       | _Funcon_   | `resume-continuation`
|       |        |          |       |       | _Entity_   | `control-signal`
|       |        |          |       |       | _Funcon_   | `control`
|       |        |          |       |       | _Funcon_   | `delimit-current-continuation`  | `delimit-cc`



## Values

### Value Types

|[IMP]  |[SIMPLE]|[MiniJava]|[SL]   |[OC-L] | Kind       | Name | Alias
| :---: | :---:  | :---:    | :---: | :---: | :---       | :--- | :---
|       | X      |          | X     | X     | _Type_     | `values`           | `vals`
|       |        | X        |       |       | _Type_     | `value-types`      | `types`
|       |        |          |       |       | _Type_     | `empty-type`
|       |        |          |       | X     | _Funcon_   | `is-in-type`       | `is`
|       |        |          |       |       | _Funcon_   | `is-value`         | `is-val`
|       |        |          |       | X     | _Funcon_   | `when-true`        | `when`
|       |        |          | X     |       | _Type_     | `cast-to-type`     | `cast`
|       |        |          |       | X     | _Type_     | `ground-values`    | `ground-vals`
|       | X      |          | X     | X     | _Funcon_   | `is-equal`         | `is-eq`


### Primitive values

#### Booleans

|[IMP]  |[SIMPLE]|[MiniJava]|[SL]   |[OC-L] | Kind       | Name | Alias
| :---: | :---:  | :---:    | :---: | :---: | :---       | :--- | :---
| X     |        | X        | X     | X     | _Datatype_ | `booleans`      | `bools`
| X     | X      | X        | X     | X     | _Funcon_   | `true`
| X     | X      | X        | X     | X     | _Funcon_   | `false`
| X     | X      | X        | X     | X     | _Funcon_   | `not`
|       |        |          |       |       | _Funcon_   | `implies`
|       |        |          |       | X     | _Funcon_   | `and`
|       |        |          |       | X     | _Funcon_   | `or`
|       |        |          |       |       | _Funcon_   | `exclusive-or`  | `xor`


#### Integers

|[IMP]  |[SIMPLE]|[MiniJava]|[SL]   |[OC-L] | Kind       | Name | Alias
| :---: | :---:  | :---:    | :---: | :---: | :---       | :--- | :---
| X     |        | X        | X     | X     | _Type_     | `integers`                     | `ints`
|       |        |          |       |       | _Type_     | `integers-from`                | `from`
|       |        |          |       |       | _Type_     | `integers-up-to`               | `up-to`
|       |        |          |       | X     | _Type_     | `bounded-integers`             | `bounded-ints`
|       |        |          |       |       | _Type_     | `positive-integers`            | `pos-ints`
|       |        |          |       |       | _Type_     | `negative-integers`            | `neg-ints`
|       | X      |          |       | X     | _Type_     | `natural-numbers`              | `nats`
|       |        |          |       | X     | _Funcon_   | `natural-successor`            | `nat-succ`
|       |        |          |       |       | _Funcon_   | `natural-predecessor`          | `nat-pred`
| X     | X      | X        | X     | X     | _Funcon_   | `integer-add`                  | `int-add`
|       | X      | X        | X     | X     | _Funcon_   | `integer-subtract`             | `int-sub`
|       | X      | X        | X     | X     | _Funcon_   | `integer-multiply`             | `int-mul`
| X     | X      |          | X     | X     | _Funcon_   | `integer-divide`               | `int-div`
|       | X      |          |       | X     | _Funcon_   | `integer-modulo`               | `int-mod`
|       |        |          |       |       | _Funcon_   | `integer-power`                | `int-pow`
|       |        |          |       | X     | _Funcon_   | `integer-absolute-value`       | `int-abs`
| X     | X      |          | X     | X     | _Funcon_   | `integer-negate`               | `int-neg`
|       | X      | X        | X     | X     | _Funcon_   | `integer-is-less`              | `is-less`
| X     | X      |          | X     | X     | _Funcon_   | `integer-is-less-or-equal`     | `is-less-or-equal`
|       | X      |          | X     | X     | _Funcon_   | `integer-is-greater`           | `is-greater`
|       | X      |          | X     | X     | _Funcon_   | `integer-is-greater-or-equal`  | `is-greater-or-equal`
|       |        |          |       |       | _Funcon_   | `binary-natural`               | `binary`
|       |        |          |       |       | _Funcon_   | `octal-natural`                | `octal`
| X     | X      | X        | X     | X     | _Funcon_   | `decimal-natural`              | `decimal`
|       |        |          |       |       | _Funcon_   | `hexadecimal-natural`          | `hexadecimal`
|       |        |          |       | X     | _Funcon_   | `integer-sequence`


#### Floats

|[IMP]  |[SIMPLE]|[MiniJava]|[SL]   |[OC-L] | Kind       | Name | Alias
| :---: | :---:  | :---:    | :---: | :---: | :---       | :--- | :---
|       |        |          |       | X     | _Datatype_ | `float-formats`
|       |        |          |       |       | _Funcon_   | `binary`32
|       |        |          |       | X     | _Funcon_   | `binary`64
|       |        |          |       |       | _Funcon_   | `binary`128
|       |        |          |       |       | _Funcon_   | `decimal`64
|       |        |          |       |       | _Funcon_   | `decimal`128
|       |        |          |       | X     | _Type_     | `floats`
|       |        |          |       |       | _Funcon_   | `float`
|       |        |          |       |       | _Funcon_   | `quiet-not-a-number`       | `q`NaN
|       |        |          |       |       | _Funcon_   | `signaling-not-a-number`   | `s`NaN
|       |        |          |       |       | _Funcon_   | `positive-infinity`        | `pos-inf`
|       |        |          |       |       | _Funcon_   | `negative-infinity`        | `neg-inf`
|       |        |          |       |       | _Funcon_   | `float-convert`
|       |        |          |       |       | _Funcon_   | `float-equal`
|       |        |          |       |       | _Funcon_   | `float-is-less`
|       |        |          |       |       | _Funcon_   | `float-is-less-or-equal`
|       |        |          |       |       | _Funcon_   | `float-is-greater`
|       |        |          |       |       | _Funcon_   | `float-is-greater-or-equal`
|       |        |          |       | X     | _Funcon_   | `float-negate`
|       |        |          |       | X     | _Funcon_   | `float-absolute-value`
|       |        |          |       | X     | _Funcon_   | `float-add`
|       |        |          |       | X     | _Funcon_   | `float-subtract`
|       |        |          |       | X     | _Funcon_   | `float-multiply`
|       |        |          |       |       | _Funcon_   | `float-multiply-add`
|       |        |          |       | X     | _Funcon_   | `float-divide`
|       |        |          |       | X     | _Funcon_   | `float-remainder`
|       |        |          |       | X     | _Funcon_   | `float-sqrt`
|       |        |          |       |       | _Funcon_   | `float-integer-power`
|       |        |          |       | X     | _Funcon_   | `float-float-power`
|       |        |          |       |       | _Funcon_   | `float-round-ties-to-even`
|       |        |          |       |       | _Funcon_   | `float-round-ties-to-infinity`
|       |        |          |       | X     | _Funcon_   | `float-floor`
|       |        |          |       | X     | _Funcon_   | `float-ceiling`
|       |        |          |       | X     | _Funcon_   | `float-truncate`
|       |        |          |       |       | _Funcon_   | `float-pi`
|       |        |          |       |       | _Funcon_   | `float-e`
|       |        |          |       | X     | _Funcon_   | `float-log`
|       |        |          |       | X     | _Funcon_   | `float-log10`
|       |        |          |       | X     | _Funcon_   | `float-exp`
|       |        |          |       | X     | _Funcon_   | `float-sin`
|       |        |          |       | X     | _Funcon_   | `float-cos`
|       |        |          |       | X     | _Funcon_   | `float-tan`
|       |        |          |       | X     | _Funcon_   | `float-asin`
|       |        |          |       | X     | _Funcon_   | `float-acos`
|       |        |          |       | X     | _Funcon_   | `float-atan`
|       |        |          |       | X     | _Funcon_   | `float-sinh`
|       |        |          |       | X     | _Funcon_   | `float-cosh`
|       |        |          |       | X     | _Funcon_   | `float-tanh`
|       |        |          |       |       | _Funcon_   | `float-asinh`
|       |        |          |       |       | _Funcon_   | `float-acosh`
|       |        |          |       |       | _Funcon_   | `float-atanh`
|       |        |          |       | X     | _Funcon_   | `float-atan2`


#### Characters

|[IMP]  |[SIMPLE]|[MiniJava]|[SL]   |[OC-L] | Kind       | Name | Alias
| :---: | :---:  | :---:    | :---: | :---: | :---       | :--- | :---
|       |        |          |       | X     | _Type_     | `characters`                          | `chars`
|       |        |          |       |       | _Datatype_ | `unicode-characters`                  | `unicode-chars`
|       |        |          |       |       | _Type_     | `unicode-points`
|       |        |          |       | X     | _Funcon_   | `unicode-character`                   | `unicode-char`
|       |        |          |       |       | _Funcon_   | `unicode-point`                       | `unicode`
|       |        |          |       |       | _Type_     | `basic-multilingual-plane-characters` | `bmp-chars`
|       |        |          |       |       | _Type_     | `basic-multilingual-plane-points`
|       |        |          |       |       | _Type_     | `iso-latin-1-characters`              | `latin-`1-chars
|       |        |          |       |       | _Type_     | `iso-latin-1-points`
|       |        |          |       |       | _Type_     | `ascii-characters`                    | `ascii-chars`
|       |        |          |       |       | _Type_     | `ascii-points`
|       |        |          |       | X     | _Type_     | `ascii-character`                     | `ascii-char`
|       |        |          |       |       | _Funcon_   | `utf-8`
|       |        |          |       |       | _Funcon_   | `utf-16`
|       |        |          |       |       | _Funcon_   | `utf-32`
|       |        |          |       | X     | _Funcon_   | `backspace`
|       |        |          |       | X     | _Funcon_   | `horizontal-tab`
|       |        |          |       | X     | _Funcon_   | `line-feed`
|       |        |          |       |       | _Funcon_   | `form-feed`
|       |        |          |       | X     | _Funcon_   | `carriage-return`
|       |        |          |       |       | _Funcon_   | `double-quote`
|       |        |          |       |       | _Funcon_   | `single-quote`
|       |        |          |       | X     | _Funcon_   | `backslash`


#### The null value

|[IMP]  |[SIMPLE]|[MiniJava]|[SL]   |[OC-L] | Kind       | Name | Alias
| :---: | :---:  | :---:    | :---: | :---: | :---       | :--- | :---
| X     | X      | X        | X     | X     | _Datatype_ | `null-type`
| X     | X      | X        | X     | X     | _Funcon_   | `null-value` | `null`


### Composite values

#### Sequences of values

|[IMP]  |[SIMPLE]|[MiniJava]|[SL]   |[OC-L] | Kind       | Name | Alias
| :---: | :---:  | :---:    | :---: | :---: | :---       | :--- | :---
|       | X      | X        |       | X     | _Funcon_   | `length`
|       | X      | X        |       | X     | _Funcon_   | `index`
|       |        |          |       |       | _Funcon_   | `is-in`
|       |        | X        |       |       | _Funcon_   | `first`
|       |        |          |       |       | _Funcon_   | `second`
|       |        |          |       |       | _Funcon_   | `third`
|       |        |          |       |       | _Funcon_   | `first-n`
|       |        |          |       |       | _Funcon_   | `drop-first-n`
|       |        |          |       | X     | _Funcon_   | `reverse`
|       |        |          |       | X     | _Funcon_   | `n-of`
|       |        |          |       | X     | _Funcon_   | `intersperse`


#### Datatypes

|[IMP]  |[SIMPLE]|[MiniJava]|[SL]   |[OC-L] | Kind       | Name | Alias
| :---: | :---:  | :---:    | :---: | :---: | :---       | :--- | :---
|       |        |          |       |       | _Funcon_   | `datatype-value`
|       |        |          |       |       | _Funcon_   | `datatype-value-id`
|       |        |          |       |       | _Funcon_   | `datatype-value-elements`


#### Tuples

|[IMP]  |[SIMPLE]|[MiniJava]|[SL]   |[OC-L] | Kind       | Name | Alias
| :---: | :---:  | :---:    | :---: | :---: | :---       | :--- | :---
|       | X      | X        |       | X     | _Datatype_ | `tuples`
|       |        | X        |       | X     | _Funcon_   | `tuple-elements`
|       |        |          |       |       | _Funcon_   | `tuple-zip`


#### Lists

|[IMP]  |[SIMPLE]|[MiniJava]|[SL]   |[OC-L] | Kind       | Name | Alias
| :---: | :---:  | :---:    | :---: | :---: | :---       | :--- | :---
|       |        |          | X     | X     | _Datatype_ | `lists`
|       |        |          |       | X     | _Funcon_   | `list`
|       |        |          |       | X     | _Funcon_   | `list-elements`
|       |        |          | X     | X     | _Funcon_   | `list-nil`       | `nil`
|       |        |          | X     | X     | _Funcon_   | `list-cons`      | `cons`
|       |        |          | X     | X     | _Funcon_   | `list-head`      | `head`
|       |        |          | X     | X     | _Funcon_   | `list-tail`      | `tail`
|       |        |          |       | X     | _Funcon_   | `list-length`
|       |        |          |       | X     | _Funcon_   | `list-append`


#### Strings

|[IMP]  |[SIMPLE]|[MiniJava]|[SL]   |[OC-L] | Kind       | Name | Alias
| :---: | :---:  | :---:    | :---: | :---: | :---       | :--- | :---
|       |        |          | X     | X     | _Type_     | `strings`
|       |        |          |       |       | _Funcon_   | `string`
|       |        |          | X     | X     | _Funcon_   | `string-append`
|       |        | X        | X     | X     | _Funcon_   | `to-string`


#### Vectors

|[IMP]  |[SIMPLE]|[MiniJava]|[SL]   |[OC-L] | Kind       | Name | Alias
| :---: | :---:  | :---:    | :---: | :---: | :---       | :--- | :---
|       | X      | X        |       | X     | _Datatype_ | `vectors`
|       | X      | X        |       | X     | _Funcon_   | `vector`
|       | X      | X        |       | X     | _Funcon_   | `vector-elements`


#### Bits and bit vectors

|[IMP]  |[SIMPLE]|[MiniJava]|[SL]   |[OC-L] | Kind       | Name | Alias
| :---: | :---:  | :---:    | :---: | :---: | :---       | :--- | :---
|       |        |          |       |       | _Type_     | `bits`
|       |        |          |       | X     | _Datatype_ | `bit-vectors`
|       |        |          |       |       | _Funcon_   | `bit-vector`
|       |        |          |       |       | _Type_     | `bytes`             | `octets`
|       |        |          |       | X     | _Funcon_   | `bit-vector-not`
|       |        |          |       | X     | _Funcon_   | `bit-vector-and`
|       |        |          |       | X     | _Funcon_   | `bit-vector-or`
|       |        |          |       | X     | _Funcon_   | `bit-vector-xor`
|       |        |          |       | X     | _Funcon_   | `bit-vector-shift-left`
|       |        |          |       | X     | _Funcon_   | `bit-vector-logical-shift-right`
|       |        |          |       | X     | _Funcon_   | `bit-vector-arithmetic-shift-right`
|       |        |          |       | X     | _Funcon_   | `integer-to-bit-vector`
|       |        |          |       | X     | _Funcon_   | `bit-vector-to-integer`
|       |        |          |       |       | _Funcon_   | `bit-vector-to-natural`
|       |        |          |       |       | _Funcon_   | `unsigned-bit-vector-maximum`
|       |        |          |       | X     | _Funcon_   | `signed-bit-vector-maximum`
|       |        |          |       | X     | _Funcon_   | `signed-bit-vector-minimum`
|       |        |          |       |       | _Funcon_   | `is-in-signed-bit-vector`
|       |        |          |       |       | _Funcon_   | `is-in-unsigned-bit-vector`


#### Sets

|[IMP]  |[SIMPLE]|[MiniJava]|[SL]   |[OC-L] | Kind       | Name | Alias
| :---: | :---:  | :---:    | :---: | :---: | :---       | :--- | :---
|       |        | X        |       |       | _Type_     | `sets`
|       |        |          |       | X     | _Funcon_   | `set`
|       |        |          |       | X     | _Funcon_   | `set-elements`
|       |        |          |       | X     | _Funcon_   | `is-in-set`
|       |        |          |       |       | _Funcon_   | `is-subset`
|       |        |          |       |       | _Funcon_   | `set-insert`
|       |        | X        |       |       | _Funcon_   | `set-unite`
|       |        |          |       |       | _Funcon_   | `set-intersect`
|       |        |          |       |       | _Funcon_   | `set-difference`
|       |        |          |       |       | _Funcon_   | `set-size`
|       |        |          |       |       | _Funcon_   | `some-element`
|       |        |          |       |       | _Funcon_   | `element-not-in`


#### Maps

|[IMP]  |[SIMPLE]|[MiniJava]|[SL]   |[OC-L] | Kind       | Name | Alias
| :---: | :---:  | :---:    | :---: | :---: | :---       | :--- | :---
|       |        |          |       | X     | _Type_     | `maps`
|       |        | X        | X     | X     | _Funcon_   | `map`
|       |        |          |       | X     | _Funcon_   | `map-elements`
|       |        | X        | X     | X     | _Funcon_   | `map-lookup`    | `lookup`
|       |        |          |       | X     | _Funcon_   | `map-domain`    | `dom`
|       |        |          | X     | X     | _Funcon_   | `map-override`
|       |        |          |       | X     | _Funcon_   | `map-unite`
|       |        |          |       |       | _Funcon_   | `map-delete`


#### Multisets (bags)

|[IMP]  |[SIMPLE]|[MiniJava]|[SL]   |[OC-L] | Kind       | Name | Alias
| :---: | :---:  | :---:    | :---: | :---: | :---       | :--- | :---
|       |        |          |       |       | _Type_     | `multisets`
|       |        |          |       |       | _Funcon_   | `multiset`
|       |        |          |       |       | _Funcon_   | `multiset-elements`
|       |        |          |       |       | _Funcon_   | `multiset-occurrences`
|       |        |          |       |       | _Funcon_   | `multiset-insert`
|       |        |          |       |       | _Funcon_   | `multiset-delete`
|       |        |          |       |       | _Funcon_   | `is-submultiset`


#### Trees

|[IMP]  |[SIMPLE]|[MiniJava]|[SL]   |[OC-L] | Kind       | Name | Alias
| :---: | :---:  | :---:    | :---: | :---: | :---       | :--- | :---
|       |        |          |       |       | _Datatype_ | `trees`
|       |        |          |       |       | _Funcon_   | `tree`
|       |        |          |       |       | _Funcon_   | `tree-root-value`
|       |        |          |       |       | _Funcon_   | `tree-branch-sequence`
|       |        |          |       |       | _Funcon_   | `single-branching-sequence`
|       |        |          |       |       | _Funcon_   | `forest-root-value-sequence`
|       |        |          |       |       | _Funcon_   | `forest-branch-sequence`
|       |        |          |       |       | _Funcon_   | `forest-value-sequence`


#### Graphs

|[IMP]  |[SIMPLE]|[MiniJava]|[SL]   |[OC-L] | Kind       | Name | Alias
| :---: | :---:  | :---:    | :---: | :---: | :---       | :--- | :---
|       |        |          |       |       | _Type_     | `directed-graphs`
|       |        |          |       |       | _Funcon_   | `is-cyclic`
|       |        |          |       |       | _Funcon_   | `topological-sort`


#### References and pointers

|[IMP]  |[SIMPLE]|[MiniJava]|[SL]   |[OC-L] | Kind       | Name | Alias
| :---: | :---:  | :---:    | :---: | :---: | :---       | :--- | :---
|       |        | X        |       |       | _Datatype_ | `references`
|       |        | X        |       |       | _Funcon_   | `reference`
|       |        | X        |       |       | _Type_     | `pointers`
|       |        | X        |       |       | _Funcon_   | `dereference`


#### Records

|[IMP]  |[SIMPLE]|[MiniJava]|[SL]   |[OC-L] | Kind       | Name | Alias
| :---: | :---:  | :---:    | :---: | :---: | :---       | :--- | :---
|       |        |          |       | X     | _Datatype_ | `records`
|       |        |          |       | X     | _Funcon_   | `record`
|       |        |          |       | X     | _Funcon_   | `record-map`
|       |        |          |       | X     | _Funcon_   | `record-select`


#### Variants

|[IMP]  |[SIMPLE]|[MiniJava]|[SL]   |[OC-L] | Kind       | Name | Alias
| :---: | :---:  | :---:    | :---: | :---: | :---       | :--- | :---
|       |        |          |       | X     | _Datatype_ | `variants`
|       |        |          |       | X     | _Funcon_   | `variant`
|       |        |          |       |       | _Funcon_   | `variant-id`
|       |        |          |       |       | _Funcon_   | `variant-value`


#### Classes

|[IMP]  |[SIMPLE]|[MiniJava]|[SL]   |[OC-L] | Kind       | Name | Alias
| :---: | :---:  | :---:    | :---: | :---: | :---       | :--- | :---
|       |        |          |       |       | _Datatype_ | `classes`
|       |        | X        |       |       | _Funcon_   | `class`
|       |        | X        |       |       | _Funcon_   | `class-instantiator`
|       |        |          |       |       | _Funcon_   | `class-feature-map`
|       |        |          |       |       | _Funcon_   | `class-superclass-name-sequence`
|       |        |          |       |       | _Funcon_   | `class-name-tree`
|       |        |          |       |       | _Funcon_   | `is-subclass-name`
|       |        | X        |       |       | _Funcon_   | `class-name-single-inheritance-feature-map`


#### Objects

|[IMP]  |[SIMPLE]|[MiniJava]|[SL]   |[OC-L] | Kind       | Name | Alias
| :---: | :---:  | :---:    | :---: | :---: | :---       | :--- | :---
|       |        | X        | X     |       | _Datatype_ | `objects`
|       |        | X        | X     |       | _Funcon_   | `object`
|       |        |          |       |       | _Funcon_   | `object-identity`
|       |        | X        |       |       | _Funcon_   | `object-class-name`
|       |        |          | X     |       | _Funcon_   | `object-feature-map`
|       |        |          |       |       | _Funcon_   | `object-subobject-sequence`
|       |        |          |       |       | _Funcon_   | `object-tree`
|       |        | X        |       |       | _Funcon_   | `object-single-inheritance-feature-map`


### Abstraction values

#### Generic abstractions

|[IMP]  |[SIMPLE]|[MiniJava]|[SL]   |[OC-L] | Kind       | Name | Alias
| :---: | :---:  | :---:    | :---: | :---: | :---       | :--- | :---
|       |        |          |       |       | _Type_     | `abstractions`
|       |        | X        |       | X     | _Funcon_   | `abstraction`
|       | X      | X        | X     | X     | _Funcon_   | `closure`
|       |        |          |       |       | _Funcon_   | `enact`


#### Thunks

|[IMP]  |[SIMPLE]|[MiniJava]|[SL]   |[OC-L] | Kind       | Name | Alias
| :---: | :---:  | :---:    | :---: | :---: | :---       | :--- | :---
|       |        |          |       |       | _Datatype_ | `thunks`
|       |        | X        |       |       | _Funcon_   | `thunk`
|       |        | X        |       |       | _Funcon_   | `force`


#### Functions

|[IMP]  |[SIMPLE]|[MiniJava]|[SL]   |[OC-L] | Kind       | Name | Alias
| :---: | :---:  | :---:    | :---: | :---: | :---       | :--- | :---
|       | X      | X        | X     | X     | _Datatype_ | `functions`
|       | X      | X        | X     | X     | _Funcon_   | `function`
|       | X      | X        | X     | X     | _Funcon_   | `apply`
|       |        |          |       |       | _Funcon_   | `supply`
|       |        |          |       |       | _Funcon_   | `compose`
|       |        |          |       |       | _Funcon_   | `uncurry`
|       |        |          |       | X     | _Funcon_   | `curry`
|       |        |          |       |       | _Funcon_   | `partial-apply`


#### Patterns

|[IMP]  |[SIMPLE]|[MiniJava]|[SL]   |[OC-L] | Kind       | Name | Alias
| :---: | :---:  | :---:    | :---: | :---: | :---       | :--- | :---
|       | X      | X        |       | X     | _Datatype_ | `patterns`
|       | X      | X        |       | X     | _Funcon_   | `pattern`
|       |        |          |       | X     | _Funcon_   | `pattern-any`
|       |        |          |       | X     | _Funcon_   | `pattern-bind`
|       |        |          |       |       | _Funcon_   | `pattern-type`
|       |        |          |       | X     | _Funcon_   | `pattern-else`
|       |        |          |       | X     | _Funcon_   | `pattern-unite`
|       | X      | X        |       | X     | _Funcon_   | `match`
|       |        |          |       | X     | _Funcon_   | `match-loosely`
|       |        |          |       | X     | _Funcon_   | `case-match`
|       |        |          |       |       | _Funcon_   | `case-match-loosely`
|       |        |          |       |       | _Funcon_   | `case-variant-value`



[IMP]: IMP/IMP-cbs/IMP/IMP-Funcons-Index/index.html

[SIMPLE]: SIMPLE/SIMPLE-cbs/SIMPLE/SIMPLE-Funcons-Index/index.html

[MiniJava]: MiniJava/MiniJava-cbs/MiniJava/MiniJava-Funcons-Index/index.html

[SL]: SL/SL-cbs/SL/SL-Funcons-Index/index.html

[OC-L]: OCaml-Light/OC-L-cbs/OC-L/OC-L-Funcons-Index/index.html
