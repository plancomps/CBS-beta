---
title: "Giving"
parent: Normal
ancestor: Funcons-beta

---

[Funcons-beta] : [Giving.cbs] \| [PRETTY] \| [PDF]

<details open markdown="block">
  <summary>
    Outline
  </summary>
  {: .text-delta }
- TOC
{:toc}
</details>

----
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
  <span class="name"><span id="Name_initialise-giving">initialise-giving</span></span>(<span id="Variable147_X"><i class="var">X</i></span>:( )=><span id="Variable157_T'"><i class="var">T&prime;</i></span>) : ( )=><span id="Variable177_T'"><i class="var">T&prime;</i></span>
   ~> <span class="name"><a href="#Name_no-given">no-given</a></span>(<a href="#Variable147_X"><i class="var">X</i></a>)</code></pre></div>


  <code><span class="name"><a href="#Name_initialise-giving">initialise-giving</a></span>(<i class="var">X</i>)</code> ensures that the entities used by the funcons for
  giving are properly initialised.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_give">give</span></span>(_:<span id="Variable228_T"><i class="var">T</i></span>, _:<span id="Variable239_T"><i class="var">T</i></span>=><span id="Variable246_T'"><i class="var">T&prime;</i></span>) : =><span id="Variable263_T'"><i class="var">T&prime;</i></span></code></pre></div>

  <code><span class="name"><a href="#Name_give">give</a></span>(<i class="var">X</i>, <i class="var">Y</i>)</code> executes <code><i class="var">X</i></code>, possibly referring to the current <code><span class="name"><a href="#Name_given">given</a></span></code> value,
  to compute a value <code><i class="var">V</i></code>. It then executes <code><i class="var">Y</i></code> with <code><i class="var">V</i></code> as the <code><span class="name"><a href="#Name_given">given</a></span></code> value,
  to compute the result.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="ent-name"><a href="#Name_given-value">given-value</a></span>(<a href="#Variable430_V"><i class="var">V</i></a>) |- <a href="#Variable441_Y"><i class="var">Y</i></a> ---> <span id="Variable401_Y'"><i class="var">Y&prime;</i></span>
  ------------------------------------------------
  <span class="ent-name"><a href="#Name_given-value">given-value</a></span>(_?) |- <span class="name"><a href="#Name_give">give</a></span>(<span id="Variable430_V"><i class="var">V</i></span>:<i class="var">T</i>, <span id="Variable441_Y"><i class="var">Y</i></span>) ---> <span class="name"><a href="#Name_give">give</a></span>(<a href="#Variable430_V"><i class="var">V</i></a>, <a href="#Variable401_Y'"><i class="var">Y&prime;</i></a>)
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_give">give</a></span>(_:<i class="var">T</i>, <span id="Variable490_W"><i class="var">W</i></span>:<i class="var">T&prime;</i>) ~> <a href="#Variable490_W"><i class="var">W</i></a></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_given">given</span></span> : <span id="Variable519_T"><i class="var">T</i></span>=><span id="Variable525_T"><i class="var">T</i></span></code></pre></div>

  <code><span class="name"><a href="#Name_given">given</a></span></code> refers to the current given value.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="ent-name"><a href="#Name_given-value">given-value</a></span>(<span id="Variable550_V"><i class="var">V</i></span>:<span class="name"><a href="../../../Values/Value-Types/index.html#Name_values">values</a></span>) |- <span class="name"><a href="#Name_given">given</a></span> ---> <a href="#Variable550_V"><i class="var">V</i></a>
<i class="keyword">Rule</i>
  <span class="ent-name"><a href="#Name_given-value">given-value</a></span>( ) |- <span class="name"><a href="#Name_given">given</a></span> ---> <span class="name"><a href="../../Abnormal/Failing/index.html#Name_fail">fail</a></span></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_no-given">no-given</span></span>(_:( )=><span id="Variable615_T'"><i class="var">T&prime;</i></span>) : ( )=><span id="Variable635_T'"><i class="var">T&prime;</i></span></code></pre></div>

  <code><span class="name"><a href="#Name_no-given">no-given</a></span>(<i class="var">X</i>)</code> computes <code><i class="var">X</i></code> without references to the current given value.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
         <span class="ent-name"><a href="#Name_given-value">given-value</a></span>( ) |- <a href="#Variable731_X"><i class="var">X</i></a> ---> <span id="Variable702_X'"><i class="var">X&prime;</i></span>
  ------------------------------------------------
  <span class="ent-name"><a href="#Name_given-value">given-value</a></span>(_?) |- <span class="name"><a href="#Name_no-given">no-given</a></span>(<span id="Variable731_X"><i class="var">X</i></span>) ---> <span class="name"><a href="#Name_no-given">no-given</a></span>(<a href="#Variable702_X'"><i class="var">X&prime;</i></a>)
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_no-given">no-given</a></span>(<span id="Variable763_U"><i class="var">U</i></span>:<i class="var">T&prime;</i>) ~> <a href="#Variable763_U"><i class="var">U</i></a></code></pre></div>



