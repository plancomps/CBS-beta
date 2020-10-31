---
layout: default
title: "Flowing"
parent: Normal
ancestor: Funcons-beta

---

[Funcons-beta] : [Flowing.cbs]
-----------------------------

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
  <span class="name"><span id="Name_left-to-right">left-to-right</span></span>(_:(=>(<span id="Variable139_T"><i class="var">T</i></span>)<sup class="sup">*</sup>)<sup class="sup">*</sup>) : =>(<span id="Variable168_T"><i class="var">T</i></span>)<sup class="sup">*</sup>
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
                              <a href="#Variable484_Y"><i class="var">Y</i></a> ---> <span id="Variable452_Y'"><i class="var">Y&prime;</i></span>
  ------------------------------------------------------------
  <span class="name"><a href="#Name_left-to-right">left-to-right</a></span>(<span id="Variable466_V*"><i class="var">V<sup class="sup">*</sup></i></span>:(<i class="var">T</i>)<sup class="sup">*</sup>, <span id="Variable484_Y"><i class="var">Y</i></span>, <span id="Variable490_Z*"><i class="var">Z<sup class="sup">*</sup></i></span>) ---> <span class="name"><a href="#Name_left-to-right">left-to-right</a></span>(<a href="#Variable466_V*"><i class="var">V<sup class="sup">*</sup></i></a>, <a href="#Variable452_Y'"><i class="var">Y&prime;</i></a>, <a href="#Variable490_Z*"><i class="var">Z<sup class="sup">*</sup></i></a>)
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_left-to-right">left-to-right</a></span>(<span id="Variable539_V*"><i class="var">V<sup class="sup">*</sup></i></span>:(<i class="var">T</i>)<sup class="sup">*</sup>) ~> <a href="#Variable539_V*"><i class="var">V<sup class="sup">*</sup></i></a></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_right-to-left">right-to-left</span></span>(_:(=>(<span id="Variable577_T"><i class="var">T</i></span>)<sup class="sup">*</sup>)<sup class="sup">*</sup>) : =>(<span id="Variable606_T"><i class="var">T</i></span>)<sup class="sup">*</sup>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_r-to-l">r-to-l</span></span> = <span class="name"><a href="#Name_right-to-left">right-to-left</a></span></code></pre></div>


  <code><span class="name"><a href="#Name_right-to-left">right-to-left</a></span>(...)</code> computes its arguments sequentially, from right to left,
  and gives the resulting sequence of values, provided all terminate normally.

  Note that <code><span class="name"><a href="#Name_right-to-left">right-to-left</a></span>(<i class="var">X<sup class="sup">*</sup></i>)</code> and <code><span class="name"><a href="../../../Values/Composite/Sequences/index.html#Name_reverse">reverse</a></span> <span class="name"><a href="#Name_left-to-right">left-to-right</a></span> <span class="name"><a href="../../../Values/Composite/Sequences/index.html#Name_reverse">reverse</a></span>(<i class="var">X<sup class="sup">*</sup></i>)</code> are
  not equivalent: <code><span class="name"><a href="../../../Values/Composite/Sequences/index.html#Name_reverse">reverse</a></span>(<i class="var">X<sup class="sup">*</sup></i>)</code> interleaves the evaluation of <code><i class="var">X<sup class="sup">*</sup></i></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
                              <a href="#Variable758_Y"><i class="var">Y</i></a> ---> <span id="Variable739_Y'"><i class="var">Y&prime;</i></span>
  ------------------------------------------------------------
  <span class="name"><a href="#Name_right-to-left">right-to-left</a></span>(<span id="Variable753_X*"><i class="var">X<sup class="sup">*</sup></i></span>, <span id="Variable758_Y"><i class="var">Y</i></span>, <span id="Variable764_V*"><i class="var">V<sup class="sup">*</sup></i></span>:(<i class="var">T</i>)<sup class="sup">*</sup>) ---> <span class="name"><a href="#Name_right-to-left">right-to-left</a></span>(<a href="#Variable753_X*"><i class="var">X<sup class="sup">*</sup></i></a>, <a href="#Variable739_Y'"><i class="var">Y&prime;</i></a>, <a href="#Variable764_V*"><i class="var">V<sup class="sup">*</sup></i></a>)
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_right-to-left">right-to-left</a></span>(<span id="Variable826_V*"><i class="var">V<sup class="sup">*</sup></i></span>:(<i class="var">T</i>)<sup class="sup">*</sup>) ~> <a href="#Variable826_V*"><i class="var">V<sup class="sup">*</sup></i></a></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_sequential">sequential</span></span>(_:(=><span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>)<sup class="sup">*</sup>, _:=><span id="Variable881_T"><i class="var">T</i></span>) : =><span id="Variable897_T"><i class="var">T</i></span>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_seq">seq</span></span> = <span class="name"><a href="#Name_sequential">sequential</a></span></code></pre></div>


  <code><span class="name"><a href="#Name_sequential">sequential</a></span>(<i class="var">X</i>, ...)</code> computes its arguments in the given order. On normal
  termination, it returns the value of the last argument; the other arguments
  all compute <code><span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-value">null-value</a></span></code>.

  Binary <code><span class="name"><a href="#Name_sequential">sequential</a></span>(<i class="var">X</i>, <i class="var">Y</i>)</code> is associative, with unit <code><span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-value">null-value</a></span></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
                  <a href="#Variable1007_X"><i class="var">X</i></a> ---> <span id="Variable994_X'"><i class="var">X&prime;</i></span>
  -----------------------------------------
  <span class="name"><a href="#Name_sequential">sequential</a></span>(<span id="Variable1007_X"><i class="var">X</i></span>, <span id="Variable1013_Y+"><i class="var">Y<sup class="sup">+</sup></i></span>) ---> <span class="name"><a href="#Name_sequential">sequential</a></span>(<a href="#Variable994_X'"><i class="var">X&prime;</i></a>, <a href="#Variable1013_Y+"><i class="var">Y<sup class="sup">+</sup></i></a>)
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_sequential">sequential</a></span>(<span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>, <span id="Variable1056_Y+"><i class="var">Y<sup class="sup">+</sup></i></span>) ~> <span class="name"><a href="#Name_sequential">sequential</a></span>(<a href="#Variable1056_Y+"><i class="var">Y<sup class="sup">+</sup></i></a>)
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_sequential">sequential</a></span>(<span id="Variable1085_Y"><i class="var">Y</i></span>) ~> <a href="#Variable1085_Y"><i class="var">Y</i></a></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_effect">effect</span></span>(<span id="Variable1106_V*"><i class="var">V<sup class="sup">*</sup></i></span>:<span id="Variable1111_T*"><i class="var">T<sup class="sup">*</sup></i></span>) : =><span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
    ~> <span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-value">null-value</a></span></code></pre></div>


  <code><span class="name"><a href="#Name_effect">effect</a></span>(...)</code> interleaves the computations of its arguments, then discards
  all the computed values.



