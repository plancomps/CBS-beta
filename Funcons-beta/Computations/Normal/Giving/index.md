---
layout: default
title: "Giving"
parent: Normal
ancestor: Funcons-beta

---

[Funcons-beta] : [Giving.cbs]
-----------------------------

### Giving

<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Entity</i> <span class="name"><a href="#Name_given-value">given-value</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_initialise-giving">initialise-giving</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_give">give</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_given">given</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_no-given">no-given</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_left-to-right-map">left-to-right-map</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_interleave-map">interleave-map</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_left-to-right-repeat">left-to-right-repeat</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_interleave-repeat">interleave-repeat</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_left-to-right-filter">left-to-right-filter</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_interleave-filter">interleave-filter</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_fold-left">fold-left</a></span>
  <i class="keyword">Funcon</i> <span class="name"><a href="#Name_fold-right">fold-right</a></span>
]</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Meta-variables</i>
  <span id="PartVariable_T"><i class="var">T</i></span>, <span id="PartVariable_T'"><i class="var">T&prime;</i></span> <: <span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span>
  <span id="PartVariable_T?"><i class="var">T<sup class="sup">?</sup></i></span> <: <span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span><sup class="sup">?</sup></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Entity</i>
  <span class="ent-name"><span id="Name_given-value">given-value</span></span>(_:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span><sup class="sup">?</sup>) |- _ ---> _</code></pre></div>


  The given-value entity allows a computation to refer to a single
  previously-computed <code><i class="var">V</i>:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span></code>. The given value <code>( )</code> represents 
  the absence of a current given value.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_initialise-giving">initialise-giving</span></span>(<span id="Variable146_X"><i class="var">X</i></span>:( )=><span id="Variable156_T'"><i class="var">T&prime;</i></span>) : ( )=><span id="Variable176_T'"><i class="var">T&prime;</i></span>
   ~> <span class="name"><a href="#Name_no-given">no-given</a></span>(<a href="#Variable146_X"><i class="var">X</i></a>)</code></pre></div>


  <code><span class="name"><a href="#Name_initialise-giving">initialise-giving</a></span>(<i class="var">X</i>)</code> ensures that the entities used by the funcons for
  giving are properly initialised.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_give">give</span></span>(_:<span id="Variable227_T"><i class="var">T</i></span>, _:<span id="Variable238_T"><i class="var">T</i></span>=><span id="Variable245_T'"><i class="var">T&prime;</i></span>) : =><span id="Variable262_T'"><i class="var">T&prime;</i></span></code></pre></div>

  <code><span class="name"><a href="#Name_give">give</a></span>(<i class="var">X</i>, <i class="var">Y</i>)</code> executes <code><i class="var">X</i></code>, possibly referring to the current <code><span class="name"><a href="#Name_given">given</a></span></code> value,
  to compute a value <code><i class="var">V</i></code>. It then executes <code><i class="var">Y</i></code> with <code><i class="var">V</i></code> as the <code><span class="name"><a href="#Name_given">given</a></span></code> value,
  to compute the result.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="ent-name"><a href="#Name_given-value">given-value</a></span>(<a href="#Variable429_V"><i class="var">V</i></a>) |- <a href="#Variable440_Y"><i class="var">Y</i></a> ---> <span id="Variable400_Y'"><i class="var">Y&prime;</i></span>
  ------------------------------------------------
  <span class="ent-name"><a href="#Name_given-value">given-value</a></span>(_?) |- <span class="name"><a href="#Name_give">give</a></span>(<span id="Variable429_V"><i class="var">V</i></span>:<i class="var">T</i>, <span id="Variable440_Y"><i class="var">Y</i></span>) ---> <span class="name"><a href="#Name_give">give</a></span>(<a href="#Variable429_V"><i class="var">V</i></a>, <a href="#Variable400_Y'"><i class="var">Y&prime;</i></a>)
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_give">give</a></span>(_:<i class="var">T</i>, <span id="Variable489_W"><i class="var">W</i></span>:<i class="var">T&prime;</i>) ~> <a href="#Variable489_W"><i class="var">W</i></a></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_given">given</span></span> : <span id="Variable518_T"><i class="var">T</i></span>=><span id="Variable524_T"><i class="var">T</i></span></code></pre></div>

  <code><span class="name"><a href="#Name_given">given</a></span></code> refers to the current given value.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="ent-name"><a href="#Name_given-value">given-value</a></span>(<span id="Variable549_V"><i class="var">V</i></span>:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span>) |- <span class="name"><a href="#Name_given">given</a></span> ---> <a href="#Variable549_V"><i class="var">V</i></a>