#### Mapping


  Maps on collection values can be expressed directly, e.g.,
  <code><span class="name"><a href="../../../Values/Composite/Lists/index.html#Name_list">list</a></span>(<span class="name"><a href="#Name_left-to-right-map">left-to-right-map</a></span>(<i class="var">F</i>, <span class="name"><a href="../../../Values/Composite/Lists/index.html#Name_list-elements">list-elements</a></span>(<i class="var">L</i>)))</code>.


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_left-to-right-map">left-to-right-map</span></span>(_:<span id="Variable862_T"><i class="var">T</i></span>=><span id="Variable869_T'"><i class="var">T&prime;</i></span>, _:(<span id="Variable881_T"><i class="var">T</i></span>)<sup class="sup">*</sup>) : =>(<span id="Variable904_T'"><i class="var">T&prime;</i></span>)<sup class="sup">*</sup></code></pre></div>

  <code><span class="name"><a href="#Name_left-to-right-map">left-to-right-map</a></span>(<i class="var">F</i>, <i class="var">V<sup class="sup">*</sup></i>)</code> computes <code><i class="var">F</i></code> for each value in <code><i class="var">V<sup class="sup">*</sup></i></code> from left
  to right, returning the sequence of resulting values.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_left-to-right-map">left-to-right-map</a></span>(<span id="Variable980_F"><i class="var">F</i></span>, <span id="Variable985_V"><i class="var">V</i></span>:<i class="var">T</i>, <span id="Variable997_V*"><i class="var">V<sup class="sup">*</sup></i></span>:(<i class="var">T</i>)<sup class="sup">*</sup>)
    ~> <span class="name"><a href="../Flowing/index.html#Name_left-to-right">left-to-right</a></span>(<span class="name"><a href="#Name_give">give</a></span>(<a href="#Variable985_V"><i class="var">V</i></a>, <a href="#Variable980_F"><i class="var">F</i></a>), <span class="name"><a href="#Name_left-to-right-map">left-to-right-map</a></span>(<a href="#Variable980_F"><i class="var">F</i></a>, <a href="#Variable997_V*"><i class="var">V<sup class="sup">*</sup></i></a>))
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_left-to-right-map">left-to-right-map</a></span>(_, ( )) ~> ( )</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_interleave-map">interleave-map</span></span>(_:<span id="Variable1098_T"><i class="var">T</i></span>=><span id="Variable1105_T'"><i class="var">T&prime;</i></span>, _:(<span id="Variable1117_T"><i class="var">T</i></span>)<sup class="sup">*</sup>) : =>(<span id="Variable1140_T'"><i class="var">T&prime;</i></span>)<sup class="sup">*</sup></code></pre></div>

  <code><span class="name"><a href="#Name_interleave-map">interleave-map</a></span>(<i class="var">F</i>, <i class="var">V<sup class="sup">*</sup></i>)</code> computes <code><i class="var">F</i></code> for each value in <code><i class="var">V<sup class="sup">*</sup></i></code> interleaved, 
  returning the sequence of resulting values.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_interleave-map">interleave-map</a></span>(<span id="Variable1216_F"><i class="var">F</i></span>, <span id="Variable1221_V"><i class="var">V</i></span>:<i class="var">T</i>, <span id="Variable1233_V*"><i class="var">V<sup class="sup">*</sup></i></span>:(<i class="var">T</i>)<sup class="sup">*</sup>)
    ~> <span class="name"><a href="../Flowing/index.html#Name_interleave">interleave</a></span>(<span class="name"><a href="#Name_give">give</a></span>(<a href="#Variable1221_V"><i class="var">V</i></a>, <a href="#Variable1216_F"><i class="var">F</i></a>), <span class="name"><a href="#Name_interleave-map">interleave-map</a></span>(<a href="#Variable1216_F"><i class="var">F</i></a>, <a href="#Variable1233_V*"><i class="var">V<sup class="sup">*</sup></i></a>))
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_interleave-map">interleave-map</a></span>(_, ( )) ~> ( )</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_left-to-right-repeat">left-to-right-repeat</span></span>(_:<span class="name"><a href="../../../Values/Primitive/Integers/index.html#Name_integers">integers</a></span>=><span id="Variable1338_T'"><i class="var">T&prime;</i></span>, _:<span class="name"><a href="../../../Values/Primitive/Integers/index.html#Name_integers">integers</a></span>, _:<span class="name"><a href="../../../Values/Primitive/Integers/index.html#Name_integers">integers</a></span>) : =>(<span id="Variable1372_T'"><i class="var">T&prime;</i></span>)<sup class="sup">*</sup></code></pre></div>

  <code><span class="name"><a href="#Name_left-to-right-repeat">left-to-right-repeat</a></span>(<i class="var">F</i>, <i class="var">M</i>, <i class="var">N</i>)</code> computes <code><i class="var">F</i></code> for each value from <code><i class="var">M</i></code> to <code><i class="var">N</i></code> 
  sequentially, returning the sequence of resulting values.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="../../../Values/Primitive/Integers/index.html#Name_is-less-or-equal">is-less-or-equal</a></span>(<a href="#Variable1495_M"><i class="var">M</i></a>, <a href="#Variable1503_N"><i class="var">N</i></a>) == <span class="name"><a href="../../../Values/Primitive/Booleans/index.html#Name_true">true</a></span>
  -------------------------------------------------------------------------
  <span class="name"><a href="#Name_left-to-right-repeat">left-to-right-repeat</a></span>(<span id="Variable1490_F"><i class="var">F</i></span>, <span id="Variable1495_M"><i class="var">M</i></span>:<span class="name"><a href="../../../Values/Primitive/Integers/index.html#Name_integers">integers</a></span>, <span id="Variable1503_N"><i class="var">N</i></span>:<span class="name"><a href="../../../Values/Primitive/Integers/index.html#Name_integers">integers</a></span>)
    ~> <span class="name"><a href="../Flowing/index.html#Name_left-to-right">left-to-right</a></span>(<span class="name"><a href="#Name_give">give</a></span>(<a href="#Variable1495_M"><i class="var">M</i></a>, <a href="#Variable1490_F"><i class="var">F</i></a>), <span class="name"><a href="#Name_left-to-right-repeat">left-to-right-repeat</a></span>(<a href="#Variable1490_F"><i class="var">F</i></a>, <span class="name"><a href="../../../Values/Primitive/Integers/index.html#Name_int-add">int-add</a></span>(<a href="#Variable1495_M"><i class="var">M</i></a>, 1), <a href="#Variable1503_N"><i class="var">N</i></a>))