#### Choosing

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_choice">choice</span></span>(_:(=><span id="Variable1188_T"><i class="var">T</i></span>)<sup class="sup">+</sup>) : =><span id="Variable1210_T"><i class="var">T</i></span></code></pre></div>

  <code><span class="name"><a href="#Name_choice">choice</a></span>(<i class="var">Y</i>, ...)</code> selects one of its arguments, then computes it.
  It is associative and commutative.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_choice">choice</a></span>(<span id="Variable1250_X*"><i class="var">X<sup class="sup">*</sup></i></span>, <span id="Variable1255_Y"><i class="var">Y</i></span>, <span id="Variable1261_Z*"><i class="var">Z<sup class="sup">*</sup></i></span>) ~> <a href="#Variable1255_Y"><i class="var">Y</i></a></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_if-true-else">if-true-else</span></span>(_:<span class="name"><a href="../../../Values/Primitive/Booleans/index.html#Name_booleans">booleans</a></span>, _:=><span id="Variable1295_T"><i class="var">T</i></span>, _:=><span id="Variable1308_T"><i class="var">T</i></span>) : =><span id="Variable1325_T"><i class="var">T</i></span>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_if-else">if-else</span></span> = <span class="name"><a href="#Name_if-true-else">if-true-else</a></span></code></pre></div>


  <code><span class="name"><a href="#Name_if-true-else">if-true-else</a></span>(<i class="var">B</i>, <i class="var">X</i>, <i class="var">Y</i>)</code> evaluates <code><i class="var">B</i></code> to a Boolean value, then reduces
  to <code><i class="var">X</i></code> or <code><i class="var">Y</i></code>, depending on the value of <code><i class="var">B</i></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_if-true-else">if-true-else</a></span>(<span class="name"><a href="../../../Values/Primitive/Booleans/index.html#Name_true">true</a></span>, <span id="Variable1429_X"><i class="var">X</i></span>, <span id="Variable1434_Y"><i class="var">Y</i></span>) ~> <a href="#Variable1429_X"><i class="var">X</i></a>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_if-true-else">if-true-else</a></span>(<span class="name"><a href="../../../Values/Primitive/Booleans/index.html#Name_false">false</a></span>, <span id="Variable1458_X"><i class="var">X</i></span>, <span id="Variable1463_Y"><i class="var">Y</i></span>) ~> <a href="#Variable1463_Y"><i class="var">Y</i></a></code></pre></div>



