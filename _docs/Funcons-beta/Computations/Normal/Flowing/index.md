---
title: "Flowing"
parent: Normal
ancestor: Funcons-beta

---

[Funcons-beta] : [Flowing.cbs] \| [PRETTY] \| [PDF]

<details open markdown="block">
  <summary>
    Outline
  </summary>
  {: .text-delta }
- TOC
{:toc}
</details>

----
### Flowing

<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_left-to-right">left-to-right</a></span>   <i class="keyword">Alias</i> <span class="name"><a href="#Name_l-to-r">l-to-r</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_right-to-left">right-to-left</a></span>   <i class="keyword">Alias</i> <span class="name"><a href="#Name_r-to-l">r-to-l</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_sequential">sequential</a></span>      <i class="keyword">Alias</i> <span class="name"><a href="#Name_seq">seq</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_effect">effect</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_choice">choice</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_if-true-else">if-true-else</a></span>    <i class="keyword">Alias</i> <span class="name"><a href="#Name_if-else">if-else</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_while-true">while-true</a></span>      <i class="keyword">Alias</i> <span class="name"><a href="#Name_while">while</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_do-while-true">do-while-true</a></span>   <i class="keyword">Alias</i> <span class="name"><a href="#Name_do-while">do-while</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_interleave">interleave</a></span>
  <i class="keyword">Datatype</i> <span class="name"><a href="#Name_yielding">yielding</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_signal">signal</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_yielded">yielded</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_yield">yield</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_yield-on-value">yield-on-value</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_yield-on-abrupt">yield-on-abrupt</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_atomic">atomic</a></span>
]</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Meta-variables</i>
  <span id="PartVariable_T"><i class="var">T</i></span> <: <span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span>
  <span id="PartVariable_T*"><i class="var">T<sup class="sup">*</sup></i></span> <: <span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span><sup class="sup">*</sup></code></pre></div>



