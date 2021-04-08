---
title: "OC-L-12-Core-Library"
parent: OC-L
ancestor: Languages-beta

---

[Languages-beta] : [OC-L-12-Core-Library.cbs] \| [PRETTY] \| [PDF]

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
# <span id="SectionNumber_12">12</span> Core library

<div class="highlighter-rouge"><pre class="highlight"><code>[
<i class="keyword">Funcon</i> <span class="name"><a href="#Name_ocaml-light-core-library">ocaml-light-core-library</a></span>
<i class="keyword">Funcon</i> <span class="name"><a href="#Name_ocaml-light-match-failure">ocaml-light-match-failure</a></span>
<i class="keyword">Funcon</i> <span class="name"><a href="#Name_ocaml-light-is-structurally-equal">ocaml-light-is-structurally-equal</a></span>
<i class="keyword">Funcon</i> <span class="name"><a href="#Name_ocaml-light-to-string">ocaml-light-to-string</a></span>
<i class="keyword">Funcon</i> <span class="name"><a href="#Name_ocaml-light-define-and-display">ocaml-light-define-and-display</a></span>
<i class="keyword">Funcon</i> <span class="name"><a href="#Name_ocaml-light-evaluate-and-display">ocaml-light-evaluate-and-display</a></span>
]</code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Meta-variables</i>
  <span id="PartVariable_R"><i class="var">R</i></span>, <span id="PartVariable_S"><i class="var">S</i></span>, <span id="PartVariable_S1"><i class="var">S<sub class="sub">1</sub></i></span>, <span id="PartVariable_S2"><i class="var">S<sub class="sub">2</sub></i></span>, <span id="PartVariable_S3"><i class="var">S<sub class="sub">3</sub></i></span>, <span id="PartVariable_T"><i class="var">T</i></span>, <span id="PartVariable_U"><i class="var">U</i></span> <: <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>
  <span id="PartVariable_S*"><i class="var">S<sup class="sup">*</sup></i></span> <: <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>
  <span id="PartVariable_T+"><i class="var">T<sup class="sup">+</sup></i></span> <: <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span><sup class="sup">+</sup></code></pre></div>


## Abbreviations


  The following funcons take computations <code><i class="var">X</i></code> and return (curried) functions.
  <code><i class="var">X</i></code> refers to a single function argument as <code><span class="name"><a href="#Name_arg">arg</a></span></code>, or to individual arguments
  of a curried function of several arguments as <code><span class="name"><a href="#Name_arg-1">arg-1</a></span></code>, <code><span class="name"><a href="#Name_arg-2">arg-2</a></span></code>, <code><span class="name"><a href="#Name_arg-3">arg-3</a></span></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Auxiliary</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_op-1">op-1</span></span>(<span id="Variable193_X"><i class="var">X</i></span>:<span id="Variable197_S"><i class="var">S</i></span>=><span id="Variable203_T"><i class="var">T</i></span>) : =><span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_functions">functions</a></span>(<span id="Variable219_S"><i class="var">S</i></span>,<span id="Variable224_T"><i class="var">T</i></span>)
    ~> <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_function">function</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Generic/index.html#Name_abstraction">abstraction</a></span> <a href="#Variable193_X"><i class="var">X</i></a></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Auxiliary</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_op-2">op-2</span></span>(<span id="Variable251_X"><i class="var">X</i></span>:<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuples">tuples</a></span>(<span id="Variable257_S1"><i class="var">S<sub class="sub">1</sub></i></span>,<span id="Variable263_S2"><i class="var">S<sub class="sub">2</sub></i></span>)=><span id="Variable276_T"><i class="var">T</i></span>) : =><span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_functions">functions</a></span>(<span id="Variable293_S1"><i class="var">S<sub class="sub">1</sub></i></span>, <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_functions">functions</a></span>(<span id="Variable300_S2"><i class="var">S<sub class="sub">2</sub></i></span>,<span id="Variable305_T"><i class="var">T</i></span>))
    ~> <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_curry">curry</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_function">function</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Generic/index.html#Name_abstraction">abstraction</a></span> <a href="#Variable251_X"><i class="var">X</i></a></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Auxiliary</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_op-3">op-3</span></span>(<span id="Variable341_X"><i class="var">X</i></span>:<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuples">tuples</a></span>(<span id="Variable347_S1"><i class="var">S<sub class="sub">1</sub></i></span>,<span id="Variable353_S2"><i class="var">S<sub class="sub">2</sub></i></span>,<span id="Variable359_S3"><i class="var">S<sub class="sub">3</sub></i></span>)=><span id="Variable373_T"><i class="var">T</i></span>) : =><span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_functions">functions</a></span>(<span id="Variable390_S1"><i class="var">S<sub class="sub">1</sub></i></span>, <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_functions">functions</a></span>(<span id="Variable397_S2"><i class="var">S<sub class="sub">2</sub></i></span>, <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_functions">functions</a></span>(<span id="Variable404_S3"><i class="var">S<sub class="sub">3</sub></i></span>, <span id="Variable409_T"><i class="var">T</i></span>)))
   ~> <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_function">function</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Generic/index.html#Name_abstraction">abstraction</a></span>(
        <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_curry">curry</a></span> <span class="name"><a href="#Name_partial-apply-first">partial-apply-first</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_function">function</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Generic/index.html#Name_abstraction">abstraction</a></span> <a href="#Variable341_X"><i class="var">X</i></a>, <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>))</code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Auxiliary</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_partial-apply-first">partial-apply-first</span></span>(<span id="Variable471_F"><i class="var">F</i></span>:<span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_functions">functions</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuples">tuples</a></span>(<span id="Variable477_R"><i class="var">R</i></span>,<span id="Variable482_S"><i class="var">S</i></span>,<span id="Variable488_T+"><i class="var">T<sup class="sup">+</sup></i></span>),<span id="Variable501_U"><i class="var">U</i></span>), <span id="Variable516_V"><i class="var">V</i></span>:<span id="Variable520_R"><i class="var">R</i></span>) :
    =><span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_functions">functions</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuples">tuples</a></span>(<span id="Variable537_S"><i class="var">S</i></span>,<span id="Variable543_T+"><i class="var">T<sup class="sup">+</sup></i></span>),<span id="Variable555_U"><i class="var">U</i></span>)
    ~> <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_function">function</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Generic/index.html#Name_abstraction">abstraction</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_apply">apply</a></span>(<a href="#Variable471_F"><i class="var">F</i></a>, <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple">tuple</a></span>(<a href="#Variable516_V"><i class="var">V</i></a>, <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple-elements">tuple-elements</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>)))</code></pre></div>


  <code><span class="name"><a href="#Name_partial-apply-first">partial-apply-first</a></span>(<i class="var">F</i>, <i class="var">V</i>)</code> provides <code><i class="var">V</i></code> as the first argument to a function
  expecting a tuple of 3 or more arguments, returning a function expecting
  a tuple of one fewer arguments.


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Auxiliary</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_arg">arg</span></span> : <span id="Variable658_T"><i class="var">T</i></span>=><span id="Variable664_T"><i class="var">T</i></span>
    ~> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Auxiliary</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_arg-1">arg-1</span></span> : <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuples">tuples</a></span>(<span id="Variable680_S1"><i class="var">S<sub class="sub">1</sub></i></span>,<span id="Variable686_S*"><i class="var">S<sup class="sup">*</sup></i></span>)=><span id="Variable700_S1"><i class="var">S<sub class="sub">1</sub></i></span>
    ~> <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sequences/index.html#Name_index">index</a></span>(1, <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple-elements">tuple-elements</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>)</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Auxiliary</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_arg-2">arg-2</span></span> : <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuples">tuples</a></span>(<span id="Variable730_S1"><i class="var">S<sub class="sub">1</sub></i></span>,<span id="Variable736_S2"><i class="var">S<sub class="sub">2</sub></i></span>,<span id="Variable742_S*"><i class="var">S<sup class="sup">*</sup></i></span>)=><span id="Variable757_S2"><i class="var">S<sub class="sub">2</sub></i></span>
    ~> <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sequences/index.html#Name_index">index</a></span>(2, <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple-elements">tuple-elements</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>)</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Auxiliary</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_arg-3">arg-3</span></span> : <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuples">tuples</a></span>(<span id="Variable787_S1"><i class="var">S<sub class="sub">1</sub></i></span>,<span id="Variable793_S2"><i class="var">S<sub class="sub">2</sub></i></span>,<span id="Variable799_S3"><i class="var">S<sub class="sub">3</sub></i></span>,<span id="Variable805_S*"><i class="var">S<sup class="sup">*</sup></i></span>)=><span id="Variable821_S3"><i class="var">S<sub class="sub">3</sub></i></span>
    ~> <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sequences/index.html#Name_index">index</a></span>(3, <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple-elements">tuple-elements</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>)</code></pre></div>