#### Iterating


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_while-true">while-true</span></span>(<span id="Variable1501_B"><i class="var">B</i></span>:=><span class="name"><a href="../../../Values/Primitive/Booleans/index.html#Name_booleans">booleans</a></span>, <span id="Variable1512_X"><i class="var">X</i></span>:=><span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>) : =><span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
    ~> <span class="name"><a href="#Name_if-true-else">if-true-else</a></span>(<a href="#Variable1501_B"><i class="var">B</i></a>, <span class="name"><a href="#Name_sequential">sequential</a></span>(<a href="#Variable1512_X"><i class="var">X</i></a>, <span class="name"><a href="#Name_while-true">while-true</a></span>(<a href="#Variable1501_B"><i class="var">B</i></a>, <a href="#Variable1512_X"><i class="var">X</i></a>)), <span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>)
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_while">while</span></span> = <span class="name"><a href="#Name_while-true">while-true</a></span></code></pre></div>


  <code><span class="name"><a href="#Name_while-true">while-true</a></span>(<i class="var">B</i>, <i class="var">X</i>)</code> evaluates <code><i class="var">B</i></code> to a Boolean value. Depending on the value
  of <code><i class="var">B</i></code>, it either executes <code><i class="var">X</i></code> and iterates, or terminates normally.

  The effect of abruptly breaking the iteration is obtained by the combination
  <code><span class="name"><a href="../../Abnormal/Breaking/index.html#Name_handle-break">handle-break</a></span>(<span class="name"><a href="#Name_while-true">while-true</a></span>(<i class="var">B</i>, <i class="var">X</i>))</code>, and that of abruptly continuing the iteration by
  <code><span class="name"><a href="#Name_while-true">while-true</a></span>(<i class="var">B</i>, <span class="name"><a href="../../Abnormal/Continuing/index.html#Name_handle-continue">handle-continue</a></span>(<i class="var">X</i>))</code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_do-while-true">do-while-true</span></span>(<span id="Variable1724_X"><i class="var">X</i></span>:=><span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>, <span id="Variable1735_B"><i class="var">B</i></span>:=><span class="name"><a href="../../../Values/Primitive/Booleans/index.html#Name_booleans">booleans</a></span>) : =><span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-type">null-type</a></span>
    ~> <span class="name"><a href="#Name_sequential">sequential</a></span>(<a href="#Variable1724_X"><i class="var">X</i></a>, <span class="name"><a href="#Name_if-true-else">if-true-else</a></span>(<a href="#Variable1735_B"><i class="var">B</i></a>, <span class="name"><a href="#Name_do-while-true">do-while-true</a></span>(<a href="#Variable1724_X"><i class="var">X</i></a>, <a href="#Variable1735_B"><i class="var">B</i></a>), <span class="name"><a href="../../../Values/Primitive/Null/index.html#Name_null-value">null-value</a></span>))
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_do-while">do-while</span></span> = <span class="name"><a href="#Name_do-while-true">do-while-true</a></span></code></pre></div>


  <code><span class="name"><a href="#Name_do-while-true">do-while-true</a></span>(<i class="var">X</i>, <i class="var">B</i>)</code> is equivalent to <code><span class="name"><a href="#Name_sequential">sequential</a></span>(<i class="var">X</i>, <span class="name"><a href="#Name_while-true">while-true</a></span>(<i class="var">B</i>, <i class="var">X</i>))</code>.