#### Sequencing


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_left-to-right">left-to-right</span></span>(_:(=>(<span id="Variable141_T"><i class="var">T</i></span>)<sup class="sup">*</sup>)<sup class="sup">*</sup>) : =>(<span id="Variable170_T"><i class="var">T</i></span>)<sup class="sup">*</sup>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_l-to-r">l-to-r</span></span> = <span class="name"><a href="#Name_left-to-right">left-to-right</a></span></code></pre></div>


  <code><span class="name"><a href="#Name_left-to-right">left-to-right</a></span>(...)</code> computes its arguments sequentially, from left to right,
  and gives the resulting sequence of values, provided all terminate normally.
  For example, <code><span class="name"><a href="../../../Values/Primitive/Integers/index.html#Name_integer-add">integer-add</a></span>(<i class="var">X</i>, <i class="var">Y</i>)</code> may interleave the computations of <code><i class="var">X</i></code> and
  <code><i class="var">Y</i></code>, whereas <code><span class="name"><a href="../../../Values/Primitive/Integers/index.html#Name_integer-add">integer-add</a></span> <span class="name"><a href="#Name_left-to-right">left-to-right</a></span>(<i class="var">X</i>, <i class="var">Y</i>)</code> always computes <code><i class="var">X</i></code> before <code><i class="var">Y</i></code>.

  When each argument of <code><span class="name"><a href="#Name_left-to-right">left-to-right</a></span>(...)</code> computes a single value, the type
  of the result is the same as that of the argument sequence. For instance,
  when <code><i class="var">X</i>:<i class="var">T</i></code> and <code><i class="var">Y</i>:<i class="var">T&prime;</i></code>, the result of <code><span class="name"><a href="#Name_left-to-right">left-to-right</a></span>(<i class="var">X</i>, <i class="var">Y</i>)</code> is of type <code>(<i class="var">T</i>, <i class="var">T&prime;</i>)</code>.
  The only effect of wrapping an argument sequence in <code><span class="name"><a href="#Name_left-to-right">left-to-right</a></span>(...)</code> is to
  ensure that when the arguments are to be evaluated, it is done in the
  specified order.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
                              <a href="#Variable486_Y"><i class="var">Y</i></a> ---> <span id="Variable454_Y'"><i class="var">Y&prime;</i></span>
  ------------------------------------------------------------
  <span class="name"><a href="#Name_left-to-right">left-to-right</a></span>(<span id="Variable468_V*"><i class="var">V<sup class="sup">*</sup></i></span>:(<i class="var">T</i>)<sup class="sup">*</sup>, <span id="Variable486_Y"><i class="var">Y</i></span>, <span id="Variable492_Z*"><i class="var">Z<sup class="sup">*</sup></i></span>) ---> <span class="name"><a href="#Name_left-to-right">left-to-right</a></span>(<a href="#Variable468_V*"><i class="var">V<sup class="sup">*</sup></i></a>, <a href="#Variable454_Y'"><i class="var">Y&prime;</i></a>, <a href="#Variable492_Z*"><i class="var">Z<sup class="sup">*</sup></i></a>)
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_left-to-right">left-to-right</a></span>(<span id="Variable541_V*"><i class="var">V<sup class="sup">*</sup></i></span>:(<i class="var">T</i>)<sup class="sup">*</sup>) ~> <a href="#Variable541_V*"><i class="var">V<sup class="sup">*</sup></i></a></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_right-to-left">right-to-left</span></span>(_:(=>(<span id="Variable579_T"><i class="var">T</i></span>)<sup class="sup">*</sup>)<sup class="sup">*</sup>) : =>(<span id="Variable608_T"><i class="var">T</i></span>)<sup class="sup">*</sup>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_r-to-l">r-to-l</span></span> = <span class="name"><a href="#Name_right-to-left">right-to-left</a></span></code></pre></div>


  <code><span class="name"><a href="#Name_right-to-left">right-to-left</a></span>(...)</code> computes its arguments sequentially, from right to left,
  and gives the resulting sequence of values, provided all terminate normally.

  Note that <code><span class="name"><a href="#Name_right-to-left">right-to-left</a></span>(<i class="var">X<sup class="sup">*</sup></i>)</code> and <code><span class="name"><a href="../../../Values/Composite/Sequences/index.html#Name_reverse">reverse</a></span> <span class="name"><a href="#Name_left-to-right">left-to-right</a></span> <span class="name"><a href="../../../Values/Composite/Sequences/index.html#Name_reverse">reverse</a></span>(<i class="var">X<sup class="sup">*</sup></i>)</code> are
  not equivalent: <code><span class="name"><a href="../../../Values/Composite/Sequences/index.html#Name_reverse">reverse</a></span>(<i class="var">X<sup class="sup">*</sup></i>)</code> interleaves the evaluation of <code><i class="var">X<sup class="sup">*</sup></i></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
                              <a href="#Variable760_Y"><i class="var">Y</i></a> ---> <span id="Variable741_Y'"><i class="var">Y&prime;</i></span>
  ------------------------------------------------------------
  <span class="name"><a href="#Name_right-to-left">right-to-left</a></span>(<span id="Variable755_X*"><i class="var">X<sup class="sup">*</sup></i></span>, <span id="Variable760_Y"><i class="var">Y</i></span>, <span id="Variable766_V*"><i class="var">V<sup class="sup">*</sup></i></span>:(<i class="var">T</i>)<sup class="sup">*</sup>) ---> <span class="name"><a href="#Name_right-to-left">right-to-left</a></span>(<a href="#Variable755_X*"><i class="var">X<sup class="sup">*</sup></i></a>, <a href="#Variable741_Y'"><i class="var">Y&prime;</i></a>, <a href="#Variable766_V*"><i class="var">V<sup class="sup">*</sup></i></a>)
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_right-to-left">right-to-left</a></span>(<span id="Variable828_V*"><i class="var">V<sup class="sup">*</sup></i></span>:(<i class="var">T</i>)<sup class="sup">*</sup>) ~> <a href="#Variable828_V*"><i class="var">V<sup class="sup">*</sup></i></a></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_sequential">sequential</span></span>(_:(=><span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>)<sup class="sup">*</sup>, _:=><span id="Variable883_T"><i class="var">T</i></span>) : =><span id="Variable899_T"><i class="var">T</i></span>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_seq">seq</span></span> = <span class="name"><a href="#Name_sequential">sequential</a></span></code></pre></div>


  <code><span class="name"><a href="#Name_sequential">sequential</a></span>(<i class="var">X</i>, ...)</code> computes its arguments in the given order. On normal
  termination, it returns the value of the last argument; the other arguments
  all compute <code><span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-value">null-value</a></span></code>.

  Binary <code><span class="name"><a href="#Name_sequential">sequential</a></span>(<i class="var">X</i>, <i class="var">Y</i>)</code> is associative, with unit <code><span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-value">null-value</a></span></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
                  <a href="#Variable1009_X"><i class="var">X</i></a> ---> <span id="Variable996_X'"><i class="var">X&prime;</i></span>
  -----------------------------------------
  <span class="name"><a href="#Name_sequential">sequential</a></span>(<span id="Variable1009_X"><i class="var">X</i></span>, <span id="Variable1015_Y+"><i class="var">Y<sup class="sup">+</sup></i></span>) ---> <span class="name"><a href="#Name_sequential">sequential</a></span>(<a href="#Variable996_X'"><i class="var">X&prime;</i></a>, <a href="#Variable1015_Y+"><i class="var">Y<sup class="sup">+</sup></i></a>)
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_sequential">sequential</a></span>(<span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>, <span id="Variable1058_Y+"><i class="var">Y<sup class="sup">+</sup></i></span>) ~> <span class="name"><a href="#Name_sequential">sequential</a></span>(<a href="#Variable1058_Y+"><i class="var">Y<sup class="sup">+</sup></i></a>)
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_sequential">sequential</a></span>(<span id="Variable1087_Y"><i class="var">Y</i></span>) ~> <a href="#Variable1087_Y"><i class="var">Y</i></a></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_effect">effect</span></span>(<span id="Variable1108_V*"><i class="var">V<sup class="sup">*</sup></i></span>:<span id="Variable1113_T*"><i class="var">T<sup class="sup">*</sup></i></span>) : =><span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
    ~> <span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-value">null-value</a></span></code></pre></div>


  <code><span class="name"><a href="#Name_effect">effect</a></span>(...)</code> interleaves the computations of its arguments, then discards
  all the computed values.