<i class="keyword">Rule</i>
  <span class="name"><a href="../../../Values/Primitive/Integers/index.html#Name_is-less-or-equal">is-less-or-equal</a></span>(<a href="#Variable1612_M"><i class="var">M</i></a>, <a href="#Variable1620_N"><i class="var">N</i></a>) == <span class="name"><a href="../../../Values/Primitive/Booleans/index.html#Name_false">false</a></span>
  ----------------------------------------------
  <span class="name"><a href="#Name_left-to-right-repeat">left-to-right-repeat</a></span>(_, <span id="Variable1612_M"><i class="var">M</i></span>:<span class="name"><a href="../../../Values/Primitive/Integers/index.html#Name_integers">integers</a></span>, <span id="Variable1620_N"><i class="var">N</i></span>:<span class="name"><a href="../../../Values/Primitive/Integers/index.html#Name_integers">integers</a></span>) ~> ( )</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_interleave-repeat">interleave-repeat</span></span>(_:<span class="name"><a href="../../../Values/Primitive/Integers/index.html#Name_integers">integers</a></span>=><span id="Variable1651_T'"><i class="var">T&prime;</i></span>, _:<span class="name"><a href="../../../Values/Primitive/Integers/index.html#Name_integers">integers</a></span>, _:<span class="name"><a href="../../../Values/Primitive/Integers/index.html#Name_integers">integers</a></span>) : =>(<span id="Variable1685_T'"><i class="var">T&prime;</i></span>)<sup class="sup">*</sup></code></pre></div>

  <code><span class="name"><a href="#Name_interleave-repeat">interleave-repeat</a></span>(<i class="var">F</i>, <i class="var">M</i>, <i class="var">N</i>)</code> computes <code><i class="var">F</i></code> for each value from <code><i class="var">M</i></code> to <code><i class="var">N</i></code> 
  interleaved, returning the sequence of resulting values.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="../../../Values/Primitive/Integers/index.html#Name_is-less-or-equal">is-less-or-equal</a></span>(<a href="#Variable1808_M"><i class="var">M</i></a>, <a href="#Variable1816_N"><i class="var">N</i></a>) == <span class="name"><a href="../../../Values/Primitive/Booleans/index.html#Name_true">true</a></span>
  -------------------------------------------------------------------
  <span class="name"><a href="#Name_interleave-repeat">interleave-repeat</a></span>(<span id="Variable1803_F"><i class="var">F</i></span>, <span id="Variable1808_M"><i class="var">M</i></span>:<span class="name"><a href="../../../Values/Primitive/Integers/index.html#Name_integers">integers</a></span>, <span id="Variable1816_N"><i class="var">N</i></span>:<span class="name"><a href="../../../Values/Primitive/Integers/index.html#Name_integers">integers</a></span>)
    ~> <span class="name"><a href="../Flowing/index.html#Name_interleave">interleave</a></span>(<span class="name"><a href="#Name_give">give</a></span>(<a href="#Variable1808_M"><i class="var">M</i></a>, <a href="#Variable1803_F"><i class="var">F</i></a>), <span class="name"><a href="#Name_interleave-repeat">interleave-repeat</a></span>(<a href="#Variable1803_F"><i class="var">F</i></a>, <span class="name"><a href="../../../Values/Primitive/Integers/index.html#Name_int-add">int-add</a></span>(<a href="#Variable1808_M"><i class="var">M</i></a>, 1), <a href="#Variable1816_N"><i class="var">N</i></a>))