#### Interleaving

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_interleave">interleave</span></span>(_:<span id="Variable1899_T*"><i class="var">T<sup class="sup">*</sup></i></span>) : =><span id="Variable1914_T*"><i class="var">T<sup class="sup">*</sup></i></span></code></pre></div>

  <code><span class="name"><a href="#Name_interleave">interleave</a></span>(...)</code> computes its arguments in any order, possibly interleaved,
  and returns the resulting sequence of values, provided all terminate normally.
  Fairness of interleaving is not required, so pure left-to-right computation
  is allowed.

  <code><span class="name"><a href="#Name_atomic">atomic</a></span>(<i class="var">X</i>)</code> prevents interleaving in <code><i class="var">X</i></code>, except after transitions that emit
  a <code><span class="name"><a href="#Name_yielded">yielded</a></span>(<span class="name"><a href="#Name_signal">signal</a></span>)</code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_interleave">interleave</a></span>(<span id="Variable1998_V*"><i class="var">V<sup class="sup">*</sup></i></span>:<i class="var">T<sup class="sup">*</sup></i>) ~> <a href="#Variable1998_V*"><i class="var">V<sup class="sup">*</sup></i></a></code></pre></div>



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
  <span class="name"><span id="Name_yield-on-value">yield-on-value</span></span>(_:<span id="Variable2110_T"><i class="var">T</i></span>) : =><span id="Variable2124_T"><i class="var">T</i></span></code></pre></div>

  <code><span class="name"><a href="#Name_yield-on-value">yield-on-value</a></span>(<i class="var">X</i>)</code> allows interleaving in an enclosing atomic computation
  on normal termination of <code><i class="var">X</i></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_yield-on-value">yield-on-value</a></span>(<span id="Variable2173_V"><i class="var">V</i></span>:<i class="var">T</i>) --<span class="ent-name"><a href="#Name_yielded">yielded</a></span>(<span class="name"><a href="#Name_signal">signal</a></span>)-> <a href="#Variable2173_V"><i class="var">V</i></a></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_yield-on-abrupt">yield-on-abrupt</span></span>(_:=><span id="Variable2220_T"><i class="var">T</i></span>) : =><span id="Variable2235_T"><i class="var">T</i></span></code></pre></div>

  <code><span class="name"><a href="#Name_yield-on-abrupt">yield-on-abrupt</a></span>(<i class="var">X</i>)</code> ensures that abrupt termination of <code><i class="var">X</i></code> is propagated
  through an enclosing atomic computation.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
                   <a href="#Variable2341_X"><i class="var">X</i></a> --<span class="ent-name"><a href="../../Abnormal/Abrupting/index.html#Name_abrupt">abrupt</a></span>(<span id="Variable2291_V"><i class="var">V</i></span>:<i class="var">T</i>),<span class="ent-name"><a href="#Name_yielded">yielded</a></span>(_?)-> <span id="Variable2328_X'"><i class="var">X&prime;</i></span>
  --------------------------------------------------------------------
  <span class="name"><a href="#Name_yield-on-abrupt">yield-on-abrupt</a></span>(<span id="Variable2341_X"><i class="var">X</i></span>) --<span class="ent-name"><a href="../../Abnormal/Abrupting/index.html#Name_abrupt">abrupt</a></span>(<a href="#Variable2291_V"><i class="var">V</i></a>),<span class="ent-name"><a href="#Name_yielded">yielded</a></span>(<span class="name"><a href="#Name_signal">signal</a></span>)-> <span class="name"><a href="#Name_yield-on-abrupt">yield-on-abrupt</a></span>(<a href="#Variable2328_X'"><i class="var">X&prime;</i></a>)
