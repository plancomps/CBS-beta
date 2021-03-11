---
layout: default
title: "OC-L-02-Values"
math: katex
parent: OC-L
ancestor: Languages-beta

---

[Languages-beta] : [OC-L-02-Values.cbs]

$$\KEY{Language} \STRING{OCaml Light}$$

# $$\SECT{2}$$ Values
           



  The comments below are excerpts from section 7.2 of [The OCaml System,
  release 4.06](https://caml.inria.fr/pub/docs/manual-ocaml-4.06/values.html).


$$\relax\begin{aligned}\relax
  \KEY{Type} ~  
  & \NAMEDECL{implemented-values}  
  \leadsto \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null-type} \mid \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{booleans} \mid \NAMEREF{implemented-integers} \mid \NAMEREF{implemented-floats} \mid \NAMEREF{implemented-characters} \mid \NAMEREF{implemented-strings} \mid \NAMEREF{implemented-tuples} \mid \NAMEREF{implemented-lists} \mid \NAMEREF{implemented-records} \mid \NAMEREF{implemented-references} \mid \NAMEREF{implemented-vectors} \mid \NAMEREF{implemented-variants} \mid \NAMEREF{implemented-functions}
\end{aligned}$$

## Base values
               


### Integer numbers
               



  Integer values are integer numbers from -2^{30} to 2^{30}-1, 
  that is -1073741824 to 1073741823. The implementation may support a wider
  range of integer values (...).


$$\relax\begin{aligned}\relax
  \KEY{Type} ~  
  & \NAMEDECL{implemented-integers}  
  \leadsto \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integers}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{implemented-integer}(\VAR{I} : \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{integers}) :  \TO \NAMEREF{implemented-integers} \\
  & \quad \leadsto \VAR{I}
\\
  \KEY{Assert} ~ 
  & \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{is-equal}
      (\NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Null}{null},   
       \NAMEREF{implemented-integer}
         (\VAR{N} : \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{bounded-integers}
                      (-1073741824,     
                       1073741823))) == \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Booleans}{false}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{implemented-integers-width} :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{natural-numbers} \\
  & \quad \leadsto 31
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{implemented-integer-literal}(\VAR{IL} : \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Strings}{strings}) :  \TO \NAMEREF{implemented-integers} \\
  & \quad \leadsto \NAMEREF{implemented-integer} ~
                     \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{decimal-natural}
                       (\VAR{IL})
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{implemented-bit-vector}(\VAR{I} : \NAMEREF{implemented-integers}) :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Bits}{bit-vectors}
                                                                         (\NAMEREF{implemented-integers-width}) \\
  & \quad \leadsto \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Bits}{integer-to-bit-vector}
                     (\VAR{I}, \\&\quad 
                      \NAMEREF{implemented-integers-width})
\end{aligned}$$

### Floating-point numbers
               



  Floating-point values are numbers in floating-point representation. 
  The current implementation uses double-precision floating-point numbers
  conforming to the IEEE 754 standard, with 53 bits of mantissa and
  an exponent ranging from -1022 to 1023.


$$\relax\begin{aligned}\relax
  \KEY{Type} ~  
  & \NAMEDECL{implemented-floats}  
  
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{implemented-floats-format} :  \TO \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Floats}{float-formats} \\
  & \quad \leadsto \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Floats}{binary64}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{implemented-float-literal}(\VAR{FL} : \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Strings}{strings}) :  \TO \NAMEREF{implemented-floats}
\end{aligned}$$

### Characters
               



  Character values are represented as 8-bit integers between 0 and 255.
  Character codes between 0 and 127 are interpreted following the ASCII
  standard. The current implementation interprets character codes between 
  128 and 255 following the ISO 8859-1 standard.


$$\relax\begin{aligned}\relax
  \KEY{Type} ~  
  & \NAMEDECL{implemented-characters} <: \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Characters}{characters} 
  
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Type} ~  
  & \NAMEDECL{implemented-character-points}  
  \leadsto \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{bounded-integers}
             (0,   
              255)
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{implemented-character}(\VAR{C} : \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Characters}{characters}) :  \TO \NAMEREF{implemented-characters}\QUERY \\
  & \quad \leadsto \NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Characters}{ascii-character} ~
                     \\VAR{C}