<i class="keyword">Rule</i>
  <span class="ent-name"><a href="#Name_given-value">given-value</a></span>( ) |- <span class="name"><a href="#Name_given">given</a></span> ---> <span class="name"><a href="../../Abnormal/Failing/index.html#Name_fail">fail</a></span></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_no-given">no-given</span></span>(_:( )=><span id="Variable614_T'"><i class="var">T&prime;</i></span>) : ( )=><span id="Variable634_T'"><i class="var">T&prime;</i></span></code></pre></div>

  <code><span class="name"><a href="#Name_no-given">no-given</a></span>(<i class="var">X</i>)</code> computes <code><i class="var">X</i></code> without references to the current given value.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
         <span class="ent-name"><a href="#Name_given-value">given-value</a></span>( ) |- <a href="#Variable730_X"><i class="var">X</i></a> ---> <span id="Variable701_X'"><i class="var">X&prime;</i></span>
  ------------------------------------------------
  <span class="ent-name"><a href="#Name_given-value">given-value</a></span>(_?) |- <span class="name"><a href="#Name_no-given">no-given</a></span>(<span id="Variable730_X"><i class="var">X</i></span>) ---> <span class="name"><a href="#Name_no-given">no-given</a></span>(<a href="#Variable701_X'"><i class="var">X&prime;</i></a>)
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_no-given">no-given</a></span>(<span id="Variable762_U"><i class="var">U</i></span>:<i class="var">T&prime;</i>) ~> <a href="#Variable762_U"><i class="var">U</i></a></code></pre></div>