#### Choosing

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_choice">choice</span></span>(_:(=><span id="Variable1191_T"><i class="var">T</i></span>)<sup class="sup">+</sup>) : =><span id="Variable1213_T"><i class="var">T</i></span></code></pre></div>

  <code><span class="name"><a href="#Name_choice">choice</a></span>(<i class="var">Y</i>, ...)</code> selects one of its arguments, then computes it.
  It is associative and commutative.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_choice">choice</a></span>(<span id="Variable1253_X*"><i class="var">X<sup class="sup">*</sup></i></span>, <span id="Variable1258_Y"><i class="var">Y</i></span>, <span id="Variable1264_Z*"><i class="var">Z<sup class="sup">*</sup></i></span>) ~> <a href="#Variable1258_Y"><i class="var">Y</i></a></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_if-true-else">if-true-else</span></span>(_:<span class="name"><a href="../../../Values/Primitive/Booleans/index.html#Name_booleans">booleans</a></span>, _:=><span id="Variable1298_T"><i class="var">T</i></span>, _:=><span id="Variable1311_T"><i class="var">T</i></span>) : =><span id="Variable1328_T"><i class="var">T</i></span>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_if-else">if-else</span></span> = <span class="name"><a href="#Name_if-true-else">if-true-else</a></span></code></pre></div>


  <code><span class="name"><a href="#Name_if-true-else">if-true-else</a></span>(<i class="var">B</i>, <i class="var">X</i>, <i class="var">Y</i>)</code> evaluates <code><i class="var">B</i></code> to a Boolean value, then reduces
  to <code><i class="var">X</i></code> or <code><i class="var">Y</i></code>, depending on the value of <code><i class="var">B</i></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_if-true-else">if-true-else</a></span>(<span class="name"><a href="../../../Values/Primitive/Booleans/index.html#Name_true">true</a></span>, <span id="Variable1432_X"><i class="var">X</i></span>, <span id="Variable1437_Y"><i class="var">Y</i></span>) ~> <a href="#Variable1432_X"><i class="var">X</i></a>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_if-true-else">if-true-else</a></span>(<span class="name"><a href="../../../Values/Primitive/Booleans/index.html#Name_false">false</a></span>, <span id="Variable1461_X"><i class="var">X</i></span>, <span id="Variable1466_Y"><i class="var">Y</i></span>) ~> <a href="#Variable1466_Y"><i class="var">Y</i></a></code></pre></div>