<i class="keyword">Rule</i>
  <span class="name"><a href="../../../Values/Primitive/Integers/index.html#Name_is-less-or-equal">is-less-or-equal</a></span>(<a href="#Variable1925_M"><i class="var">M</i></a>, <a href="#Variable1933_N"><i class="var">N</i></a>) == <span class="name"><a href="../../../Values/Primitive/Booleans/index.html#Name_false">false</a></span>
  -------------------------------------------
  <span class="name"><a href="#Name_interleave-repeat">interleave-repeat</a></span>(_, <span id="Variable1925_M"><i class="var">M</i></span>:<span class="name"><a href="../../../Values/Primitive/Integers/index.html#Name_integers">integers</a></span>, <span id="Variable1933_N"><i class="var">N</i></span>:<span class="name"><a href="../../../Values/Primitive/Integers/index.html#Name_integers">integers</a></span>) ~> ( )</code></pre></div>



#### Filtering


 Filters on collections of values can be expressed directly, e.g., 
 <code><span class="name"><a href="../../../Values/Composite/Lists/index.html#Name_list">list</a></span>(<span class="name"><a href="#Name_left-to-right-filter">left-to-right-filter</a></span>(<i class="var">P</i>, <span class="name"><a href="../../../Values/Composite/Lists/index.html#Name_list-elements">list-elements</a></span>(<i class="var">L</i>)))</code> to filter a list <code><i class="var">L</i></code>.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_left-to-right-filter">left-to-right-filter</span></span>(_:<span id="Variable2045_T"><i class="var">T</i></span>=><span class="name"><a href="../../../Values/Primitive/Booleans/index.html#Name_booleans">booleans</a></span>, _:(<span id="Variable2060_T"><i class="var">T</i></span>)<sup class="sup">*</sup>) : =>(<span id="Variable2082_T"><i class="var">T</i></span>)<sup class="sup">*</sup></code></pre></div>

  <code><span class="name"><a href="#Name_left-to-right-filter">left-to-right-filter</a></span>(<i class="var">P</i>, <i class="var">V<sup class="sup">*</sup></i>)</code> computes <code><i class="var">P</i></code> for each value in <code><i class="var">V<sup class="sup">*</sup></i></code> from left
  to right, returning the sequence of argument values for which the result is
  <code><span class="name"><a href="../../../Values/Primitive/Booleans/index.html#Name_true">true</a></span></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_left-to-right-filter">left-to-right-filter</a></span>(<span id="Variable2168_P"><i class="var">P</i></span>, <span id="Variable2173_V"><i class="var">V</i></span>:<i class="var">T</i>, <span id="Variable2185_V*"><i class="var">V<sup class="sup">*</sup></i></span>:(<i class="var">T</i>)<sup class="sup">*</sup>)
   ~> <span class="name"><a href="../Flowing/index.html#Name_left-to-right">left-to-right</a></span>(<span class="name"><a href="../../../Values/Value-Types/index.html#Name_when-true">when-true</a></span>(<span class="name"><a href="#Name_give">give</a></span>(<a href="#Variable2173_V"><i class="var">V</i></a>, <a href="#Variable2168_P"><i class="var">P</i></a>), <a href="#Variable2173_V"><i class="var">V</i></a>), <span class="name"><a href="#Name_left-to-right-filter">left-to-right-filter</a></span>(<a href="#Variable2168_P"><i class="var">P</i></a>, <a href="#Variable2185_V*"><i class="var">V<sup class="sup">*</sup></i></a>))
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_left-to-right-filter">left-to-right-filter</a></span>(_) ~> ( )</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_interleave-filter">interleave-filter</span></span>(_:<span id="Variable2294_T"><i class="var">T</i></span>=><span class="name"><a href="../../../Values/Primitive/Booleans/index.html#Name_booleans">booleans</a></span>, _:(<span id="Variable2309_T"><i class="var">T</i></span>)<sup class="sup">*</sup>) : =>(<span id="Variable2331_T"><i class="var">T</i></span>)<sup class="sup">*</sup></code></pre></div>

  <code><span class="name"><a href="#Name_interleave-filter">interleave-filter</a></span>(<i class="var">P</i>, <i class="var">V<sup class="sup">*</sup></i>)</code> computes <code><i class="var">P</i></code> for each value in <code><i class="var">V<sup class="sup">*</sup></i></code> interleaved,
  returning the sequence of argument values for which the result is <code><span class="name"><a href="../../../Values/Primitive/Booleans/index.html#Name_true">true</a></span></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_interleave-filter">interleave-filter</a></span>(<span id="Variable2417_P"><i class="var">P</i></span>, <span id="Variable2422_V"><i class="var">V</i></span>:<i class="var">T</i>, <span id="Variable2434_V*"><i class="var">V<sup class="sup">*</sup></i></span>:(<i class="var">T</i>)<sup class="sup">*</sup>)
   ~> <span class="name"><a href="../Flowing/index.html#Name_interleave">interleave</a></span>(<span class="name"><a href="../../../Values/Value-Types/index.html#Name_when-true">when-true</a></span>(<span class="name"><a href="#Name_give">give</a></span>(<a href="#Variable2422_V"><i class="var">V</i></a>, <a href="#Variable2417_P"><i class="var">P</i></a>), <a href="#Variable2422_V"><i class="var">V</i></a>), <span class="name"><a href="#Name_interleave-filter">interleave-filter</a></span>(<a href="#Variable2417_P"><i class="var">P</i></a>, <a href="#Variable2434_V*"><i class="var">V<sup class="sup">*</sup></i></a>))
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_interleave-filter">interleave-filter</a></span>(_) ~> ( )</code></pre></div>