#### Mapping


  Maps on collection values can be expressed directly, e.g.,
  <code><span class="name"><a href="../../../Values/Composite/Lists/index.html#Name_list">list</a></span>(<span class="name"><a href="#Name_left-to-right-map">left-to-right-map</a></span>(<i class="var">F</i>, <span class="name"><a href="../../../Values/Composite/Lists/index.html#Name_list-elements">list-elements</a></span>(<i class="var">L</i>)))</code>.


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_left-to-right-map">left-to-right-map</span></span>(_:<span id="Variable860_T"><i class="var">T</i></span>=><span id="Variable867_T'"><i class="var">T&prime;</i></span>, _:(<span id="Variable879_T"><i class="var">T</i></span>)<sup class="sup">*</sup>) : =>(<span id="Variable902_T'"><i class="var">T&prime;</i></span>)<sup class="sup">*</sup></code></pre></div>

  <code><span class="name"><a href="#Name_left-to-right-map">left-to-right-map</a></span>(<i class="var">F</i>, <i class="var">V<sup class="sup">*</sup></i>)</code> computes <code><i class="var">F</i></code> for each value in <code><i class="var">V<sup class="sup">*</sup></i></code> from left
  to right, returning the sequence of resulting values.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_left-to-right-map">left-to-right-map</a></span>(<span id="Variable978_F"><i class="var">F</i></span>, <span id="Variable983_V"><i class="var">V</i></span>:<i class="var">T</i>, <span id="Variable995_V*"><i class="var">V<sup class="sup">*</sup></i></span>:(<i class="var">T</i>)<sup class="sup">*</sup>)
    ~> <span class="name"><a href="../Flowing/index.html#Name_left-to-right">left-to-right</a></span>(<span class="name"><a href="#Name_give">give</a></span>(<a href="#Variable983_V"><i class="var">V</i></a>, <a href="#Variable978_F"><i class="var">F</i></a>), <span class="name"><a href="#Name_left-to-right-map">left-to-right-map</a></span>(<a href="#Variable978_F"><i class="var">F</i></a>, <a href="#Variable995_V*"><i class="var">V<sup class="sup">*</sup></i></a>))
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_left-to-right-map">left-to-right-map</a></span>(_, ( )) ~> ( )</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_interleave-map">interleave-map</span></span>(_:<span id="Variable1096_T"><i class="var">T</i></span>=><span id="Variable1103_T'"><i class="var">T&prime;</i></span>, _:(<span id="Variable1115_T"><i class="var">T</i></span>)<sup class="sup">*</sup>) : =>(<span id="Variable1138_T'"><i class="var">T&prime;</i></span>)<sup class="sup">*</sup></code></pre></div>

  <code><span class="name"><a href="#Name_interleave-map">interleave-map</a></span>(<i class="var">F</i>, <i class="var">V<sup class="sup">*</sup></i>)</code> computes <code><i class="var">F</i></code> for each value in <code><i class="var">V<sup class="sup">*</sup></i></code> interleaved, 
  returning the sequence of resulting values.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_interleave-map">interleave-map</a></span>(<span id="Variable1214_F"><i class="var">F</i></span>, <span id="Variable1219_V"><i class="var">V</i></span>:<i class="var">T</i>, <span id="Variable1231_V*"><i class="var">V<sup class="sup">*</sup></i></span>:(<i class="var">T</i>)<sup class="sup">*</sup>)
    ~> <span class="name"><a href="../Flowing/index.html#Name_interleave">interleave</a></span>(<span class="name"><a href="#Name_give">give</a></span>(<a href="#Variable1219_V"><i class="var">V</i></a>, <a href="#Variable1214_F"><i class="var">F</i></a>), <span class="name"><a href="#Name_interleave-map">interleave-map</a></span>(<a href="#Variable1214_F"><i class="var">F</i></a>, <a href="#Variable1231_V*"><i class="var">V<sup class="sup">*</sup></i></a>))
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_interleave-map">interleave-map</a></span>(_, ( )) ~> ( )</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_left-to-right-repeat">left-to-right-repeat</span></span>(_:<span class="name"><a href="../../../Values/Primitive/Integers/index.html#Name_integers">integers</a></span>=><span id="Variable1336_T'"><i class="var">T&prime;</i></span>, _:<span class="name"><a href="../../../Values/Primitive/Integers/index.html#Name_integers">integers</a></span>, _:<span class="name"><a href="../../../Values/Primitive/Integers/index.html#Name_integers">integers</a></span>) : =>(<span id="Variable1370_T'"><i class="var">T&prime;</i></span>)<sup class="sup">*</sup></code></pre></div>

  <code><span class="name"><a href="#Name_left-to-right-repeat">left-to-right-repeat</a></span>(<i class="var">F</i>, <i class="var">M</i>, <i class="var">N</i>)</code> computes <code><i class="var">F</i></code> for each value from <code><i class="var">M</i></code> to <code><i class="var">N</i></code> 
  sequentially, returning the sequence of resulting values.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="../../../Values/Primitive/Integers/index.html#Name_is-less-or-equal">is-less-or-equal</a></span>(<a href="#Variable1493_M"><i class="var">M</i></a>, <a href="#Variable1501_N"><i class="var">N</i></a>) == <span class="name"><a href="../../../Values/Primitive/Booleans/index.html#Name_true">true</a></span>
  -------------------------------------------------------------------------
  <span class="name"><a href="#Name_left-to-right-repeat">left-to-right-repeat</a></span>(<span id="Variable1488_F"><i class="var">F</i></span>, <span id="Variable1493_M"><i class="var">M</i></span>:<span class="name"><a href="../../../Values/Primitive/Integers/index.html#Name_integers">integers</a></span>, <span id="Variable1501_N"><i class="var">N</i></span>:<span class="name"><a href="../../../Values/Primitive/Integers/index.html#Name_integers">integers</a></span>)
    ~> <span class="name"><a href="../Flowing/index.html#Name_left-to-right">left-to-right</a></span>(<span class="name"><a href="#Name_give">give</a></span>(<a href="#Variable1493_M"><i class="var">M</i></a>, <a href="#Variable1488_F"><i class="var">F</i></a>), <span class="name"><a href="#Name_left-to-right-repeat">left-to-right-repeat</a></span>(<a href="#Variable1488_F"><i class="var">F</i></a>, <span class="name"><a href="../../../Values/Primitive/Integers/index.html#Name_int-add">int-add</a></span>(<a href="#Variable1493_M"><i class="var">M</i></a>, 1), <a href="#Variable1501_N"><i class="var">N</i></a>))