\end{aligned}$$

### Character strings
               



  String values are finite sequences of characters. The current implementation
  supports strings containing up to 2^24 - 5 characters (16777211 characters);
  (...)


$$\relax\begin{aligned}\relax
  \KEY{Type} ~  
  & \NAMEDECL{implemented-strings} <: \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{lists}
                                                             (\NAMEREF{implemented-characters}) 
  
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{implemented-string}(\VAR{L} : \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{lists}
                                (\NAMEREF{implemented-characters})) :  \TO \NAMEREF{implemented-strings}\QUERY \\
  & \quad \leadsto \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{when-true}
                     (\NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{is-less-or-equal}
                        (\NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sequences}{length} ~
                           \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{list-elements} ~
                             \VAR{L}, \\&\quad \quad 
                         16777211), \\&\quad 
                      \VAR{L})
\end{aligned}$$

## Tuples
               



  Tuples of values are written (v_1, ..., v_n), standing for the n-tuple of
  values v_1 to v_n. The current implementation supports tuples of up to 
  2^22 - 1 elements (4194303 elements).


$$\relax\begin{aligned}\relax
  \KEY{Type} ~  
  & \NAMEDECL{implemented-tuples} <: \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuples}
                                                             (\NAMEREF{implemented-values}\STAR) 
  \leadsto \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuples}
             (\NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values}\STAR)
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{implemented-tuple}(\VAR{T} : \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuples}
                                (\NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values}\STAR)) :  \TO \NAMEREF{implemented-tuples}\QUERY \\
  & \quad \leadsto \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{when-true}
                     (\NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{is-less-or-equal}
                        (\NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sequences}{length} ~
                           \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuple-elements} ~
                             \VAR{T}, \\&\quad \quad 
                         4194303), \\&\quad 
                      \VAR{T})
\end{aligned}$$


  In OCaml Light, the unit value is represented by $$\SHADE{\NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Tuples}{tuple}
           ( ~ )}$$.



  In OCaml Light, lists are written [v_1; ...; v_n], and their values are
  represented by list values in CBS.


$$\relax\begin{aligned}\relax
  \KEY{Type} ~  
  & \NAMEDECL{implemented-lists} <: \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{lists}
                                                             (\NAMEREF{implemented-values}) 
  \leadsto \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{lists}
             (\NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values})
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{implemented-list}(\VAR{L} : \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{lists}
                                (\NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values})) :  \TO \NAMEREF{implemented-lists}\QUERY \\
  & \quad \leadsto \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{when-true}
                     (\NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{is-less-or-equal}
                        (\NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sequences}{length} ~
                           \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Lists}{list-elements} ~
                             \VAR{L}, \\&\quad \quad 
                         4194303), \\&\quad 
                      \VAR{L})
\end{aligned}$$

## Records
               



  Record values are labeled tuples of values. The record value written 
  { field_1 = v_1; ...; field_n = v_n } associates the value v_i to the
  record field field_i, for i = 1 ... n. The current implementation supports
  records with up to 2^22 - 1 fields (4194303 fields).


$$\relax\begin{aligned}\relax
  \KEY{Type} ~  
  & \NAMEDECL{implemented-records} <: \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Records}{records}
                                                             (\NAMEREF{implemented-values}) 
  \leadsto \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Records}{records}
             (\NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values})
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{implemented-record}(\VAR{R} : \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Records}{records}
                                (\NAMEREF{implemented-values})) :  \TO \NAMEREF{implemented-records}\QUERY \\
  & \quad \leadsto \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{when-true}
                     (\NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{is-less-or-equal}
                        (\NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sequences}{length} ~
                           \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Maps}{map-elements} ~
                             \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Records}{record-map} ~
                               \VAR{R}, \\&\quad \quad 
                         4194303), \\&\quad 
                      \VAR{R})
\end{aligned}$$


  In OCaml Light, records are non-mutable, and references are represented by
  mutable variables.