## Library


  The <code><span class="name"><a href="#Name_ocaml-light-core-library">ocaml-light-core-library</a></span></code> environment maps most of the names defined
  in OCaml Module Pervasives (the initially opened module) to funcon terms.
  See <https://caml.inria.fr/pub/docs/manual-ocaml-4.06/core.html> for further
  details and comments.
  
  It also maps some other names defined in the OCaml Standard Libarary to
  funcon terms (to support tests using them without opening those modules).



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_ocaml-light-core-library">ocaml-light-core-library</span></span> : =><span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_environments">environments</a></span> 
   ~>
   {// Predefined exceptions
    "Match_failure" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Variants/index.html#Name_variant">variant</a></span>("Match_failure", <span class="name"><a href="#Name_arg">arg</a></span>)),
    "Invalid_argument" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Variants/index.html#Name_variant">variant</a></span>("Invalid_argument", <span class="name"><a href="#Name_arg">arg</a></span>)),
    "Division_by_zero" |->
      <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Variants/index.html#Name_variant">variant</a></span>("Division_by_zero", <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple">tuple</a></span>( )),

    // Exceptions   
    "raise" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Throwing/index.html#Name_throw">throw</a></span>(<span class="name"><a href="#Name_arg">arg</a></span>)),

    //Comparisons
    "(=)" |->
      <span class="name"><a href="#Name_op-2">op-2</a></span>(<span class="name"><a href="#Name_ocaml-light-is-structurally-equal">ocaml-light-is-structurally-equal</a></span>(<span class="name"><a href="#Name_arg-1">arg-1</a></span>, <span class="name"><a href="#Name_arg-2">arg-2</a></span>)),
    "(&lt;&gt;)" |->
      <span class="name"><a href="#Name_op-2">op-2</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_not">not</a></span>(<span class="name"><a href="#Name_ocaml-light-is-structurally-equal">ocaml-light-is-structurally-equal</a></span>(<span class="name"><a href="#Name_arg-1">arg-1</a></span>, <span class="name"><a href="#Name_arg-2">arg-2</a></span>))),
    "(&lt;)" |->
      <span class="name"><a href="#Name_op-2">op-2</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-less">is-less</a></span>(<span class="name"><a href="#Name_arg-1">arg-1</a></span>, <span class="name"><a href="#Name_arg-2">arg-2</a></span>)),
    "(&gt;)" |->
      <span class="name"><a href="#Name_op-2">op-2</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-greater">is-greater</a></span>(<span class="name"><a href="#Name_arg-1">arg-1</a></span>, <span class="name"><a href="#Name_arg-2">arg-2</a></span>)),
    "(&lt;=)" |->
      <span class="name"><a href="#Name_op-2">op-2</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-less-or-equal">is-less-or-equal</a></span>(<span class="name"><a href="#Name_arg-1">arg-1</a></span>, <span class="name"><a href="#Name_arg-2">arg-2</a></span>)),
    "(&gt;=)" |->
      <span class="name"><a href="#Name_op-2">op-2</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-greater-or-equal">is-greater-or-equal</a></span>(<span class="name"><a href="#Name_arg-1">arg-1</a></span>, <span class="name"><a href="#Name_arg-2">arg-2</a></span>)),
    "min" |->
      <span class="name"><a href="#Name_op-2">op-2</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-true-else">if-true-else</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-less">is-less</a></span>(<span class="name"><a href="#Name_arg-1">arg-1</a></span>, <span class="name"><a href="#Name_arg-2">arg-2</a></span>), <span class="name"><a href="#Name_arg-1">arg-1</a></span>, <span class="name"><a href="#Name_arg-2">arg-2</a></span>)),
    "max" |->
      <span class="name"><a href="#Name_op-2">op-2</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-true-else">if-true-else</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-greater">is-greater</a></span>(<span class="name"><a href="#Name_arg-1">arg-1</a></span>, <span class="name"><a href="#Name_arg-2">arg-2</a></span>), <span class="name"><a href="#Name_arg-1">arg-1</a></span>, <span class="name"><a href="#Name_arg-2">arg-2</a></span>)),
    "(==)" |->
      <span class="name"><a href="#Name_op-2">op-2</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-true-else">if-true-else</a></span>(
        <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_and">and</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-in-type">is-in-type</a></span>(<span class="name"><a href="#Name_arg-1">arg-1</a></span>, <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_ground-values">ground-values</a></span>), <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-in-type">is-in-type</a></span>(<span class="name"><a href="#Name_arg-2">arg-2</a></span>, <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_ground-values">ground-values</a></span>)),
        <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>(<span class="name"><a href="#Name_arg-1">arg-1</a></span>, <span class="name"><a href="#Name_arg-2">arg-2</a></span>),
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Throwing/index.html#Name_throw">throw</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Variants/index.html#Name_variant">variant</a></span>("Invalid_argument", "equal: functional value")))),
    "(!=)" |->
      <span class="name"><a href="#Name_op-2">op-2</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-true-else">if-true-else</a></span>(
        <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_and">and</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-in-type">is-in-type</a></span>(<span class="name"><a href="#Name_arg-1">arg-1</a></span>, <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_ground-values">ground-values</a></span>), <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-in-type">is-in-type</a></span>(<span class="name"><a href="#Name_arg-2">arg-2</a></span>, <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_ground-values">ground-values</a></span>)),
        <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_not">not</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>(<span class="name"><a href="#Name_arg-1">arg-1</a></span>, <span class="name"><a href="#Name_arg-2">arg-2</a></span>),
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Throwing/index.html#Name_throw">throw</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Variants/index.html#Name_variant">variant</a></span>("Invalid_argument", "equal: functional value")))),
 
    // Boolean operations (excluding lazy conditionals)
    "not" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_not">not</a></span>(<span class="name"><a href="#Name_arg">arg</a></span>)),

    // Integer arithmetic
    "(~-)" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-integer">implemented-integer</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-negate">integer-negate</a></span>(<span class="name"><a href="#Name_arg">arg</a></span>)),
    "(~+)" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-integer">implemented-integer</a></span> <span class="name"><a href="#Name_arg">arg</a></span>),
    "succ" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-integer">implemented-integer</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-add">integer-add</a></span>(<span class="name"><a href="#Name_arg">arg</a></span>, 1)),
    "pred" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-integer">implemented-integer</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-subtract">integer-subtract</a></span>(<span class="name"><a href="#Name_arg">arg</a></span>, 1)),
    "(+)" |->
      <span class="name"><a href="#Name_op-2">op-2</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-integer">implemented-integer</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-add">integer-add</a></span>(<span class="name"><a href="#Name_arg-1">arg-1</a></span>, <span class="name"><a href="#Name_arg-2">arg-2</a></span>)),
    "(-)" |->
      <span class="name"><a href="#Name_op-2">op-2</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-integer">implemented-integer</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-subtract">integer-subtract</a></span>(<span class="name"><a href="#Name_arg-1">arg-1</a></span>, <span class="name"><a href="#Name_arg-2">arg-2</a></span>)),
    "(*)" |->
      <span class="name"><a href="#Name_op-2">op-2</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-integer">implemented-integer</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-multiply">integer-multiply</a></span>(<span class="name"><a href="#Name_arg-1">arg-1</a></span>, <span class="name"><a href="#Name_arg-2">arg-2</a></span>)),
    "(/)" |->
      <span class="name"><a href="#Name_op-2">op-2</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-integer">implemented-integer</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-true-else">if-true-else</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>(<span class="name"><a href="#Name_arg-2">arg-2</a></span>, 0),
                    <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Throwing/index.html#Name_throw">throw</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Variants/index.html#Name_variant">variant</a></span>("Division_by_zero", <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple">tuple</a></span>( ))),
                    <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-divide">integer-divide</a></span>(<span class="name"><a href="#Name_arg-1">arg-1</a></span>, <span class="name"><a href="#Name_arg-2">arg-2</a></span>))),
    "(mod)" |->
      <span class="name"><a href="#Name_op-2">op-2</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-integer">implemented-integer</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-modulo">integer-modulo</a></span>(<span class="name"><a href="#Name_arg-1">arg-1</a></span>, <span class="name"><a href="#Name_arg-2">arg-2</a></span>)),
    "abs" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-integer">implemented-integer</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integer-absolute-value">integer-absolute-value</a></span>(<span class="name"><a href="#Name_arg">arg</a></span>)),
    "max_int" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Bits/index.html#Name_signed-bit-vector-maximum">signed-bit-vector-maximum</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-integers-width">implemented-integers-width</a></span>)),
    "min_int" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Bits/index.html#Name_signed-bit-vector-minimum">signed-bit-vector-minimum</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-integers-width">implemented-integers-width</a></span>)),

    // Bitwise operations
    "(land)" |->
      <span class="name"><a href="#Name_op-2">op-2</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Bits/index.html#Name_bit-vector-to-integer">bit-vector-to-integer</a></span>
        <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Bits/index.html#Name_bit-vector-and">bit-vector-and</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-bit-vector">implemented-bit-vector</a></span> <span class="name"><a href="#Name_arg-1">arg-1</a></span>, 
          <span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-bit-vector">implemented-bit-vector</a></span> <span class="name"><a href="#Name_arg-2">arg-2</a></span>)),
    "(lor)" |->
      <span class="name"><a href="#Name_op-2">op-2</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Bits/index.html#Name_bit-vector-to-integer">bit-vector-to-integer</a></span>
        <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Bits/index.html#Name_bit-vector-or">bit-vector-or</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-bit-vector">implemented-bit-vector</a></span> <span class="name"><a href="#Name_arg-1">arg-1</a></span>, 
          <span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-bit-vector">implemented-bit-vector</a></span> <span class="name"><a href="#Name_arg-2">arg-2</a></span>)),
    "(lxor)" |->
      <span class="name"><a href="#Name_op-2">op-2</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Bits/index.html#Name_bit-vector-to-integer">bit-vector-to-integer</a></span>
        <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Bits/index.html#Name_bit-vector-xor">bit-vector-xor</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-bit-vector">implemented-bit-vector</a></span> <span class="name"><a href="#Name_arg-1">arg-1</a></span>, 
          <span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-bit-vector">implemented-bit-vector</a></span> <span class="name"><a href="#Name_arg-2">arg-2</a></span>)),
    "lnot" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Bits/index.html#Name_bit-vector-to-integer">bit-vector-to-integer</a></span>
        <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Bits/index.html#Name_bit-vector-not">bit-vector-not</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-bit-vector">implemented-bit-vector</a></span> <span class="name"><a href="#Name_arg">arg</a></span>)),
    "(lsl)" |->
      <span class="name"><a href="#Name_op-2">op-2</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Bits/index.html#Name_bit-vector-to-integer">bit-vector-to-integer</a></span>
        <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Bits/index.html#Name_bit-vector-shift-left">bit-vector-shift-left</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-bit-vector">implemented-bit-vector</a></span> <span class="name"><a href="#Name_arg-1">arg-1</a></span>, <span class="name"><a href="#Name_arg-2">arg-2</a></span>)),
    "(lsr)" |->
      <span class="name"><a href="#Name_op-2">op-2</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Bits/index.html#Name_bit-vector-to-integer">bit-vector-to-integer</a></span>
        <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Bits/index.html#Name_bit-vector-logical-shift-right">bit-vector-logical-shift-right</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-bit-vector">implemented-bit-vector</a></span> <span class="name"><a href="#Name_arg-1">arg-1</a></span>, <span class="name"><a href="#Name_arg-2">arg-2</a></span>)),
    "(asr)" |->
      <span class="name"><a href="#Name_op-2">op-2</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Bits/index.html#Name_bit-vector-to-integer">bit-vector-to-integer</a></span>
        <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Bits/index.html#Name_bit-vector-arithmetic-shift-right">bit-vector-arithmetic-shift-right</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-bit-vector">implemented-bit-vector</a></span> <span class="name"><a href="#Name_arg-1">arg-1</a></span>, <span class="name"><a href="#Name_arg-2">arg-2</a></span>)),

    // Floating-point arithmetic
    "(~-.)" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-negate">float-negate</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-floats-format">implemented-floats-format</a></span>, <span class="name"><a href="#Name_arg">arg</a></span>)),
    "(~+.)" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="#Name_arg">arg</a></span>),
    "(+.)" |->
      <span class="name"><a href="#Name_op-2">op-2</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-add">float-add</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-floats-format">implemented-floats-format</a></span>, <span class="name"><a href="#Name_arg-1">arg-1</a></span>, <span class="name"><a href="#Name_arg-2">arg-2</a></span>)),
    "(-.)" |->
      <span class="name"><a href="#Name_op-2">op-2</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-subtract">float-subtract</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-floats-format">implemented-floats-format</a></span>, <span class="name"><a href="#Name_arg-1">arg-1</a></span>, <span class="name"><a href="#Name_arg-2">arg-2</a></span>)),
    "(*.)" |->
      <span class="name"><a href="#Name_op-2">op-2</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-multiply">float-multiply</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-floats-format">implemented-floats-format</a></span>, <span class="name"><a href="#Name_arg-1">arg-1</a></span>, <span class="name"><a href="#Name_arg-2">arg-2</a></span>)),
    "(/.)" |->
      <span class="name"><a href="#Name_op-2">op-2</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-divide">float-divide</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-floats-format">implemented-floats-format</a></span>, <span class="name"><a href="#Name_arg-1">arg-1</a></span>, <span class="name"><a href="#Name_arg-2">arg-2</a></span>)),
    "(**)" |->
      <span class="name"><a href="#Name_op-2">op-2</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-float-power">float-float-power</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-floats-format">implemented-floats-format</a></span>, <span class="name"><a href="#Name_arg-1">arg-1</a></span>, <span class="name"><a href="#Name_arg-2">arg-2</a></span>)),
    "sqrt" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-sqrt">float-sqrt</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-floats-format">implemented-floats-format</a></span>, <span class="name"><a href="#Name_arg">arg</a></span>)),
    "exp" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-exp">float-exp</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-floats-format">implemented-floats-format</a></span>, <span class="name"><a href="#Name_arg">arg</a></span>)),
    "log" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-log">float-log</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-floats-format">implemented-floats-format</a></span>, <span class="name"><a href="#Name_arg">arg</a></span>)),
    "log10" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-log10">float-log10</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-floats-format">implemented-floats-format</a></span>, <span class="name"><a href="#Name_arg">arg</a></span>)),
    "cos" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-cos">float-cos</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-floats-format">implemented-floats-format</a></span>, <span class="name"><a href="#Name_arg">arg</a></span>)),
    "sin" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-sin">float-sin</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-floats-format">implemented-floats-format</a></span>, <span class="name"><a href="#Name_arg">arg</a></span>)),
    "tan" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-tan">float-tan</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-floats-format">implemented-floats-format</a></span>, <span class="name"><a href="#Name_arg">arg</a></span>)),
    "acos" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-acos">float-acos</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-floats-format">implemented-floats-format</a></span>, <span class="name"><a href="#Name_arg">arg</a></span>)),
    "asin" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-asin">float-asin</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-floats-format">implemented-floats-format</a></span>, <span class="name"><a href="#Name_arg">arg</a></span>)),
    "atan" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-atan">float-atan</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-floats-format">implemented-floats-format</a></span>, <span class="name"><a href="#Name_arg">arg</a></span>)),
    "atan2" |->
      <span class="name"><a href="#Name_op-2">op-2</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-atan2">float-atan2</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-floats-format">implemented-floats-format</a></span>, <span class="name"><a href="#Name_arg-1">arg-1</a></span>, <span class="name"><a href="#Name_arg-2">arg-2</a></span>)),
    "cosh" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-cosh">float-cosh</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-floats-format">implemented-floats-format</a></span>, <span class="name"><a href="#Name_arg">arg</a></span>)),
    "sinh" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-sinh">float-sinh</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-floats-format">implemented-floats-format</a></span>, <span class="name"><a href="#Name_arg">arg</a></span>)),
    "tanh" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-tanh">float-tanh</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-floats-format">implemented-floats-format</a></span>, <span class="name"><a href="#Name_arg">arg</a></span>)),
    "ceil" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-integer">implemented-integer</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-ceiling">float-ceiling</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-floats-format">implemented-floats-format</a></span>, <span class="name"><a href="#Name_arg">arg</a></span>)),
    "floor" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-integer">implemented-integer</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-floor">float-floor</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-floats-format">implemented-floats-format</a></span>, <span class="name"><a href="#Name_arg">arg</a></span>)),
    "abs_float" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-absolute-value">float-absolute-value</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-floats-format">implemented-floats-format</a></span>, <span class="name"><a href="#Name_arg">arg</a></span>)),
    "mod_float" |->
      <span class="name"><a href="#Name_op-2">op-2</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-remainder">float-remainder</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-floats-format">implemented-floats-format</a></span>, <span class="name"><a href="#Name_arg-1">arg-1</a></span>, <span class="name"><a href="#Name_arg-2">arg-2</a></span>)),
    "int_of_float" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-integer">implemented-integer</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Floats/index.html#Name_float-truncate">float-truncate</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-floats-format">implemented-floats-format</a></span>, <span class="name"><a href="#Name_arg">arg</a></span>)),
    "float_of_int" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-float-literal">implemented-float-literal</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_string-append">string-append</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_to-string">to-string</a></span>(<span class="name"><a href="#Name_arg">arg</a></span>), ".0"))),

    // String operations
    "(^)" |->
      <span class="name"><a href="#Name_op-2">op-2</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_string-append">string-append</a></span>(<span class="name"><a href="#Name_arg-1">arg-1</a></span>, <span class="name"><a href="#Name_arg-2">arg-2</a></span>)),

    // String conversion operations
    "string_of_int" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_to-string">to-string</a></span>(<span class="name"><a href="#Name_arg">arg</a></span>)),
    "int_of_string" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-integer">implemented-integer</a></span> <span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-integer-literal">implemented-integer-literal</a></span>(<span class="name"><a href="#Name_arg">arg</a></span>)),
    "string_of_float" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_to-string">to-string</a></span>(<span class="name"><a href="#Name_arg">arg</a></span>)),
    "float_of_string" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-float-literal">implemented-float-literal</a></span>(<span class="name"><a href="#Name_arg">arg</a></span>)), 

    // List operations
    "(@)" |->
      <span class="name"><a href="#Name_op-2">op-2</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_list-append">list-append</a></span>(<span class="name"><a href="#Name_arg-1">arg-1</a></span>, <span class="name"><a href="#Name_arg-2">arg-2</a></span>)),

    // Input/output
    //   Output functions on standard output
    "print_char" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Interacting/index.html#Name_print">print</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_to-string">to-string</a></span>(<span class="name"><a href="#Name_arg">arg</a></span>))),
    "print_string" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Interacting/index.html#Name_print">print</a></span>(<span class="name"><a href="#Name_arg">arg</a></span>)),
    "print_int" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Interacting/index.html#Name_print">print</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_to-string">to-string</a></span>(<span class="name"><a href="#Name_arg">arg</a></span>))),
    "print_float" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Interacting/index.html#Name_print">print</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_to-string">to-string</a></span>(<span class="name"><a href="#Name_arg">arg</a></span>))),
    "print_newline" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Interacting/index.html#Name_print">print</a></span> "\n"),
    //   Input functions on standard input
    "read_line" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Interacting/index.html#Name_read">read</a></span>),
    "read_int" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-integer-literal">implemented-integer-literal</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Interacting/index.html#Name_read">read</a></span>)),
    "read_float" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-float-literal">implemented-float-literal</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Interacting/index.html#Name_read">read</a></span>)),

    // References (not represented as mutable records)
    "ref" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_allocate-initialised-variable">allocate-initialised-variable</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-values">implemented-values</a></span>, <span class="name"><a href="#Name_arg">arg</a></span>)),
    "(!)" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span>(<span class="name"><a href="#Name_arg">arg</a></span>)),
    "(:=)" |->
      <span class="name"><a href="#Name_op-2">op-2</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<span class="name"><a href="#Name_arg-1">arg-1</a></span>, <span class="name"><a href="#Name_arg-2">arg-2</a></span>)),

    // Module List
    "length" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-integer">implemented-integer</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_list-length">list-length</a></span>(<span class="name"><a href="#Name_arg">arg</a></span>)),
    "cons" |->
      <span class="name"><a href="#Name_op-2">op-2</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_cons">cons</a></span>(<span class="name"><a href="#Name_arg-1">arg-1</a></span>, <span class="name"><a href="#Name_arg-2">arg-2</a></span>)),
    "hd" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_else">else</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_head">head</a></span>(<span class="name"><a href="#Name_arg">arg</a></span>), <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Throwing/index.html#Name_throw">throw</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Variants/index.html#Name_variant">variant</a></span>("Failure", "hd")))),
    "tl" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_else">else</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_tail">tail</a></span>(<span class="name"><a href="#Name_arg">arg</a></span>), <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Throwing/index.html#Name_throw">throw</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Variants/index.html#Name_variant">variant</a></span>("Failure", "tl")))),
    "rev" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_list">list</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sequences/index.html#Name_reverse">reverse</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Lists/index.html#Name_list-elements">list-elements</a></span>(<span class="name"><a href="#Name_arg">arg</a></span>)))),
    
    // Module Array
    "array_length" |->
      <span class="name"><a href="#Name_op-1">op-1</a></span>(<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-integer">implemented-integer</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sequences/index.html#Name_length">length</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Vectors/index.html#Name_vector-elements">vector-elements</a></span>(<span class="name"><a href="#Name_arg">arg</a></span>))),
    "array_make" |->
      <span class="name"><a href="#Name_op-2">op-2</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-true-else">if-true-else</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_is-greater-or-equal">is-greater-or-equal</a></span>(<span class="name"><a href="#Name_arg-1">arg-1</a></span>, 0),
             <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Vectors/index.html#Name_vector">vector</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_interleave-map">interleave-map</a></span>(
               <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_allocate-initialised-variable">allocate-initialised-variable</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>, <span class="name"><a href="#Name_arg">arg</a></span>),
               <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sequences/index.html#Name_n-of">n-of</a></span>(<span class="name"><a href="#Name_arg-1">arg-1</a></span>, <span class="name"><a href="#Name_arg-2">arg-2</a></span>))),
             <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Throwing/index.html#Name_throw">throw</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Variants/index.html#Name_variant">variant</a></span>("Invalid_argument", "array_make")))),
    "array_append" |->
      <span class="name"><a href="#Name_op-2">op-2</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Vectors/index.html#Name_vector">vector</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Vectors/index.html#Name_vector-elements">vector-elements</a></span>(<span class="name"><a href="#Name_arg-1">arg-1</a></span>), <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Vectors/index.html#Name_vector-elements">vector-elements</a></span>(<span class="name"><a href="#Name_arg-2">arg-2</a></span>))),
    "array_get" |->
      <span class="name"><a href="#Name_op-2">op-2</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_else">else</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sequences/index.html#Name_index">index</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_nat-succ">nat-succ</a></span> <span class="name"><a href="#Name_arg-2">arg-2</a></span>, <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Vectors/index.html#Name_vector-elements">vector-elements</a></span>(<span class="name"><a href="#Name_arg-1">arg-1</a></span>))),
                <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Throwing/index.html#Name_throw">throw</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Variants/index.html#Name_variant">variant</a></span>("Invalid_argument", "array_get")))),
    "array_set" |->
      <span class="name"><a href="#Name_op-3">op-3</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_else">else</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assign">assign</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sequences/index.html#Name_index">index</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_nat-succ">nat-succ</a></span> <span class="name"><a href="#Name_arg-2">arg-2</a></span>, <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Vectors/index.html#Name_vector-elements">vector-elements</a></span>(<span class="name"><a href="#Name_arg-1">arg-1</a></span>)), <span class="name"><a href="#Name_arg-3">arg-3</a></span>),
                <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Throwing/index.html#Name_throw">throw</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Variants/index.html#Name_variant">variant</a></span>("Invalid_argument", "array_set"))))
   }</code></pre></div>