<i class="keyword">Rule</i>
  <span class="name"><a href="../../../Values/Primitive/Integers/index.html#Name_is-less-or-equal">is-less-or-equal</a></span>(<a href="#Variable1610_M"><i class="var">M</i></a>, <a href="#Variable1618_N"><i class="var">N</i></a>) == <span class="name"><a href="../../../Values/Primitive/Booleans/index.html#Name_false">false</a></span>
  ----------------------------------------------
  <span class="name"><a href="#Name_left-to-right-repeat">left-to-right-repeat</a></span>(_, <span id="Variable1610_M"><i class="var">M</i></span>:<span class="name"><a href="../../../Values/Primitive/Integers/index.html#Name_integers">integers</a></span>, <span id="Variable1618_N"><i class="var">N</i></span>:<span class="name"><a href="../../../Values/Primitive/Integers/index.html#Name_integers">integers</a></span>) ~> ( )</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_interleave-repeat">interleave-repeat</span></span>(_:<span class="name"><a href="../../../Values/Primitive/Integers/index.html#Name_integers">integers</a></span>=><span id="Variable1649_T'"><i class="var">T&prime;</i></span>, _:<span class="name"><a href="../../../Values/Primitive/Integers/index.html#Name_integers">integers</a></span>, _:<span class="name"><a href="../../../Values/Primitive/Integers/index.html#Name_integers">integers</a></span>) : =>(<span id="Variable1683_T'"><i class="var">T&prime;</i></span>)<sup class="sup">*</sup></code></pre></div>

  <code><span class="name"><a href="#Name_interleave-repeat">interleave-repeat</a></span>(<i class="var">F</i>, <i class="var">M</i>, <i class="var">N</i>)</code> computes <code><i class="var">F</i></code> for each value from <code><i class="var">M</i></code> to <code><i class="var">N</i></code> 
  interleaved, returning the sequence of resulting values.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="../../../Values/Primitive/Integers/index.html#Name_is-less-or-equal">is-less-or-equal</a></span>(<a href="#Variable1806_M"><i class="var">M</i></a>, <a href="#Variable1814_N"><i class="var">N</i></a>) == <span class="name"><a href="../../../Values/Primitive/Booleans/index.html#Name_true">true</a></span>
  -------------------------------------------------------------------
  <span class="name"><a href="#Name_interleave-repeat">interleave-repeat</a></span>(<span id="Variable1801_F"><i class="var">F</i></span>, <span id="Variable1806_M"><i class="var">M</i></span>:<span class="name"><a href="../../../Values/Primitive/Integers/index.html#Name_integers">integers</a></span>, <span id="Variable1814_N"><i class="var">N</i></span>:<span class="name"><a href="../../../Values/Primitive/Integers/index.html#Name_integers">integers</a></span>)
    ~> <span class="name"><a href="../Flowing/index.html#Name_interleave">interleave</a></span>(<span class="name"><a href="#Name_give">give</a></span>(<a href="#Variable1806_M"><i class="var">M</i></a>, <a href="#Variable1801_F"><i class="var">F</i></a>), <span class="name"><a href="#Name_interleave-repeat">interleave-repeat</a></span>(<a href="#Variable1801_F"><i class="var">F</i></a>, <span class="name"><a href="../../../Values/Primitive/Integers/index.html#Name_int-add">int-add</a></span>(<a href="#Variable1806_M"><i class="var">M</i></a>, 1), <a href="#Variable1814_N"><i class="var">N</i></a>))
<i class="keyword">Rule</i>
  <span class="name"><a href="../../../Values/Primitive/Integers/index.html#Name_is-less-or-equal">is-less-or-equal</a></span>(<a href="#Variable1923_M"><i class="var">M</i></a>, <a href="#Variable1931_N"><i class="var">N</i></a>) == <span class="name"><a href="../../../Values/Primitive/Booleans/index.html#Name_false">false</a></span>
  -------------------------------------------
  <span class="name"><a href="#Name_interleave-repeat">interleave-repeat</a></span>(_, <span id="Variable1923_M"><i class="var">M</i></span>:<span class="name"><a href="../../../Values/Primitive/Integers/index.html#Name_integers">integers</a></span>, <span id="Variable1931_N"><i class="var">N</i></span>:<span class="name"><a href="../../../Values/Primitive/Integers/index.html#Name_integers">integers</a></span>) ~> ( )</code></pre></div>