#### Folding

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_fold-left">fold-left</span></span>(_:<span class="name"><a href="../../../Values/Composite/Tuples/index.html#Name_tuples">tuples</a></span>(<span id="Variable2562_T"><i class="var">T</i></span>,<span id="Variable2568_T'"><i class="var">T&prime;</i></span>)=><span id="Variable2581_T"><i class="var">T</i></span>, _:<span id="Variable2593_T"><i class="var">T</i></span>, _:(<span id="Variable2605_T'"><i class="var">T&prime;</i></span>)<sup class="sup">*</sup>) : =><span id="Variable2628_T"><i class="var">T</i></span></code></pre></div>

  <code><span class="name"><a href="#Name_fold-left">fold-left</a></span>(<i class="var">F</i>, <i class="var">A</i>, <i class="var">V<sup class="sup">*</sup></i>)</code> reduces a sequence <code><i class="var">V<sup class="sup">*</sup></i></code> to a single value by folding it
  from the left, using <code><i class="var">A</i></code> as the initial accumulator value, and iteratively
  updating the accumulator by giving <code><i class="var">F</i></code> the pair of the accumulator value and
  the first of the remaining arguments.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_fold-left">fold-left</a></span>(_, <span id="Variable2720_A"><i class="var">A</i></span>:<i class="var">T</i>, ( )) ~> <a href="#Variable2720_A"><i class="var">A</i></a>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_fold-left">fold-left</a></span>(<span id="Variable2752_F"><i class="var">F</i></span>, <span id="Variable2757_A"><i class="var">A</i></span>:<i class="var">T</i>, <span id="Variable2768_V"><i class="var">V</i></span>:<i class="var">T&prime;</i>, <span id="Variable2781_V*"><i class="var">V<sup class="sup">*</sup></i></span>:(<i class="var">T&prime;</i>)<sup class="sup">*</sup>) ~> <span class="name"><a href="#Name_fold-left">fold-left</a></span>(<a href="#Variable2752_F"><i class="var">F</i></a>, <span class="name"><a href="#Name_give">give</a></span>(<span class="name"><a href="../../../Values/Composite/Tuples/index.html#Name_tuple">tuple</a></span>(<a href="#Variable2757_A"><i class="var">A</i></a>, <a href="#Variable2768_V"><i class="var">V</i></a>), <a href="#Variable2752_F"><i class="var">F</i></a>), <a href="#Variable2781_V*"><i class="var">V<sup class="sup">*</sup></i></a>)</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_fold-right">fold-right</span></span>(_:<span class="name"><a href="../../../Values/Composite/Tuples/index.html#Name_tuples">tuples</a></span>(<span id="Variable2868_T"><i class="var">T</i></span>,<span id="Variable2874_T'"><i class="var">T&prime;</i></span>)=><span id="Variable2888_T'"><i class="var">T&prime;</i></span>, _:<span id="Variable2901_T'"><i class="var">T&prime;</i></span>, _:(<span id="Variable2912_T"><i class="var">T</i></span>)<sup class="sup">*</sup>) : =><span id="Variable2936_T'"><i class="var">T&prime;</i></span></code></pre></div>

  <code><span class="name"><a href="#Name_fold-right">fold-right</a></span>(<i class="var">F</i>, <i class="var">A</i>, <i class="var">V<sup class="sup">*</sup></i>)</code> reduces a sequence <code><i class="var">V<sup class="sup">*</sup></i></code> to a single value by folding it
  from the right, using <code><i class="var">A</i></code> as the initial accumulator value, and iteratively
  updating the accumulator by giving <code><i class="var">F</i></code> the pair of the the last of the 
  remaining arguments and the accumulator value.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_fold-right">fold-right</a></span>(_, <span id="Variable3028_A"><i class="var">A</i></span>:<i class="var">T&prime;</i>, ( )) ~> <a href="#Variable3028_A"><i class="var">A</i></a>
