---
layout: default
title: "Functions"
parent: Abstraction
ancestor: Funcons-beta

---

[Funcons-beta] : [Functions.cbs]
-----------------------------

### Functions

<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Datatype</i> <span class="name"><a href="#Name_functions">functions</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_function">function</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_apply">apply</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_supply">supply</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_compose">compose</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_uncurry">uncurry</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_curry">curry</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_partial-apply">partial-apply</a></span>
]</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Meta-variables</i>
  <span id="PartVariable_T"><i class="var">T</i></span>, <span id="PartVariable_T'"><i class="var">T&prime;</i></span>, <span id="PartVariable_T1"><i class="var">T<sub class="sub">1</sub></i></span>, <span id="PartVariable_T2"><i class="var">T<sub class="sub">2</sub></i></span> <: <span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span></code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Datatype</i>
  <span class="name"><span id="Name_functions">functions</span></span>(<span id="Variable78_T"><i class="var">T</i></span>,<span id="Variable85_T'"><i class="var">T&prime;</i></span>) ::= <span id="Name_function">function</span>(<span id="Variable99_A"><i class="var">A</i></span>:<span class="name"><a href="../Generic/index.html#Name_abstractions">abstractions</a></span>(<span id="Variable104_T"><i class="var">T</i></span>=><span id="Variable111_T'"><i class="var">T&prime;</i></span>))</code></pre></div>


  <code><span class="name"><a href="#Name_functions">functions</a></span>(<i class="var">T</i>, <i class="var">T&prime;</i>)</code> consists of abstractions whose bodies may depend on
  a given value of type <code><i class="var">T</i></code>, and whose executions normally compute values 
  of type <code><i class="var">T&prime;</i></code>.
  <code><span class="name"><a href="#Name_function">function</a></span>(<span class="name"><a href="../Generic/index.html#Name_abstraction">abstraction</a></span>(<i class="var">X</i>))</code> evaluates to a function with dynamic bindings,
  <code><span class="name"><a href="#Name_function">function</a></span>(<span class="name"><a href="../Generic/index.html#Name_closure">closure</a></span>(<i class="var">X</i>))</code> computes a function with static bindings.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_apply">apply</span></span>(_:<span class="name"><a href="#Name_functions">functions</a></span>(<span id="Variable257_T"><i class="var">T</i></span>, <span id="Variable263_T'"><i class="var">T&prime;</i></span>), _:<span id="Variable281_T"><i class="var">T</i></span>) : =><span id="Variable297_T'"><i class="var">T&prime;</i></span></code></pre></div>

  <code><span class="name"><a href="#Name_apply">apply</a></span>(<i class="var">F</i>, <i class="var">V</i>)</code> applies the function <code><i class="var">F</i></code> to the argument value <code><i class="var">V</i></code>.
  This corresponds to call by value; using thunks as argument values
  corresponds to call by name. Moreover, using tuples as argument values 
  corresponds to application to multiple arguments.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_apply">apply</a></span>(<span class="name"><a href="#Name_function">function</a></span>(<span class="name"><a href="../Generic/index.html#Name_abstraction">abstraction</a></span>(<span id="Variable366_X"><i class="var">X</i></span>)), <span id="Variable383_V"><i class="var">V</i></span>:<i class="var">T</i>) ~> <span class="name"><a href="../../../Computations/Normal/Giving/index.html#Name_give">give</a></span>(<a href="#Variable383_V"><i class="var">V</i></a>, <a href="#Variable366_X"><i class="var">X</i></a>)</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_supply">supply</span></span>(_:<span class="name"><a href="#Name_functions">functions</a></span>(<span id="Variable427_T"><i class="var">T</i></span>, <span id="Variable433_T'"><i class="var">T&prime;</i></span>), _:<span id="Variable451_T"><i class="var">T</i></span>) : =><span class="name"><a href="../Thunks/index.html#Name_thunks">thunks</a></span>(<span id="Variable468_T'"><i class="var">T&prime;</i></span>)</code></pre></div>

  <code><span class="name"><a href="#Name_supply">supply</a></span>(<i class="var">F</i>, <i class="var">V</i>)</code> determines the argument value of a function application,
  but returns a thunk that defers executing the body of the function.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_supply">supply</a></span>(<span class="name"><a href="#Name_function">function</a></span>(<span class="name"><a href="../Generic/index.html#Name_abstraction">abstraction</a></span>(<span id="Variable517_X"><i class="var">X</i></span>)), <span id="Variable534_V"><i class="var">V</i></span>:<i class="var">T</i>) ~> <span class="name"><a href="../Thunks/index.html#Name_thunk">thunk</a></span>(<span class="name"><a href="../Generic/index.html#Name_abstraction">abstraction</a></span>(<span class="name"><a href="../../../Computations/Normal/Giving/index.html#Name_give">give</a></span>(<a href="#Variable534_V"><i class="var">V</i></a>, <a href="#Variable517_X"><i class="var">X</i></a>)))</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_compose">compose</span></span>(_:<span class="name"><a href="#Name_functions">functions</a></span>(<span id="Variable593_T2"><i class="var">T<sub class="sub">2</sub></i></span>, <span id="Variable599_T'"><i class="var">T&prime;</i></span>), _:<span class="name"><a href="#Name_functions">functions</a></span>(<span id="Variable619_T1"><i class="var">T<sub class="sub">1</sub></i></span>, <span id="Variable625_T2"><i class="var">T<sub class="sub">2</sub></i></span>)) : =><span class="name"><a href="#Name_functions">functions</a></span>(<span id="Variable649_T1"><i class="var">T<sub class="sub">1</sub></i></span>, <span id="Variable655_T'"><i class="var">T&prime;</i></span>)</code></pre></div>

  <code><span class="name"><a href="#Name_compose">compose</a></span>(<i class="var">F<sub class="sub">2</sub></i>, <i class="var">F<sub class="sub">1</sub></i>)</code> returns the function that applies <code><i class="var">F<sub class="sub">1</sub></i></code> to its argument,
  then applies <code><i class="var">F<sub class="sub">2</sub></i></code> to the result of <code><i class="var">F<sub class="sub">1</sub></i></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_compose">compose</a></span>(<span class="name"><a href="#Name_function">function</a></span>(<span class="name"><a href="../Generic/index.html#Name_abstraction">abstraction</a></span>(<span id="Variable749_Y"><i class="var">Y</i></span>)), <span class="name"><a href="#Name_function">function</a></span>(<span class="name"><a href="../Generic/index.html#Name_abstraction">abstraction</a></span>(<span id="Variable768_X"><i class="var">X</i></span>)))
    ~> <span class="name"><a href="#Name_function">function</a></span>(<span class="name"><a href="../Generic/index.html#Name_abstraction">abstraction</a></span>(<span class="name"><a href="../../../Computations/Normal/Giving/index.html#Name_give">give</a></span>(<a href="#Variable768_X"><i class="var">X</i></a>, <a href="#Variable749_Y"><i class="var">Y</i></a>)))</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_uncurry">uncurry</span></span>(<span id="Variable828_F"><i class="var">F</i></span>:<span class="name"><a href="#Name_functions">functions</a></span>(<span id="Variable834_T1"><i class="var">T<sub class="sub">1</sub></i></span>, <span class="name"><a href="#Name_functions">functions</a></span>(<span id="Variable841_T2"><i class="var">T<sub class="sub">2</sub></i></span>, <span id="Variable847_T'"><i class="var">T&prime;</i></span>))) : 
    =><span class="name"><a href="#Name_functions">functions</a></span>(<span class="name"><a href="../../Composite/Tuples/index.html#Name_tuples">tuples</a></span>(<span id="Variable878_T1"><i class="var">T<sub class="sub">1</sub></i></span>, <span id="Variable884_T2"><i class="var">T<sub class="sub">2</sub></i></span>), <span id="Variable897_T'"><i class="var">T&prime;</i></span>)
   ~> <span class="name"><a href="#Name_function">function</a></span>(<span class="name"><a href="../Generic/index.html#Name_abstraction">abstraction</a></span>(
         <span class="name"><a href="#Name_apply">apply</a></span>(
           <span class="name"><a href="#Name_apply">apply</a></span>(<a href="#Variable828_F"><i class="var">F</i></a>, <span class="name"><a href="../../../Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../Composite/Sequences/index.html#Name_index">index</a></span>(1, <span class="name"><a href="../../Composite/Tuples/index.html#Name_tuple-elements">tuple-elements</a></span> <span class="name"><a href="../../../Computations/Normal/Giving/index.html#Name_given">given</a></span>)),
           <span class="name"><a href="../../../Computations/Abnormal/Failing/index.html#Name_checked">checked</a></span> <span class="name"><a href="../../Composite/Sequences/index.html#Name_index">index</a></span>(2, <span class="name"><a href="../../Composite/Tuples/index.html#Name_tuple-elements">tuple-elements</a></span> <span class="name"><a href="../../../Computations/Normal/Giving/index.html#Name_given">given</a></span>))))</code></pre></div>


  <code><span class="name"><a href="#Name_uncurry">uncurry</a></span>(<i class="var">F</i>)</code> takes a curried function <code><i class="var">F</i></code> and returns a function that takes
  a pair of arguments..



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_curry">curry</span></span>(<span id="Variable1020_F"><i class="var">F</i></span>:<span class="name"><a href="#Name_functions">functions</a></span>(<span class="name"><a href="../../Composite/Tuples/index.html#Name_tuples">tuples</a></span>(<span id="Variable1027_T1"><i class="var">T<sub class="sub">1</sub></i></span>, <span id="Variable1033_T2"><i class="var">T<sub class="sub">2</sub></i></span>), <span id="Variable1046_T'"><i class="var">T&prime;</i></span>)) : =><span class="name"><a href="#Name_functions">functions</a></span>(<span id="Variable1069_T1"><i class="var">T<sub class="sub">1</sub></i></span>, <span class="name"><a href="#Name_functions">functions</a></span>(<span id="Variable1076_T2"><i class="var">T<sub class="sub">2</sub></i></span>, <span id="Variable1082_T'"><i class="var">T&prime;</i></span>))
    ~> <span class="name"><a href="#Name_function">function</a></span>(<span class="name"><a href="../Generic/index.html#Name_abstraction">abstraction</a></span>(<span class="name"><a href="#Name_partial-apply">partial-apply</a></span>(<a href="#Variable1020_F"><i class="var">F</i></a>, <span class="name"><a href="../../../Computations/Normal/Giving/index.html#Name_given">given</a></span>)))</code></pre></div>


  <code><span class="name"><a href="#Name_curry">curry</a></span>(<i class="var">F</i>)</code> takes a function <code><i class="var">F</i></code> that takes a pair of arguments, and returns
  the corresponding 'curried' function.



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_partial-apply">partial-apply</span></span>(<span id="Variable1174_F"><i class="var">F</i></span>:<span class="name"><a href="#Name_functions">functions</a></span>(<span class="name"><a href="../../Composite/Tuples/index.html#Name_tuples">tuples</a></span>(<span id="Variable1181_T1"><i class="var">T<sub class="sub">1</sub></i></span>, <span id="Variable1187_T2"><i class="var">T<sub class="sub">2</sub></i></span>), <span id="Variable1200_T'"><i class="var">T&prime;</i></span>), <span id="Variable1215_V"><i class="var">V</i></span>:<span id="Variable1220_T1"><i class="var">T<sub class="sub">1</sub></i></span>) : =><span class="name"><a href="#Name_functions">functions</a></span>(<span id="Variable1237_T2"><i class="var">T<sub class="sub">2</sub></i></span>, <span id="Variable1243_T'"><i class="var">T&prime;</i></span>)
    ~> <span class="name"><a href="#Name_function">function</a></span>(<span class="name"><a href="../Generic/index.html#Name_abstraction">abstraction</a></span>(<span class="name"><a href="#Name_apply">apply</a></span>(<a href="#Variable1174_F"><i class="var">F</i></a>,<span class="name"><a href="../../Composite/Tuples/index.html#Name_tuple">tuple</a></span>(<a href="#Variable1215_V"><i class="var">V</i></a>,<span class="name"><a href="../../../Computations/Normal/Giving/index.html#Name_given">given</a></span>))))</code></pre></div>


  <code><span class="name"><a href="#Name_partial-apply">partial-apply</a></span>(<i class="var">F</i>, <i class="var">V</i>)</code> takes a function <code><i class="var">F</i></code> that takes a pair of arguments, 
  and determines the first argument, returning a function of the second 
  argument.



____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[Functions.cbs]: Functions.cbs 
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
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Abstraction/Functions/Functions.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