#### Filtering


 Filters on collections of values can be expressed directly, e.g., 
 <code><span class="name"><a href="../../../Values/Composite/Lists/index.html#Name_list">list</a></span>(<span class="name"><a href="#Name_left-to-right-filter">left-to-right-filter</a></span>(<i class="var">P</i>, <span class="name"><a href="../../../Values/Composite/Lists/index.html#Name_list-elements">list-elements</a></span>(<i class="var">L</i>)))</code> to filter a list <code><i class="var">L</i></code>.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_left-to-right-filter">left-to-right-filter</span></span>(_:<span id="Variable2042_T"><i class="var">T</i></span>=><span class="name"><a href="../../../Values/Primitive/Booleans/index.html#Name_booleans">booleans</a></span>, _:(<span id="Variable2057_T"><i class="var">T</i></span>)<sup class="sup">*</sup>) : =>(<span id="Variable2079_T"><i class="var">T</i></span>)<sup class="sup">*</sup></code></pre></div>

  <code><span class="name"><a href="#Name_left-to-right-filter">left-to-right-filter</a></span>(<i class="var">P</i>, <i class="var">V<sup class="sup">*</sup></i>)</code> computes <code><i class="var">P</i></code> for each value in <code><i class="var">V<sup class="sup">*</sup></i></code> from left
  to right, returning the sequence of argument values for which the result is
  <code><span class="name"><a href="../../../Values/Primitive/Booleans/index.html#Name_true">true</a></span></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_left-to-right-filter">left-to-right-filter</a></span>(<span id="Variable2165_P"><i class="var">P</i></span>, <span id="Variable2170_V"><i class="var">V</i></span>:<i class="var">T</i>, <span id="Variable2182_V*"><i class="var">V<sup class="sup">*</sup></i></span>:(<i class="var">T</i>)<sup class="sup">*</sup>)
   ~> <span class="name"><a href="../Flowing/index.html#Name_left-to-right">left-to-right</a></span>(<span class="name"><a href="../../../Values/Value-Types/index.html#Name_when-true">when-true</a></span>(<span class="name"><a href="#Name_give">give</a></span>(<a href="#Variable2170_V"><i class="var">V</i></a>, <a href="#Variable2165_P"><i class="var">P</i></a>), <a href="#Variable2170_V"><i class="var">V</i></a>), <span class="name"><a href="#Name_left-to-right-filter">left-to-right-filter</a></span>(<a href="#Variable2165_P"><i class="var">P</i></a>, <a href="#Variable2182_V*"><i class="var">V<sup class="sup">*</sup></i></a>))
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_left-to-right-filter">left-to-right-filter</a></span>(_) ~> ( )</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_interleave-filter">interleave-filter</span></span>(_:<span id="Variable2291_T"><i class="var">T</i></span>=><span class="name"><a href="../../../Values/Primitive/Booleans/index.html#Name_booleans">booleans</a></span>, _:(<span id="Variable2306_T"><i class="var">T</i></span>)<sup class="sup">*</sup>) : =>(<span id="Variable2328_T"><i class="var">T</i></span>)<sup class="sup">*</sup></code></pre></div>

  <code><span class="name"><a href="#Name_interleave-filter">interleave-filter</a></span>(<i class="var">P</i>, <i class="var">V<sup class="sup">*</sup></i>)</code> computes <code><i class="var">P</i></code> for each value in <code><i class="var">V<sup class="sup">*</sup></i></code> interleaved,
  returning the sequence of argument values for which the result is <code><span class="name"><a href="../../../Values/Primitive/Booleans/index.html#Name_true">true</a></span></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_interleave-filter">interleave-filter</a></span>(<span id="Variable2414_P"><i class="var">P</i></span>, <span id="Variable2419_V"><i class="var">V</i></span>:<i class="var">T</i>, <span id="Variable2431_V*"><i class="var">V<sup class="sup">*</sup></i></span>:(<i class="var">T</i>)<sup class="sup">*</sup>)
   ~> <span class="name"><a href="../Flowing/index.html#Name_interleave">interleave</a></span>(<span class="name"><a href="../../../Values/Value-Types/index.html#Name_when-true">when-true</a></span>(<span class="name"><a href="#Name_give">give</a></span>(<a href="#Variable2419_V"><i class="var">V</i></a>, <a href="#Variable2414_P"><i class="var">P</i></a>), <a href="#Variable2419_V"><i class="var">V</i></a>), <span class="name"><a href="#Name_interleave-filter">interleave-filter</a></span>(<a href="#Variable2414_P"><i class="var">P</i></a>, <a href="#Variable2431_V*"><i class="var">V<sup class="sup">*</sup></i></a>))
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_interleave-filter">interleave-filter</a></span>(_) ~> ( )</code></pre></div>