<i class="keyword">Rule</i>
  <span class="name"><a href="#Name_fold-right">fold-right</a></span>(<span id="Variable3061_F"><i class="var">F</i></span>, <span id="Variable3066_A"><i class="var">A</i></span>:<i class="var">T&prime;</i>, <span id="Variable3079_V*"><i class="var">V<sup class="sup">*</sup></i></span>:(<i class="var">T</i>)<sup class="sup">*</sup>, <span id="Variable3097_V"><i class="var">V</i></span>:<i class="var">T</i>) ~> <span class="name"><a href="#Name_give">give</a></span>(<span class="name"><a href="../../../Values/Composite/Tuples/index.html#Name_tuple">tuple</a></span>(<a href="#Variable3097_V"><i class="var">V</i></a>, <span class="name"><a href="#Name_fold-right">fold-right</a></span>(<a href="#Variable3061_F"><i class="var">F</i></a>, <a href="#Variable3066_A"><i class="var">A</i></a>, <a href="#Variable3079_V*"><i class="var">V<sup class="sup">*</sup></i></a>)), <a href="#Variable3061_F"><i class="var">F</i></a>)</code></pre></div>



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
[Giving.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Normal/Giving/Giving.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Computations/Normal/Giving
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Funcons-beta/Computations/Normal/Giving
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Normal/Giving/Giving.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Computations/Normal/Giving/Giving.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