#### Iterating


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_while-true">while-true</span></span>(<span id="Variable1505_B"><i class="var">B</i></span>:=><span class="name"><a href="../../../Values/Primitive/Booleans/index.html#Name_booleans">booleans</a></span>, <span id="Variable1516_X"><i class="var">X</i></span>:=><span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>) : =><span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
    ~> <span class="name"><a href="#Name_if-true-else">if-true-else</a></span>(<a href="#Variable1505_B"><i class="var">B</i></a>, <span class="name"><a href="#Name_sequential">sequential</a></span>(<a href="#Variable1516_X"><i class="var">X</i></a>, <span class="name"><a href="#Name_while-true">while-true</a></span>(<a href="#Variable1505_B"><i class="var">B</i></a>, <a href="#Variable1516_X"><i class="var">X</i></a>)), <span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>)
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_while">while</span></span> = <span class="name"><a href="#Name_while-true">while-true</a></span></code></pre></div>


  <code><span class="name"><a href="#Name_while-true">while-true</a></span>(<i class="var">B</i>, <i class="var">X</i>)</code> evaluates <code><i class="var">B</i></code> to a Boolean value. Depending on the value
  of <code><i class="var">B</i></code>, it either executes <code><i class="var">X</i></code> and iterates, or terminates normally.

  The effect of abruptly breaking the iteration is obtained by the combination
  <code><span class="name"><a href="../../Abnormal/Breaking/index.html#Name_handle-break">handle-break</a></span>(<span class="name"><a href="#Name_while-true">while-true</a></span>(<i class="var">B</i>, <i class="var">X</i>))</code>, and that of abruptly continuing the iteration by
  <code><span class="name"><a href="#Name_while-true">while-true</a></span>(<i class="var">B</i>, <span class="name"><a href="../../Abnormal/Continuing/index.html#Name_handle-continue">handle-continue</a></span>(<i class="var">X</i>))</code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_do-while-true">do-while-true</span></span>(<span id="Variable1728_X"><i class="var">X</i></span>:=><span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>, <span id="Variable1739_B"><i class="var">B</i></span>:=><span class="name"><a href="../../../Values/Primitive/Booleans/index.html#Name_booleans">booleans</a></span>) : =><span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
    ~> <span class="name"><a href="#Name_sequential">sequential</a></span>(<a href="#Variable1728_X"><i class="var">X</i></a>, <span class="name"><a href="#Name_if-true-else">if-true-else</a></span>(<a href="#Variable1739_B"><i class="var">B</i></a>, <span class="name"><a href="#Name_do-while-true">do-while-true</a></span>(<a href="#Variable1728_X"><i class="var">X</i></a>, <a href="#Variable1739_B"><i class="var">B</i></a>), <span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>))
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_do-while">do-while</span></span> = <span class="name"><a href="#Name_do-while-true">do-while-true</a></span></code></pre></div>


  <code><span class="name"><a href="#Name_do-while-true">do-while-true</a></span>(<i class="var">X</i>, <i class="var">B</i>)</code> is equivalent to <code><span class="name"><a href="#Name_sequential">sequential</a></span>(<i class="var">X</i>, <span class="name"><a href="#Name_while-true">while-true</a></span>(<i class="var">B</i>, <i class="var">X</i>))</code>.