## Language-specific funcons

### Exception values

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_ocaml-light-match-failure">ocaml-light-match-failure</span></span> : =><span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Variants/index.html#Name_variants">variants</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuples">tuples</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_strings">strings</a></span>, <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integers">integers</a></span>, <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integers">integers</a></span>))
    ~> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Variants/index.html#Name_variant">variant</a></span>("Match_failure", <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple">tuple</a></span>("", 0, 0))</code></pre></div>


  <code><span class="name"><a href="#Name_ocaml-light-match-failure">ocaml-light-match-failure</a></span></code> gives a value to be thrown when a match fails.
  The variant value should consist of the source program text, line, and column,
  but these are currently not included in the translation of OCaml Light.


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_ocaml-light-assert-failure">ocaml-light-assert-failure</span></span> : =><span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Variants/index.html#Name_variants">variants</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuples">tuples</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_strings">strings</a></span>, <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integers">integers</a></span>, <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integers">integers</a></span>))
    ~> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Variants/index.html#Name_variant">variant</a></span>("Assert_failure", <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple">tuple</a></span>("", 0, 0))</code></pre></div>


  <code><span class="name"><a href="#Name_ocaml-light-assert-failure">ocaml-light-assert-failure</a></span></code> gives a value to be thrown when an assertion fails.
  The variant value should consist of the source program text, line, and column,
  but these are currently not included in the translation of OCaml Light.