$$\relax\begin{aligned}\relax
  \KEY{Type} ~  
  & \NAMEDECL{implemented-references}  
  \leadsto \NAMEHYPER{../../../../../Funcons-beta/Computations/Normal}{Storing}{variables}
\end{aligned}$$

## Arrays
               



  Arrays are finite, variable-sized sequences of values of the same type. 
  The current implementation supports arrays containing up to 2^22 - 1 elements
  (4194303 elements) unless the elements are floating-point numbers (2097151
  elements in this case); (...)


$$\relax\begin{aligned}\relax
  \KEY{Type} ~  
  & \NAMEDECL{implemented-vectors} <: \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Vectors}{vectors}
                                                             (\NAMEREF{implemented-values}) 
  \leadsto \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Vectors}{vectors}
             (\NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values})
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{implemented-vector}(\VAR{V} : \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Vectors}{vectors}
                                (\NAMEREF{implemented-values})) :  \TO \NAMEREF{implemented-vectors}\QUERY \\
  & \quad \leadsto \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{when-true}
                     (\NAMEHYPER{../../../../../Funcons-beta/Values/Primitive}{Integers}{is-less-or-equal}
                        (\NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Sequences}{length} ~
                           \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Vectors}{vector-elements} ~
                             \VAR{V}, \\&\quad \quad 
                         4194303), \\&\quad 
                      \VAR{V})
\end{aligned}$$

## Variant values
               



  Variant values are either a constant constructor, or a pair of a non-constant
  constructor and a value. The former case is written constr; the latter case
  is written (v1, ..., vn), where the vi are said to be the arguments of the 
  non-constant constructor constr. The parentheses may be omitted if there is
  only one argument. (...) The current implementation limits each variant type
  to have at most 246 non-constant constructors and 2^30-1 constant constructors.


$$\relax\begin{aligned}\relax
  \KEY{Type} ~  
  & \NAMEDECL{implemented-variants} <: \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Variants}{variants}
                                                             (\NAMEREF{implemented-values}) 
  \leadsto \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Variants}{variants}
             (\NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values})
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{implemented-variant}(\VAR{V} : \NAMEHYPER{../../../../../Funcons-beta/Values/Composite}{Variants}{variants}
                                (\NAMEREF{implemented-values})) :  \TO \NAMEREF{implemented-variants} \\
  & \quad \leadsto \VAR{V}
\end{aligned}$$

## Functions
               



  Functional values are mappings from values to values.


$$\relax\begin{aligned}\relax
  \KEY{Type} ~  
  & \NAMEDECL{implemented-functions} <: \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Functions}{functions}
                                                             (\NAMEREF{implemented-values}, \\&\quad 
                                                              \NAMEREF{implemented-values}) 
  \leadsto \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Functions}{functions}
             (\NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values},   
              \NAMEHYPER{../../../../../Funcons-beta/Values}{Value-Types}{values})
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{implemented-function}(\VAR{F} : \NAMEHYPER{../../../../../Funcons-beta/Values/Abstraction}{Functions}{functions}
                                (\NAMEREF{implemented-values},   
                                 \NAMEREF{implemented-values})) :  \TO \NAMEREF{implemented-functions} \\
  & \quad \leadsto \VAR{F}
\end{aligned}$$



[Funcons-beta]: /CBS-beta/math/Funcons-beta
  "FUNCONS-BETA"
[Unstable-Funcons-beta]: /CBS-beta/math/Unstable-Funcons-beta
  "UNSTABLE-FUNCONS-BETA"
[Languages-beta]: /CBS-beta/math/Languages-beta
  "LANGUAGES-BETA"
[Unstable-Languages-beta]: /CBS-beta/math/Unstable-Languages-beta
  "UNSTABLE-LANGUAGES-BETA"
[CBS-beta]: /CBS-beta 
  "CBS-BETA"


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[OC-L-02-Values.cbs]: /CBS-beta/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-02-Values/OC-L-02-Values.cbs
  "CBS SOURCE FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20OC-L/OC-L-02-Values/OC-L-02-Values.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