#### Interleaving

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_interleave">interleave</span></span>(_:<span id="Variable1904_T*"><i class="var">T<sup class="sup">*</sup></i></span>) : =><span id="Variable1919_T*"><i class="var">T<sup class="sup">*</sup></i></span></code></pre></div>

  <code><span class="name"><a href="#Name_interleave">interleave</a></span>(...)</code> computes its arguments in any order, possibly interleaved,
  and returns the resulting sequence of values, provided all terminate normally.
  Fairness of interleaving is not required, so pure left-to-right computation
  is allowed.

  <code><span class="name"><a href="#Name_atomic">atomic</a></span>(<i class="var">X</i>)</code> prevents interleaving in <code><i class="var">X</i></code>, except after transitions that emit
  a <code><span class="name"><a href="#Name_yielded">yielded</a></span>(<span class="name"><a href="#Name_signal">signal</a></span>)</code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_interleave">interleave</a></span>(<span id="Variable2003_V*"><i class="var">V<sup class="sup">*</sup></i></span>:<i class="var">T<sup class="sup">*</sup></i>) ~> <a href="#Variable2003_V*"><i class="var">V<sup class="sup">*</sup></i></a></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Datatype</i>
  <span class="name"><span id="Name_yielding">yielding</span></span> ::= <span id="Name_signal">signal</span></code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Entity</i>
  _ --<span class="ent-name"><span id="Name_yielded">yielded</span></span>(_:<span class="name"><a href="#Name_yielding">yielding</a></span><sup class="sup">?</sup>)-> _</code></pre></div>


  <code><span class="name"><a href="#Name_yielded">yielded</a></span>(<span class="name"><a href="#Name_signal">signal</a></span>)</code> in a label on a transition allows interleaving at that point
  in the enclosing atomic computation.
  <code><span class="name"><a href="#Name_yielded">yielded</a></span>( )</code> indicates interleaving at that point in an atomic computation
  is not allowed.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_yield">yield</span></span> : =><span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
   ~> <span class="name"><a href="#Name_yield-on-value">yield-on-value</a></span>(<span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>)</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_yield-on-value">yield-on-value</span></span>(_:<span id="Variable2115_T"><i class="var">T</i></span>) : =><span id="Variable2129_T"><i class="var">T</i></span></code></pre></div>

  <code><span class="name"><a href="#Name_yield-on-value">yield-on-value</a></span>(<i class="var">X</i>)</code> allows interleaving in an enclosing atomic computation
  on normal termination of <code><i class="var">X</i></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_yield-on-value">yield-on-value</a></span>(<span id="Variable2178_V"><i class="var">V</i></span>:<i class="var">T</i>) --<span class="ent-name"><a href="#Name_yielded">yielded</a></span>(<span class="name"><a href="#Name_signal">signal</a></span>)-> <a href="#Variable2178_V"><i class="var">V</i></a></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_yield-on-abrupt">yield-on-abrupt</span></span>(_:=><span id="Variable2225_T"><i class="var">T</i></span>) : =><span id="Variable2240_T"><i class="var">T</i></span></code></pre></div>

  <code><span class="name"><a href="#Name_yield-on-abrupt">yield-on-abrupt</a></span>(<i class="var">X</i>)</code> ensures that abrupt termination of <code><i class="var">X</i></code> is propagated
  through an enclosing atomic computation.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
                   <a href="#Variable2346_X"><i class="var">X</i></a> --<span class="ent-name"><a href="../../Abnormal/Abrupting/index.html#Name_abrupt">abrupt</a></span>(<span id="Variable2296_V"><i class="var">V</i></span>:<i class="var">T</i>),<span class="ent-name"><a href="#Name_yielded">yielded</a></span>(_?)-> <span id="Variable2333_X'"><i class="var">X&prime;</i></span>
  --------------------------------------------------------------------
  <span class="name"><a href="#Name_yield-on-abrupt">yield-on-abrupt</a></span>(<span id="Variable2346_X"><i class="var">X</i></span>) --<span class="ent-name"><a href="../../Abnormal/Abrupting/index.html#Name_abrupt">abrupt</a></span>(<a href="#Variable2296_V"><i class="var">V</i></a>),<span class="ent-name"><a href="#Name_yielded">yielded</a></span>(<span class="name"><a href="#Name_signal">signal</a></span>)-> <span class="name"><a href="#Name_yield-on-abrupt">yield-on-abrupt</a></span>(<a href="#Variable2333_X'"><i class="var">X&prime;</i></a>)