### Structural equality

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_ocaml-light-is-structurally-equal">ocaml-light-is-structurally-equal</span></span>(_:<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-values">implemented-values</a></span>, _:<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-values">implemented-values</a></span>) : 
                                                                       =><span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_booleans">booleans</a></span></code></pre></div>

  <code><span class="name"><a href="#Name_ocaml-light-is-structurally-equal">ocaml-light-is-structurally-equal</a></span>(<i class="var">V<sub class="sub">1</sub></i>, <i class="var">V<sub class="sub">2</sub></i>)</code> is false whenever <code><i class="var">V<sub class="sub">1</sub></i></code> or <code><i class="var">V<sub class="sub">2</sub></i></code> contains a
  function. For vectors, it compares all their respective assigned values.
  It is equality on primitive values, and defined inductively on composite values.


 Unit Type 
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_ocaml-light-is-structurally-equal">ocaml-light-is-structurally-equal</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>, <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>) ~> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_true">true</a></span></code></pre></div>

 Booleans 
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_ocaml-light-is-structurally-equal">ocaml-light-is-structurally-equal</a></span>(<span id="Variable3674_B1"><i class="var">B<sub class="sub">1</sub></i></span>:<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_booleans">booleans</a></span>, <span id="Variable3683_B2"><i class="var">B<sub class="sub">2</sub></i></span>:<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_booleans">booleans</a></span>) ~> <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>(<a href="#Variable3674_B1"><i class="var">B<sub class="sub">1</sub></i></a>,<a href="#Variable3683_B2"><i class="var">B<sub class="sub">2</sub></i></a>)</code></pre></div>

 Integers 
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_ocaml-light-is-structurally-equal">ocaml-light-is-structurally-equal</a></span>(<span id="Variable3729_I1"><i class="var">I<sub class="sub">1</sub></i></span>:<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-integers">implemented-integers</a></span>, <span id="Variable3738_I2"><i class="var">I<sub class="sub">2</sub></i></span>:<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-integers">implemented-integers</a></span>) ~>
    <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>(<a href="#Variable3729_I1"><i class="var">I<sub class="sub">1</sub></i></a>,<a href="#Variable3738_I2"><i class="var">I<sub class="sub">2</sub></i></a>)</code></pre></div>

 Floats 
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_ocaml-light-is-structurally-equal">ocaml-light-is-structurally-equal</a></span>(<span id="Variable3784_F1"><i class="var">F<sub class="sub">1</sub></i></span>:<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-floats">implemented-floats</a></span>, <span id="Variable3793_F2"><i class="var">F<sub class="sub">2</sub></i></span>:<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-floats">implemented-floats</a></span>) ~>
    <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>(<a href="#Variable3784_F1"><i class="var">F<sub class="sub">1</sub></i></a>,<a href="#Variable3793_F2"><i class="var">F<sub class="sub">2</sub></i></a>)</code></pre></div>

 Characters 
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_ocaml-light-is-structurally-equal">ocaml-light-is-structurally-equal</a></span>(<span id="Variable3839_C1"><i class="var">C<sub class="sub">1</sub></i></span>:<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-characters">implemented-characters</a></span>, <span id="Variable3848_C2"><i class="var">C<sub class="sub">2</sub></i></span>:<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-characters">implemented-characters</a></span>) ~>
    <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>(<a href="#Variable3839_C1"><i class="var">C<sub class="sub">1</sub></i></a>,<a href="#Variable3848_C2"><i class="var">C<sub class="sub">2</sub></i></a>)</code></pre></div>

 Strings 
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_ocaml-light-is-structurally-equal">ocaml-light-is-structurally-equal</a></span>(<span id="Variable3894_S1"><i class="var">S<sub class="sub">1</sub></i></span>:<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-strings">implemented-strings</a></span>, <span id="Variable3903_S2"><i class="var">S<sub class="sub">2</sub></i></span>:<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-strings">implemented-strings</a></span>) ~>
    <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>(<a href="#Variable3894_S1"><i class="var">S<sub class="sub">1</sub></i></a>,<a href="#Variable3903_S2"><i class="var">S<sub class="sub">2</sub></i></a>)</code></pre></div>

 Tuples 
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_ocaml-light-is-structurally-equal">ocaml-light-is-structurally-equal</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple">tuple</a></span>(), <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple">tuple</a></span>()) ~> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_true">true</a></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_ocaml-light-is-structurally-equal">ocaml-light-is-structurally-equal</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple">tuple</a></span>(), <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple">tuple</a></span>(<span id="Variable3981_V+"><i class="var">V<sup class="sup">+</sup></i></span>)) ~> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_false">false</a></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_ocaml-light-is-structurally-equal">ocaml-light-is-structurally-equal</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple">tuple</a></span>(<span id="Variable4007_V+"><i class="var">V<sup class="sup">+</sup></i></span>), <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple">tuple</a></span>()) ~> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_false">false</a></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_ocaml-light-is-structurally-equal">ocaml-light-is-structurally-equal</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple">tuple</a></span>(<span id="Variable4038_V"><i class="var">V</i></span>, <span id="Variable4044_V*"><i class="var">V<sup class="sup">*</sup></i></span>), <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple">tuple</a></span>(<span id="Variable4057_W"><i class="var">W</i></span>, <span id="Variable4063_W*"><i class="var">W<sup class="sup">*</sup></i></span>)) ~>
    <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_and">and</a></span>(<span class="name"><a href="#Name_ocaml-light-is-structurally-equal">ocaml-light-is-structurally-equal</a></span>(<a href="#Variable4038_V"><i class="var">V</i></a>, <a href="#Variable4057_W"><i class="var">W</i></a>), 
        <span class="name"><a href="#Name_ocaml-light-is-structurally-equal">ocaml-light-is-structurally-equal</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple">tuple</a></span>(<a href="#Variable4044_V*"><i class="var">V<sup class="sup">*</sup></i></a>), <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple">tuple</a></span>(<a href="#Variable4063_W*"><i class="var">W<sup class="sup">*</sup></i></a>)))</code></pre></div>

 Lists 
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_ocaml-light-is-structurally-equal">ocaml-light-is-structurally-equal</a></span>([], []) ~> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_true">true</a></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_ocaml-light-is-structurally-equal">ocaml-light-is-structurally-equal</a></span>([], [<span id="Variable4178_V+"><i class="var">V<sup class="sup">+</sup></i></span>]) ~> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_false">false</a></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_ocaml-light-is-structurally-equal">ocaml-light-is-structurally-equal</a></span>([<span id="Variable4202_V+"><i class="var">V<sup class="sup">+</sup></i></span>], []) ~> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_false">false</a></span>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_ocaml-light-is-structurally-equal">ocaml-light-is-structurally-equal</a></span>([<span id="Variable4229_V"><i class="var">V</i></span>,<span id="Variable4235_V*"><i class="var">V<sup class="sup">*</sup></i></span>], [<span id="Variable4246_W"><i class="var">W</i></span>,<span id="Variable4252_W*"><i class="var">W<sup class="sup">*</sup></i></span>]) ~>
    <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_and">and</a></span>(<span class="name"><a href="#Name_ocaml-light-is-structurally-equal">ocaml-light-is-structurally-equal</a></span>(<a href="#Variable4229_V"><i class="var">V</i></a>,<a href="#Variable4246_W"><i class="var">W</i></a>),
        <span class="name"><a href="#Name_ocaml-light-is-structurally-equal">ocaml-light-is-structurally-equal</a></span>([<a href="#Variable4235_V*"><i class="var">V<sup class="sup">*</sup></i></a>], [<a href="#Variable4252_W*"><i class="var">W<sup class="sup">*</sup></i></a>]))</code></pre></div>

 Records 
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
                       <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_dom">dom</a></span>(<a href="#Variable4369_Map1"><i class="var">Map<sub class="sub">1</sub></i></a>) == <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_dom">dom</a></span>(<a href="#Variable4399_Map2"><i class="var">Map<sub class="sub">2</sub></i></a>)
  ----------------------------------------------------------------------
  <span class="name"><a href="#Name_ocaml-light-is-structurally-equal">ocaml-light-is-structurally-equal</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Records/index.html#Name_record">record</a></span>(<span id="Variable4369_Map1"><i class="var">Map<sub class="sub">1</sub></i></span>:<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_maps">maps</a></span>(_,_)), <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Records/index.html#Name_record">record</a></span>(<span id="Variable4399_Map2"><i class="var">Map<sub class="sub">2</sub></i></span>:<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_maps">maps</a></span>(_,_)))
    ~> <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_not">not</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sets/index.html#Name_is-in-set">is-in-set</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_false">false</a></span>, 
         <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sets/index.html#Name_set">set</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_interleave-map">interleave-map</a></span>(
           <span class="name"><a href="#Name_ocaml-light-is-structurally-equal">ocaml-light-is-structurally-equal</a></span>(
             <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_lookup">lookup</a></span>(<a href="#Variable4369_Map1"><i class="var">Map<sub class="sub">1</sub></i></a>, <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>), 
             <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_lookup">lookup</a></span>(<a href="#Variable4399_Map2"><i class="var">Map<sub class="sub">2</sub></i></a>, <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>)),
           <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sets/index.html#Name_set-elements">set-elements</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_dom">dom</a></span>(<a href="#Variable4369_Map1"><i class="var">Map<sub class="sub">1</sub></i></a>))))))</code></pre></div>

 References 
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_ocaml-light-is-structurally-equal">ocaml-light-is-structurally-equal</a></span>(<span id="Variable4541_V1"><i class="var">V<sub class="sub">1</sub></i></span>:<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_variables">variables</a></span>, <span id="Variable4550_V2"><i class="var">V<sub class="sub">2</sub></i></span>:<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_variables">variables</a></span>) ~>
    <span class="name"><a href="#Name_ocaml-light-is-structurally-equal">ocaml-light-is-structurally-equal</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span>(<a href="#Variable4541_V1"><i class="var">V<sub class="sub">1</sub></i></a>), <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span>(<a href="#Variable4550_V2"><i class="var">V<sub class="sub">2</sub></i></a>))</code></pre></div>

 Vectors 
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_ocaml-light-is-structurally-equal">ocaml-light-is-structurally-equal</a></span>(<span id="Variable4610_Vec1"><i class="var">Vec<sub class="sub">1</sub></i></span>:<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Vectors/index.html#Name_vectors">vectors</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>), <span id="Variable4626_Vec2"><i class="var">Vec<sub class="sub">2</sub></i></span>:<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Vectors/index.html#Name_vectors">vectors</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>)) ~>
    <span class="name"><a href="#Name_ocaml-light-is-structurally-equal">ocaml-light-is-structurally-equal</a></span>([<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Vectors/index.html#Name_vector-elements">vector-elements</a></span>(<a href="#Variable4610_Vec1"><i class="var">Vec<sub class="sub">1</sub></i></a>)], [<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Vectors/index.html#Name_vector-elements">vector-elements</a></span>(<a href="#Variable4626_Vec2"><i class="var">Vec<sub class="sub">2</sub></i></a>)])</code></pre></div>

 Variants 
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_ocaml-light-is-structurally-equal">ocaml-light-is-structurally-equal</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Variants/index.html#Name_variant">variant</a></span>(<span id="Variable4704_Con1"><i class="var">Con<sub class="sub">1</sub></i></span>,<span id="Variable4710_V1"><i class="var">V<sub class="sub">1</sub></i></span>), <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Variants/index.html#Name_variant">variant</a></span>(<span id="Variable4724_Con2"><i class="var">Con<sub class="sub">2</sub></i></span>,<span id="Variable4730_V2"><i class="var">V<sub class="sub">2</sub></i></span>)) ~>
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-true-else">if-true-else</a></span>(
      <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>(<a href="#Variable4704_Con1"><i class="var">Con<sub class="sub">1</sub></i></a>, <a href="#Variable4724_Con2"><i class="var">Con<sub class="sub">2</sub></i></a>),
      <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-true-else">if-true-else</a></span>(
        <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_or">or</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple">tuple</a></span>( ), <a href="#Variable4710_V1"><i class="var">V<sub class="sub">1</sub></i></a>), <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple">tuple</a></span>( ), <a href="#Variable4730_V2"><i class="var">V<sub class="sub">2</sub></i></a>)),
        <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_and">and</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple">tuple</a></span>( ), <a href="#Variable4710_V1"><i class="var">V<sub class="sub">1</sub></i></a>), <span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple">tuple</a></span>( ), <a href="#Variable4730_V2"><i class="var">V<sub class="sub">2</sub></i></a>)),
        <span class="name"><a href="#Name_ocaml-light-is-structurally-equal">ocaml-light-is-structurally-equal</a></span>(<a href="#Variable4710_V1"><i class="var">V<sub class="sub">1</sub></i></a>, <a href="#Variable4730_V2"><i class="var">V<sub class="sub">2</sub></i></a>)),
      <span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_false">false</a></span>)</code></pre></div>

 Functions 
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_ocaml-light-is-structurally-equal">ocaml-light-is-structurally-equal</a></span>(_:<span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_functions">functions</a></span>(_,_), _:<span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_functions">functions</a></span>(_,_)) ~>
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Abnormal/Throwing/index.html#Name_throw">throw</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Variants/index.html#Name_variant">variant</a></span>("Invalid_argument", "equal: functional value"))</code></pre></div>


