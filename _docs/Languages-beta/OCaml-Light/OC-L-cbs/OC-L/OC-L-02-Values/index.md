---
title: "OC-L-02-Values"
parent: OC-L
ancestor: Languages-beta

---

[Languages-beta] : [OC-L-02-Values.cbs] \| [PRETTY] \| [PDF]

<details open markdown="block">
  <summary>
    Outline
  </summary>
  {: .text-delta }
- TOC
{:toc}
</details>

----
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Language</i> <span id="Language_OCaml Light">"OCaml Light"</span></code></pre></div>
# <span id="SectionNumber_2">2</span> Values


  The comments below are excerpts from section 7.2 of [The OCaml System,
  release 4.06](https://caml.inria.fr/pub/docs/manual-ocaml-4.06/values.html).


// FIX-ME: Allow implementation-dependent variations

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Type</i>
  <span class="name"><span id="Name_implemented-values">implemented-values</span></span>
   ~> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
    | <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_booleans">booleans</a></span>
    | <span class="name"><a href="#Name_implemented-integers">implemented-integers</a></span>
    | <span class="name"><a href="#Name_implemented-floats">implemented-floats</a></span>
    | <span class="name"><a href="#Name_implemented-characters">implemented-characters</a></span>
    | <span class="name"><a href="#Name_implemented-strings">implemented-strings</a></span>
    | <span class="name"><a href="#Name_implemented-tuples">implemented-tuples</a></span>
    | <span class="name"><a href="#Name_implemented-lists">implemented-lists</a></span>
    | <span class="name"><a href="#Name_implemented-records">implemented-records</a></span>
    | <span class="name"><a href="#Name_implemented-references">implemented-references</a></span>
    | <span class="name"><a href="#Name_implemented-vectors">implemented-vectors</a></span>
    | <span class="name"><a href="#Name_implemented-variants">implemented-variants</a></span>
    | <span class="name"><a href="#Name_implemented-functions">implemented-functions</a></span></code></pre></div>

    

## Base values

### Integer numbers

  Integer values are integer numbers from -2^{30} to 2^{30}-1, 
  that is -1073741824 to 1073741823. The implementation may support a wider
  range of integer values (...).

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Type</i>
  <span class="name"><span id="Name_implemented-integers">implemented-integers</span></span> // <: integers
   ~> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integers">integers</a></span></code></pre></div>
 // FIX-ME
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_implemented-integer">implemented-integer</span></span>(<span id="Variable92_I"><i class="var">I</i></span>:<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integers">integers</a></span>) : =><span class="name"><a href="#Name_implemented-integers">implemented-integers</a></span>
    ~> <a href="#Variable92_I"><i class="var">I</i></a> // FIX-ME: Two's complement, modulo 2^31
<i class="keyword">Assert</i>
  <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null">null</a></span>,
    <span class="name"><a href="#Name_implemented-integer">implemented-integer</a></span>(<i class="var">N</i>:<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_bounded-integers">bounded-integers</a></span>(-1073741824,1073741823)))
    == <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_false">false</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_implemented-integers-width">implemented-integers-width</span></span> : =><span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_natural-numbers">natural-numbers</a></span>
   ~> 31</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_implemented-integer-literal">implemented-integer-literal</span></span>(<span id="Variable169_IL"><i class="var">IL</i></span>:<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_strings">strings</a></span>) : => <span class="name"><a href="#Name_implemented-integers">implemented-integers</a></span>
   ~> <span class="name"><a href="#Name_implemented-integer">implemented-integer</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_decimal-natural">decimal-natural</a></span>(<a href="#Variable169_IL"><i class="var">IL</i></a>)</code></pre></div>
 // FIX-ME: allow negatives
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_implemented-bit-vector">implemented-bit-vector</span></span>(<span id="Variable205_I"><i class="var">I</i></span>:<span class="name"><a href="#Name_implemented-integers">implemented-integers</a></span>) : 
   => <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Bits/index.html#Name_bit-vectors">bit-vectors</a></span>(<span class="name"><a href="#Name_implemented-integers-width">implemented-integers-width</a></span>)
   ~> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Bits/index.html#Name_integer-to-bit-vector">integer-to-bit-vector</a></span>(<a href="#Variable205_I"><i class="var">I</i></a>, <span class="name"><a href="#Name_implemented-integers-width">implemented-integers-width</a></span>)</code></pre></div>