<i class="keyword">Rule</i>
                   <a href="#Variable2432_X"><i class="var">X</i></a> --<span class="ent-name"><a href="../../Abnormal/Abrupting/index.html#Name_abrupt">abrupt</a></span>( )-> <span id="Variable2419_X'"><i class="var">X&prime;</i></span>
  ----------------------------------------------------
  <span class="name"><a href="#Name_yield-on-abrupt">yield-on-abrupt</a></span>(<span id="Variable2432_X"><i class="var">X</i></span>) --<span class="ent-name"><a href="../../Abnormal/Abrupting/index.html#Name_abrupt">abrupt</a></span>( )-> <span class="name"><a href="#Name_yield-on-abrupt">yield-on-abrupt</a></span>(<a href="#Variable2419_X'"><i class="var">X&prime;</i></a>)
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_yield-on-abrupt">yield-on-abrupt</a></span>(<span id="Variable2474_V"><i class="var">V</i></span>:<i class="var">T</i>) ~> <a href="#Variable2474_V"><i class="var">V</i></a></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_atomic">atomic</span></span>(_:=><span id="Variable2504_T"><i class="var">T</i></span>) : =><span id="Variable2519_T"><i class="var">T</i></span></code></pre></div>

  <code><span class="name"><a href="#Name_atomic">atomic</a></span>(<i class="var">X</i>)</code> computes <code><i class="var">X</i></code>, but controls its potential interleaving with other
  computations: interleaving is only allowed following a transition of <code><i class="var">X</i></code> that
  emits <code><span class="name"><a href="#Name_yielded">yielded</a></span>(<span class="name"><a href="#Name_signal">signal</a></span>)</code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
                   <a href="#Variable2667_X"><i class="var">X</i></a> --<span class="ent-name"><a href="#Name_yielded">yielded</a></span>( )->1 <span id="Variable2617_X'"><i class="var">X&prime;</i></span>
          <span class="name"><a href="#Name_atomic">atomic</a></span>(<a href="#Variable2617_X'"><i class="var">X&prime;</i></a>) --<span class="ent-name"><a href="#Name_yielded">yielded</a></span>( )->2 <span id="Variable2653_X''"><i class="var">X&prime;&prime;</i></span>
  -----------------------------------------------
  <span class="name"><a href="#Name_atomic">atomic</a></span>(<span id="Variable2667_X"><i class="var">X</i></span>) --<span class="ent-name"><a href="#Name_yielded">yielded</a></span>( )->1 ; --<span class="ent-name"><a href="#Name_yielded">yielded</a></span>( )->2 <a href="#Variable2653_X''"><i class="var">X&prime;&prime;</i></a>
<i class="keyword">Rule</i>
          <a href="#Variable2762_X"><i class="var">X</i></a> --<span class="ent-name"><a href="#Name_yielded">yielded</a></span>( )-> <span id="Variable2735_V"><i class="var">V</i></span>
                <a href="#Variable2735_V"><i class="var">V</i></a> : <i class="var">T</i>
  ---------------------------
  <span class="name"><a href="#Name_atomic">atomic</a></span>(<span id="Variable2762_X"><i class="var">X</i></span>) --<span class="ent-name"><a href="#Name_yielded">yielded</a></span>( )-> <a href="#Variable2735_V"><i class="var">V</i></a>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_atomic">atomic</a></span>(<span id="Variable2796_V"><i class="var">V</i></span>:<i class="var">T</i>) ~> <a href="#Variable2796_V"><i class="var">V</i></a>
<i class="keyword">Rule</i>
          <a href="#Variable2857_X"><i class="var">X</i></a> --<span class="ent-name"><a href="#Name_yielded">yielded</a></span>(<span class="name"><a href="#Name_signal">signal</a></span>)-> <span id="Variable2844_X'"><i class="var">X&prime;</i></span>
  -----------------------------------
  <span class="name"><a href="#Name_atomic">atomic</a></span>(<span id="Variable2857_X"><i class="var">X</i></span>) --<span class="ent-name"><a href="#Name_yielded">yielded</a></span>( )-> <span class="name"><a href="#Name_atomic">atomic</a></span>(<a href="#Variable2844_X'"><i class="var">X&prime;</i></a>)</code></pre></div>



____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[Flowing.cbs]: Flowing.cbs 
  "CBS SOURCE FILE"
[Funcons-beta]: /CBS-beta/docs/Funcons-beta
  "FUNCONS-BETA"
[Unstable-Funcons-beta]: /CBS-beta/docs/Unstable-Funcons-beta
  "UNSTABLE-FUNCONS-BETA"
[Languages-beta]: /CBS-beta/docs/Languages-beta
  "LANGUAGES-BETA"
[Unstable-Languages-beta]: /CBS-beta/docs/Unstable-Languages-beta
  "UNSTABLE-LANGUAGES-BETA"
[CBS-beta]: /CBS-beta "CBS-BETA"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Computations/Normal/Flowing/Flowing.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