### Console display

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_ocaml-light-to-string">ocaml-light-to-string</span></span>(_:<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>) : =><span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_strings">strings</a></span></code></pre></div>

  <code><span class="name"><a href="#Name_ocaml-light-to-string">ocaml-light-to-string</a></span>(<i class="var">V</i>)</code> gives the string represention of OCaml Light values
  as implemented by the ocaml interpreter.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i> // Unit
  <span class="name"><a href="#Name_ocaml-light-to-string">ocaml-light-to-string</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>) ~> "()"
<i class="keyword">Rule</i> // Booleans
  <span class="name"><a href="#Name_ocaml-light-to-string">ocaml-light-to-string</a></span>(<span id="Variable5090_B"><i class="var">B</i></span>:<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Booleans/index.html#Name_booleans">booleans</a></span>) ~> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_to-string">to-string</a></span>(<a href="#Variable5090_B"><i class="var">B</i></a>)
<i class="keyword">Rule</i> // Integers
  <span class="name"><a href="#Name_ocaml-light-to-string">ocaml-light-to-string</a></span>(<span id="Variable5120_I"><i class="var">I</i></span>:<span class="name"><a href="../../../../../Funcons-beta/Values/Primitive/Integers/index.html#Name_integers">integers</a></span>) ~> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_to-string">to-string</a></span>(<a href="#Variable5120_I"><i class="var">I</i></a>)
<i class="keyword">Rule</i> // Floats
  <span class="name"><a href="#Name_ocaml-light-to-string">ocaml-light-to-string</a></span>(<span id="Variable5150_F"><i class="var">F</i></span>:<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-floats">implemented-floats</a></span>) ~> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_to-string">to-string</a></span>(<a href="#Variable5150_F"><i class="var">F</i></a>)
<i class="keyword">Rule</i> // Characters
  <span class="name"><a href="#Name_ocaml-light-to-string">ocaml-light-to-string</a></span>(<span id="Variable5180_C"><i class="var">C</i></span>:<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-characters">implemented-characters</a></span>) ~>
    <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_string-append">string-append</a></span>("'", <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_to-string">to-string</a></span>(<a href="#Variable5180_C"><i class="var">C</i></a>), "'")
<i class="keyword">Rule</i> // Strings
  <a href="#Variable5237_S"><i class="var">S</i></a> =/= []
  ----------------------------------------------------------------
  <span class="name"><a href="#Name_ocaml-light-to-string">ocaml-light-to-string</a></span>(<span id="Variable5237_S"><i class="var">S</i></span>:<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-strings">implemented-strings</a></span>) ~> <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_string-append">string-append</a></span>("\"", <a href="#Variable5237_S"><i class="var">S</i></a>, "\"")
<i class="keyword">Rule</i> // Functions
  <span class="name"><a href="#Name_ocaml-light-to-string">ocaml-light-to-string</a></span>(_:<span class="name"><a href="../../../../../Funcons-beta/Values/Abstraction/Functions/index.html#Name_functions">functions</a></span>(_,_)) ~> "&lt;fun&gt;"
<i class="keyword">Rule</i> // References
  <span class="name"><a href="#Name_ocaml-light-to-string">ocaml-light-to-string</a></span>(<span id="Variable5306_V"><i class="var">V</i></span>:<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_variables">variables</a></span>) ~>
    <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_string-append">string-append</a></span>("ref ", <span class="name"><a href="#Name_ocaml-light-to-string">ocaml-light-to-string</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span>(<a href="#Variable5306_V"><i class="var">V</i></a>)))
<i class="keyword">Rule</i> // Variants
  <span class="name"><a href="#Name_ocaml-light-to-string">ocaml-light-to-string</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Variants/index.html#Name_variant">variant</a></span>(<span id="Variable5354_Con"><i class="var">Con</i></span>,<span id="Variable5359_Arg"><i class="var">Arg</i></span>)) ~>
    <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_if-true-else">if-true-else</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_is-equal">is-equal</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple">tuple</a></span>( ),<a href="#Variable5359_Arg"><i class="var">Arg</i></a>), <a href="#Variable5354_Con"><i class="var">Con</i></a>,
      <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_string-append">string-append</a></span>(<a href="#Variable5354_Con"><i class="var">Con</i></a>, " ", <span class="name"><a href="#Name_ocaml-light-to-string">ocaml-light-to-string</a></span>(<a href="#Variable5359_Arg"><i class="var">Arg</i></a>)))
<i class="keyword">Rule</i> // Tuples
  <span class="name"><a href="#Name_ocaml-light-to-string">ocaml-light-to-string</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Tuples/index.html#Name_tuple">tuple</a></span>(<span id="Variable5443_V"><i class="var">V</i></span>:<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span>, <span id="Variable5452_V+"><i class="var">V<sup class="sup">+</sup></i></span>:<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span><sup class="sup">+</sup>)) ~>
    <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_string-append">string-append</a></span>(
      "(",
      <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sequences/index.html#Name_intersperse">intersperse</a></span>(", ", <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_interleave-map">interleave-map</a></span>(<span class="name"><a href="#Name_ocaml-light-to-string">ocaml-light-to-string</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>), <a href="#Variable5443_V"><i class="var">V</i></a>, <a href="#Variable5452_V+"><i class="var">V<sup class="sup">+</sup></i></a>)),
      ")")
<i class="keyword">Rule</i> // Lists
  <span class="name"><a href="#Name_ocaml-light-to-string">ocaml-light-to-string</a></span>([<span id="Variable5532_V*"><i class="var">V<sup class="sup">*</sup></i></span>:<span class="name"><a href="../../../../../Funcons-beta/Values/Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup>]) ~>
    <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_string-append">string-append</a></span>(
      "[",
      <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sequences/index.html#Name_intersperse">intersperse</a></span>("; ", <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_interleave-map">interleave-map</a></span>(<span class="name"><a href="#Name_ocaml-light-to-string">ocaml-light-to-string</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>), <a href="#Variable5532_V*"><i class="var">V<sup class="sup">*</sup></i></a>)),
      "]")
<i class="keyword">Rule</i> // Vectors
  <span class="name"><a href="#Name_ocaml-light-to-string">ocaml-light-to-string</a></span>(<span id="Variable5603_V"><i class="var">V</i></span>:<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-vectors">implemented-vectors</a></span>) ~>
    <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_string-append">string-append</a></span>(
      "[|",
      <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sequences/index.html#Name_intersperse">intersperse</a></span>("; ", <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_interleave-map">interleave-map</a></span>(
        <span class="name"><a href="#Name_ocaml-light-to-string">ocaml-light-to-string</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Storing/index.html#Name_assigned">assigned</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_given">given</a></span>)), 
        <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Vectors/index.html#Name_vector-elements">vector-elements</a></span>(<a href="#Variable5603_V"><i class="var">V</i></a>))),
      "|]")
<i class="keyword">Rule</i> // Records
  <span class="name"><a href="#Name_ocaml-light-to-string">ocaml-light-to-string</a></span>(<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Records/index.html#Name_record">record</a></span>(<span id="Variable5681_M"><i class="var">M</i></span>:<span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_maps">maps</a></span>(_,_))) ~>
    <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_string-append">string-append</a></span>(
      "{",
      <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Sequences/index.html#Name_intersperse">intersperse</a></span>("; ", <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_interleave-map">interleave-map</a></span>(
            <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Strings/index.html#Name_string-append">string-append</a></span>(<span class="name"><a href="#Name_arg-1">arg-1</a></span>," = ",<span class="name"><a href="#Name_ocaml-light-to-string">ocaml-light-to-string</a></span>(<span class="name"><a href="#Name_arg-2">arg-2</a></span>)),
            <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map-elements">map-elements</a></span>(<a href="#Variable5681_M"><i class="var">M</i></a>))),
      "}")</code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_ocaml-light-define-and-display">ocaml-light-define-and-display</span></span>(<span id="Variable5784_Env"><i class="var">Env</i></span>:<span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_envs">envs</a></span>) : =><span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_envs">envs</a></span>
   ~> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_effect">effect</a></span> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Giving/index.html#Name_left-to-right-map">left-to-right-map</a></span>(
          <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Interacting/index.html#Name_print">print</a></span>(<span class="name"><a href="#Name_arg-1">arg-1</a></span>, " = ", <span class="name"><a href="#Name_ocaml-light-to-string">ocaml-light-to-string</a></span> <span class="name"><a href="#Name_arg-2">arg-2</a></span>, "\n"),
          <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map-elements">map-elements</a></span> <a href="#Variable5784_Env"><i class="var">Env</i></a>), 
        <a href="#Variable5784_Env"><i class="var">Env</i></a>)</code></pre></div>


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_ocaml-light-evaluate-and-display">ocaml-light-evaluate-and-display</span></span>(<span id="Variable5856_V"><i class="var">V</i></span>:<span class="name"><a href="../OC-L-02-Values/index.html#Name_implemented-values">implemented-values</a></span>) : =><span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Binding/index.html#Name_envs">envs</a></span>
   ~> <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Flowing/index.html#Name_sequential">sequential</a></span>(
        <span class="name"><a href="../../../../../Funcons-beta/Computations/Normal/Interacting/index.html#Name_print">print</a></span>("- = ", <span class="name"><a href="#Name_ocaml-light-to-string">ocaml-light-to-string</a></span> <a href="#Variable5856_V"><i class="var">V</i></a>, "\n"), 
        <span class="name"><a href="../../../../../Funcons-beta/Values/Composite/Maps/index.html#Name_map">map</a></span>())</code></pre></div>

      


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
[OC-L-12-Core-Library.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-12-Core-Library/OC-L-12-Core-Library.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-12-Core-Library
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-12-Core-Library
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Languages-beta/OCaml-Light/OC-L-cbs/OC-L/OC-L-12-Core-Library/OC-L-12-Core-Library.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20OC-L/OC-L-12-Core-Library/OC-L-12-Core-Library.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