### Floating-point numbers

  Floating-point values are numbers in floating-point representation. 
  The current implementation uses double-precision floating-point numbers
  conforming to the IEEE 754 standard, with 53 bits of mantissa and
  an exponent ranging from -1022 to 1023.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Type</i>
  <span class="name"><span id="Name_implemented-floats">implemented-floats</span></span> // ~> floats(implemented-floats-format)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_implemented-floats-format">implemented-floats-format</span></span> : =><span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-formats">float-formats</a></span>
   ~> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_binary64">binary64</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_implemented-float-literal">implemented-float-literal</span></span>(<span id="Variable289_FL"><i class="var">FL</i></span>:<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_strings">strings</a></span>) : =><span class="name"><a href="#Name_implemented-floats">implemented-floats</a></span></code></pre></div>
### Characters

  Character values are represented as 8-bit integers between 0 and 255.
  Character codes between 0 and 127 are interpreted following the ASCII
  standard. The current implementation interprets character codes between 
  128 and 255 following the ISO 8859-1 standard.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Type</i>
  <span class="name"><span id="Name_implemented-characters">implemented-characters</span></span> <: <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Characters/index.html#Name_characters">characters</a></span></code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Type</i>
  <span class="name"><span id="Name_implemented-character-points">implemented-character-points</span></span>
   ~> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_bounded-integers">bounded-integers</a></span>(0,255)</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_implemented-character">implemented-character</span></span>(<span id="Variable360_C"><i class="var">C</i></span>:<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Characters/index.html#Name_characters">characters</a></span>) : =><span class="name"><a href="#Name_implemented-characters">implemented-characters</a></span><sup class="sup">?</sup>
   ~> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Characters/index.html#Name_ascii-character">ascii-character</a></span>[<a href="#Variable360_C"><i class="var">C</i></a>]</code></pre></div>
 // FIX-ME: allow ISO-Latin-1

### Character strings

  String values are finite sequences of characters. The current implementation
  supports strings containing up to 2^24 - 5 characters (16777211 characters);
  (...)

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Type</i>
  <span class="name"><span id="Name_implemented-strings">implemented-strings</span></span> <: <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_lists">lists</a></span>(<span class="name"><a href="#Name_implemented-characters">implemented-characters</a></span>)</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_implemented-string">implemented-string</span></span>(<span id="Variable433_L"><i class="var">L</i></span>:<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_lists">lists</a></span>(<span class="name"><a href="#Name_implemented-characters">implemented-characters</a></span>)) : =><span class="name"><a href="#Name_implemented-strings">implemented-strings</a></span><sup class="sup">?</sup>
    ~> <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_when-true">when-true</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-less-or-equal">is-less-or-equal</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sequences/index.html#Name_length">length</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_list-elements">list-elements</a></span> <a href="#Variable433_L"><i class="var">L</i></a>, 16777211), <a href="#Variable433_L"><i class="var">L</i></a>)</code></pre></div>



## Tuples

  Tuples of values are written (v_1, ..., v_n), standing for the n-tuple of
  values v_1 to v_n. The current implementation supports tuples of up to 
  2^22 - 1 elements (4194303 elements).

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Type</i>
  <span class="name"><span id="Name_implemented-tuples">implemented-tuples</span></span> <: <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuples">tuples</a></span>(<span class="name"><a href="#Name_implemented-values">implemented-values</a></span><sup class="sup">*</sup>)
   ~> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuples">tuples</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>)</code></pre></div>
 // FIX-ME: remove
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_implemented-tuple">implemented-tuple</span></span>(<span id="Variable553_T"><i class="var">T</i></span>:<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuples">tuples</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>)) : =><span class="name"><a href="#Name_implemented-tuples">implemented-tuples</a></span><sup class="sup">?</sup>
    ~> <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_when-true">when-true</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-less-or-equal">is-less-or-equal</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sequences/index.html#Name_length">length</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple-elements">tuple-elements</a></span> <a href="#Variable553_T"><i class="var">T</i></a>, 4194303), <a href="#Variable553_T"><i class="var">T</i></a>)</code></pre></div>



  In OCaml Light, the unit value is represented by <code><span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple">tuple</a></span>( )</code>.



  In OCaml Light, lists are written \[v_1; ...; v_n], and their values are
  represented by list values in CBS.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Type</i>
  <span class="name"><span id="Name_implemented-lists">implemented-lists</span></span> <: <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_lists">lists</a></span>(<span class="name"><a href="#Name_implemented-values">implemented-values</a></span>)
   ~> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_lists">lists</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>)</code></pre></div>
 // FIX-ME: remove
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_implemented-list">implemented-list</span></span>(<span id="Variable672_L"><i class="var">L</i></span>:<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_lists">lists</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>)) : =><span class="name"><a href="#Name_implemented-lists">implemented-lists</a></span><sup class="sup">?</sup>
    ~> <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_when-true">when-true</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-less-or-equal">is-less-or-equal</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sequences/index.html#Name_length">length</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_list-elements">list-elements</a></span> <a href="#Variable672_L"><i class="var">L</i></a>, 4194303), <a href="#Variable672_L"><i class="var">L</i></a>)</code></pre></div>