<i class="keyword">Rule</i>
                   <a href="#Variable2437_X"><i class="var">X</i></a> --<span class="ent-name"><a href="../../Abnormal/Abrupting/index.html#Name_abrupt">abrupt</a></span>( )-> <span id="Variable2424_X'"><i class="var">X&prime;</i></span>
  ----------------------------------------------------
  <span class="name"><a href="#Name_yield-on-abrupt">yield-on-abrupt</a></span>(<span id="Variable2437_X"><i class="var">X</i></span>) --<span class="ent-name"><a href="../../Abnormal/Abrupting/index.html#Name_abrupt">abrupt</a></span>( )-> <span class="name"><a href="#Name_yield-on-abrupt">yield-on-abrupt</a></span>(<a href="#Variable2424_X'"><i class="var">X&prime;</i></a>)
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_yield-on-abrupt">yield-on-abrupt</a></span>(<span id="Variable2479_V"><i class="var">V</i></span>:<i class="var">T</i>) ~> <a href="#Variable2479_V"><i class="var">V</i></a></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_atomic">atomic</span></span>(_:=><span id="Variable2509_T"><i class="var">T</i></span>) : =><span id="Variable2524_T"><i class="var">T</i></span></code></pre></div>

  <code><span class="name"><a href="#Name_atomic">atomic</a></span>(<i class="var">X</i>)</code> computes <code><i class="var">X</i></code>, but controls its potential interleaving with other
  computations: interleaving is only allowed following a transition of <code><i class="var">X</i></code> that
  emits <code><span class="name"><a href="#Name_yielded">yielded</a></span>(<span class="name"><a href="#Name_signal">signal</a></span>)</code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
                   <a href="#Variable2672_X"><i class="var">X</i></a> --<span class="ent-name"><a href="#Name_yielded">yielded</a></span>( )->1 <span id="Variable2622_X'"><i class="var">X&prime;</i></span>
          <span class="name"><a href="#Name_atomic">atomic</a></span>(<a href="#Variable2622_X'"><i class="var">X&prime;</i></a>) --<span class="ent-name"><a href="#Name_yielded">yielded</a></span>( )->2 <span id="Variable2658_X''"><i class="var">X&prime;&prime;</i></span>
  -----------------------------------------------
  <span class="name"><a href="#Name_atomic">atomic</a></span>(<span id="Variable2672_X"><i class="var">X</i></span>) --<span class="ent-name"><a href="#Name_yielded">yielded</a></span>( )->1 ; --<span class="ent-name"><a href="#Name_yielded">yielded</a></span>( )->2 <a href="#Variable2658_X''"><i class="var">X&prime;&prime;</i></a>
<i class="keyword">Rule</i>
          <a href="#Variable2767_X"><i class="var">X</i></a> --<span class="ent-name"><a href="#Name_yielded">yielded</a></span>( )-> <span id="Variable2740_V"><i class="var">V</i></span>
                <a href="#Variable2740_V"><i class="var">V</i></a> : <i class="var">T</i>
  ---------------------------
  <span class="name"><a href="#Name_atomic">atomic</a></span>(<span id="Variable2767_X"><i class="var">X</i></span>) --<span class="ent-name"><a href="#Name_yielded">yielded</a></span>( )-> <a href="#Variable2740_V"><i class="var">V</i></a>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_atomic">atomic</a></span>(<span id="Variable2801_V"><i class="var">V</i></span>:<i class="var">T</i>) ~> <a href="#Variable2801_V"><i class="var">V</i></a>
<i class="keyword">Rule</i>
          <a href="#Variable2862_X"><i class="var">X</i></a> --<span class="ent-name"><a href="#Name_yielded">yielded</a></span>(<span class="name"><a href="#Name_signal">signal</a></span>)-> <span id="Variable2849_X'"><i class="var">X&prime;</i></span>
  -----------------------------------
  <span class="name"><a href="#Name_atomic">atomic</a></span>(<span id="Variable2862_X"><i class="var">X</i></span>) --<span class="ent-name"><a href="#Name_yielded">yielded</a></span>( )-> <span class="name"><a href="#Name_atomic">atomic</a></span>(<a href="#Variable2849_X'"><i class="var">X&prime;</i></a>)</code></pre></div>



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
[Flowing.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Normal/Flowing/Flowing.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Computations/Normal/Flowing
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Funcons-beta/Computations/Normal/Flowing
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Normal/Flowing/Flowing.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Computations/Normal/Flowing/Flowing.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