#### Folding

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_fold-left">fold-left</span></span>(_:<span class="name"><a href="../../../Values/Composite/Tuples/index.html#Name_tuples">tuples</a></span>(<span id="Variable2558_T"><i class="var">T</i></span>,<span id="Variable2564_T'"><i class="var">T&prime;</i></span>)=><span id="Variable2577_T"><i class="var">T</i></span>, _:<span id="Variable2589_T"><i class="var">T</i></span>, _:(<span id="Variable2601_T'"><i class="var">T&prime;</i></span>)<sup class="sup">*</sup>) : =><span id="Variable2624_T"><i class="var">T</i></span></code></pre></div>

  <code><span class="name"><a href="#Name_fold-left">fold-left</a></span>(<i class="var">F</i>, <i class="var">A</i>, <i class="var">V<sup class="sup">*</sup></i>)</code> reduces a sequence <code><i class="var">V<sup class="sup">*</sup></i></code> to a single value by folding it
  from the left, using <code><i class="var">A</i></code> as the initial accumulator value, and iteratively
  updating the accumulator by giving <code><i class="var">F</i></code> the pair of the accumulator value and
  the first of the remaining arguments.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_fold-left">fold-left</a></span>(_, <span id="Variable2716_A"><i class="var">A</i></span>:<i class="var">T</i>, ( )) ~> <a href="#Variable2716_A"><i class="var">A</i></a>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_fold-left">fold-left</a></span>(<span id="Variable2748_F"><i class="var">F</i></span>, <span id="Variable2753_A"><i class="var">A</i></span>:<i class="var">T</i>, <span id="Variable2764_V"><i class="var">V</i></span>:<i class="var">T&prime;</i>, <span id="Variable2777_V*"><i class="var">V<sup class="sup">*</sup></i></span>:(<i class="var">T&prime;</i>)<sup class="sup">*</sup>) ~> <span class="name"><a href="#Name_fold-left">fold-left</a></span>(<a href="#Variable2748_F"><i class="var">F</i></a>, <span class="name"><a href="#Name_give">give</a></span>(<span class="name"><a href="../../../Values/Composite/Tuples/index.html#Name_tuple">tuple</a></span>(<a href="#Variable2753_A"><i class="var">A</i></a>, <a href="#Variable2764_V"><i class="var">V</i></a>), <a href="#Variable2748_F"><i class="var">F</i></a>), <a href="#Variable2777_V*"><i class="var">V<sup class="sup">*</sup></i></a>)</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_fold-right">fold-right</span></span>(_:<span class="name"><a href="../../../Values/Composite/Tuples/index.html#Name_tuples">tuples</a></span>(<span id="Variable2864_T"><i class="var">T</i></span>,<span id="Variable2870_T'"><i class="var">T&prime;</i></span>)=><span id="Variable2884_T'"><i class="var">T&prime;</i></span>, _:<span id="Variable2897_T'"><i class="var">T&prime;</i></span>, _:(<span id="Variable2908_T"><i class="var">T</i></span>)<sup class="sup">*</sup>) : =><span id="Variable2932_T'"><i class="var">T&prime;</i></span></code></pre></div>

  <code><span class="name"><a href="#Name_fold-right">fold-right</a></span>(<i class="var">F</i>, <i class="var">A</i>, <i class="var">V<sup class="sup">*</sup></i>)</code> reduces a sequence <code><i class="var">V<sup class="sup">*</sup></i></code> to a single value by folding it
  from the right, using <code><i class="var">A</i></code> as the initial accumulator value, and iteratively
  updating the accumulator by giving <code><i class="var">F</i></code> the pair of the the last of the 
  remaining arguments and the accumulator value.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_fold-right">fold-right</a></span>(_, <span id="Variable3024_A"><i class="var">A</i></span>:<i class="var">T&prime;</i>, ( )) ~> <a href="#Variable3024_A"><i class="var">A</i></a>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_fold-right">fold-right</a></span>(<span id="Variable3057_F"><i class="var">F</i></span>, <span id="Variable3062_A"><i class="var">A</i></span>:<i class="var">T&prime;</i>, <span id="Variable3075_V*"><i class="var">V<sup class="sup">*</sup></i></span>:(<i class="var">T</i>)<sup class="sup">*</sup>, <span id="Variable3093_V"><i class="var">V</i></span>:<i class="var">T</i>) ~> <span class="name"><a href="#Name_give">give</a></span>(<span class="name"><a href="../../../Values/Composite/Tuples/index.html#Name_tuple">tuple</a></span>(<a href="#Variable3093_V"><i class="var">V</i></a>, <span class="name"><a href="#Name_fold-right">fold-right</a></span>(<a href="#Variable3057_F"><i class="var">F</i></a>, <a href="#Variable3062_A"><i class="var">A</i></a>, <a href="#Variable3075_V*"><i class="var">V<sup class="sup">*</sup></i></a>)), <a href="#Variable3057_F"><i class="var">F</i></a>)</code></pre></div>



____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[Giving.cbs]: Giving.cbs 
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
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Computations/Normal/Giving/Giving.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