## Records

  Record values are labeled tuples of values. The record value written 
  { field_1 = v_1; ...; field_n = v_n } associates the value v_i to the
  record field field_i, for i = 1 ... n. The current implementation supports
  records with up to 2^22 - 1 fields (4194303 fields).

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Type</i>
  <span class="name"><span id="Name_implemented-records">implemented-records</span></span> <: <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Records/index.html#Name_records">records</a></span>(<span class="name"><a href="#Name_implemented-values">implemented-values</a></span>)
   ~> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Records/index.html#Name_records">records</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>)</code></pre></div>
 // FIX-ME: remove
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_implemented-record">implemented-record</span></span>(<span id="Variable785_R"><i class="var">R</i></span>:<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Records/index.html#Name_records">records</a></span>(<span class="name"><a href="#Name_implemented-values">implemented-values</a></span>)) : =><span class="name"><a href="#Name_implemented-records">implemented-records</a></span><sup class="sup">?</sup>
    ~> <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_when-true">when-true</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-less-or-equal">is-less-or-equal</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sequences/index.html#Name_length">length</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map-elements">map-elements</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Records/index.html#Name_record-map">record-map</a></span> <a href="#Variable785_R"><i class="var">R</i></a>, 4194303), <a href="#Variable785_R"><i class="var">R</i></a>)</code></pre></div>



  In OCaml Light, records are non-mutable, and references are represented by
  mutable variables.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Type</i>
  <span class="name"><span id="Name_implemented-references">implemented-references</span></span> ~> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_variables">variables</a></span></code></pre></div>

  

## Arrays

  Arrays are finite, variable-sized sequences of values of the same type. 
  The current implementation supports arrays containing up to 2^22 - 1 elements
  (4194303 elements) unless the elements are floating-point numbers (2097151
  elements in this case); (...)

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Type</i>
  <span class="name"><span id="Name_implemented-vectors">implemented-vectors</span></span> <: <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Vectors/index.html#Name_vectors">vectors</a></span>(<span class="name"><a href="#Name_implemented-values">implemented-values</a></span>)
   ~> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Vectors/index.html#Name_vectors">vectors</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>)</code></pre></div>
 // FIX-ME: remove
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_implemented-vector">implemented-vector</span></span>(<span id="Variable914_V"><i class="var">V</i></span>:<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Vectors/index.html#Name_vectors">vectors</a></span>(<span class="name"><a href="#Name_implemented-values">implemented-values</a></span>)) : =><span class="name"><a href="#Name_implemented-vectors">implemented-vectors</a></span><sup class="sup">?</sup>
    ~> <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_when-true">when-true</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-less-or-equal">is-less-or-equal</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sequences/index.html#Name_length">length</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Vectors/index.html#Name_vector-elements">vector-elements</a></span> <a href="#Variable914_V"><i class="var">V</i></a>, 4194303),<a href="#Variable914_V"><i class="var">V</i></a>)</code></pre></div>



## Variant values

  Variant values are either a constant constructor, or a pair of a non-constant
  constructor and a value. The former case is written constr; the latter case
  is written (v1, ..., vn), where the vi are said to be the arguments of the 
  non-constant constructor constr. The parentheses may be omitted if there is
  only one argument. (...) The current implementation limits each variant type
  to have at most 246 non-constant constructors and 2^30-1 constant constructors.


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Type</i>
  <span class="name"><span id="Name_implemented-variants">implemented-variants</span></span> <: <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Variants/index.html#Name_variants">variants</a></span>(<span class="name"><a href="#Name_implemented-values">implemented-values</a></span>)
   ~> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Variants/index.html#Name_variants">variants</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>)</code></pre></div>
 // FIX-ME: remove
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_implemented-variant">implemented-variant</span></span>(<span id="Variable1023_V"><i class="var">V</i></span>:<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Variants/index.html#Name_variants">variants</a></span>(<span class="name"><a href="#Name_implemented-values">implemented-values</a></span>)) : =><span class="name"><a href="#Name_implemented-variants">implemented-variants</a></span>
    ~> <a href="#Variable1023_V"><i class="var">V</i></a></code></pre></div>



## Functions

  Functional values are mappings from values to values.


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Type</i>
  <span class="name"><span id="Name_implemented-functions">implemented-functions</span></span> <: <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_functions">functions</a></span>(<span class="name"><a href="#Name_implemented-values">implemented-values</a></span>, <span class="name"><a href="#Name_implemented-values">implemented-values</a></span>)
   ~> <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_functions">functions</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>, <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>)</code></pre></div>
 // FIX-ME: remove
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_implemented-function">implemented-function</span></span>(<span id="Variable1109_F"><i class="var">F</i></span>:<span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_functions">functions</a></span>(<span class="name"><a href="#Name_implemented-values">implemented-values</a></span>, <span class="name"><a href="#Name_implemented-values">implemented-values</a></span>)) : 
                                                       =><span class="name"><a href="#Name_implemented-functions">implemented-functions</a></span>
    ~> <a href="#Variable1109_F"><i class="var">F</i></a></code></pre></div>



[Funcons-beta]: /CBS-beta/docs/Funcons-beta
  "FUNCONS-BETA"
[Unstable-Funcons-beta]: /CBS-beta/docs/Unstable-Funcons-beta
  "UNSTABLE-FUNCONS-BETA"
[Languages-beta]: /CBS-beta/docs/Languages-beta
  "LANGUAGES-BETA"
[Unstable-Languages-beta]: /CBS-beta/docs/Unstable-Languages-beta
  "UNSTABLE-LANGUAGES-BETA"
[CBS-beta]: /CBS-beta
  "CBS-BETA"
[OC-L-02-Values.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-02-Values/OC-L-02-Values.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-02-Values
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-02-Values
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-02-Values/OC-L-02-Values.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20OC-L/OC-L-02-Values/OC-L-02-Values.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
