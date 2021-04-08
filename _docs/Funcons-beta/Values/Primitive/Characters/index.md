---
title: "Characters"
parent: Primitive
ancestor: Funcons-beta

---

[Funcons-beta] : [Characters.cbs] \| [PRETTY] \| [PDF]

<details open markdown="block">
  <summary>
    Outline
  </summary>
  {: .text-delta }
- TOC
{:toc}
</details>

----
### Characters

<div class="highlighter-rouge"><pre class="highlight"><code>[
  <i class="keyword">Type</i>     <span class="name"><a href="#Name_characters">characters</a></span>                          <i class="keyword">Alias</i> <span class="name"><a href="#Name_chars">chars</a></span>
  <i class="keyword">Datatype</i> <span class="name"><a href="#Name_unicode-characters">unicode-characters</a></span>                  <i class="keyword">Alias</i> <span class="name"><a href="#Name_unicode-chars">unicode-chars</a></span>
  <i class="keyword">Type</i>     <span class="name"><a href="#Name_unicode-points">unicode-points</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_unicode-character">unicode-character</a></span>                   <i class="keyword">Alias</i> <span class="name"><a href="#Name_unicode-char">unicode-char</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_unicode-point">unicode-point</a></span>                       <i class="keyword">Alias</i> <span class="name"><a href="#Name_unicode">unicode</a></span>
  <i class="keyword">Type</i>     <span class="name"><a href="#Name_basic-multilingual-plane-characters">basic-multilingual-plane-characters</a></span> <i class="keyword">Alias</i> <span class="name"><a href="#Name_bmp-chars">bmp-chars</a></span>
  <i class="keyword">Type</i>     <span class="name"><a href="#Name_basic-multilingual-plane-points">basic-multilingual-plane-points</a></span>
  <i class="keyword">Type</i>     <span class="name"><a href="#Name_iso-latin-1-characters">iso-latin-1-characters</a></span>              <i class="keyword">Alias</i> <span class="name"><a href="#Name_latin-1-chars">latin-1-chars</a></span>
  <i class="keyword">Type</i>     <span class="name"><a href="#Name_iso-latin-1-points">iso-latin-1-points</a></span>
  <i class="keyword">Type</i>     <span class="name"><a href="#Name_ascii-characters">ascii-characters</a></span>                    <i class="keyword">Alias</i> <span class="name"><a href="#Name_ascii-chars">ascii-chars</a></span>
  <i class="keyword">Type</i>     <span class="name"><a href="#Name_ascii-points">ascii-points</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_ascii-character">ascii-character</a></span>                     <i class="keyword">Alias</i> <span class="name"><a href="#Name_ascii-char">ascii-char</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_utf-8">utf-8</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_utf-16">utf-16</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_utf-32">utf-32</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_backspace">backspace</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_horizontal-tab">horizontal-tab</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_line-feed">line-feed</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_form-feed">form-feed</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_carriage-return">carriage-return</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_double-quote">double-quote</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_single-quote">single-quote</a></span>
  <i class="keyword">Funcon</i>   <span class="name"><a href="#Name_backslash">backslash</a></span>
]</code></pre></div>



<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Type</i>
  <span class="name"><span id="Name_characters">characters</span></span> <: <span class="name"><a href="../../Value-Types/index.html#Name_values">values</a></span></code></pre></div>

  Literal characters can be written <code><b class="atom">'C'</b></code> where <code><i class="var">C</i></code> is any visible character
  other than a <code><span class="name"><a href="#Name_single-quote">single-quote</a></span></code> or <code><span class="name"><a href="#Name_backslash">backslash</a></span></code> character, which need to be
  escaped as <code><b class="atom">'\''</b></code> and <code><b class="atom">'\\'</b></code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Alias</i>
  <span class="name"><span id="Name_chars">chars</span></span> = <span class="name"><a href="#Name_characters">characters</a></span></code></pre></div>



#### Unicode character set

  The set of Unicode characters and allocated points is open to extension.
  See https://en.wikipedia.org/wiki/Plane_(Unicode)

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Datatype</i>
  <span class="name"><span id="Name_unicode-characters">unicode-characters</span></span> <: <span class="name"><a href="#Name_characters">characters</a></span>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_unicode-chars">unicode-chars</span></span> = <span class="name"><a href="#Name_unicode-characters">unicode-characters</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Type</i>
  <span class="name"><span id="Name_unicode-points">unicode-points</span></span> <: <span class="name"><a href="../Integers/index.html#Name_bounded-integers">bounded-integers</a></span>(0, <span class="name"><a href="../../Composite/Bits/index.html#Name_unsigned-bit-vector-maximum">unsigned-bit-vector-maximum</a></span>(21))</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_unicode-character">unicode-character</span></span>(_:<span class="name"><a href="#Name_unicode-points">unicode-points</a></span>) : <span class="name"><a href="#Name_unicode-characters">unicode-characters</a></span>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_unicode-char">unicode-char</span></span> = <span class="name"><a href="#Name_unicode-character">unicode-character</a></span></code></pre></div>


  The values in <code><span class="name"><a href="#Name_unicode-characters">unicode-characters</a></span></code> are the values of
  <code><span class="name"><a href="#Name_unicode-character">unicode-character</a></span>(<i class="var">UP</i>:<span class="name"><a href="#Name_unicode-points">unicode-points</a></span>)</code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_unicode-point">unicode-point</span></span>(_:<span class="name"><a href="#Name_unicode-characters">unicode-characters</a></span>) : =><span class="name"><a href="#Name_unicode-points">unicode-points</a></span>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_unicode">unicode</span></span> = <span class="name"><a href="#Name_unicode-point">unicode-point</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_unicode-point">unicode-point</a></span>(<span class="name"><a href="#Name_unicode-character">unicode-character</a></span>(<span id="Variable364_UP"><i class="var">UP</i></span>:<span class="name"><a href="#Name_unicode-points">unicode-points</a></span>)) ~> <a href="#Variable364_UP"><i class="var">UP</i></a></code></pre></div>



#### Unicode basic multilingual plane

  The set of Unicode BMP characters and allocated points is open to extension.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Datatype</i>
  <span class="name"><span id="Name_basic-multilingual-plane-characters">basic-multilingual-plane-characters</span></span> <: <span class="name"><a href="#Name_unicode-characters">unicode-characters</a></span>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_bmp-chars">bmp-chars</span></span> = <span class="name"><a href="#Name_basic-multilingual-plane-characters">basic-multilingual-plane-characters</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Type</i>
  <span class="name"><span id="Name_basic-multilingual-plane-points">basic-multilingual-plane-points</span></span> <:
    <span class="name"><a href="../Integers/index.html#Name_bounded-integers">bounded-integers</a></span>(0, <span class="name"><a href="../../Composite/Bits/index.html#Name_unsigned-bit-vector-maximum">unsigned-bit-vector-maximum</a></span>(17))</code></pre></div>

  The values in <code><span class="name"><a href="#Name_basic-multilingual-plane-characters">basic-multilingual-plane-characters</a></span></code> are the values of
  <code><span class="name"><a href="#Name_unicode-character">unicode-character</a></span>(<i class="var">BMPP</i>:<span class="name"><a href="#Name_basic-multilingual-plane-points">basic-multilingual-plane-points</a></span>)</code>.



#### ISO Latin-1 character set


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Datatype</i>
  <span class="name"><span id="Name_iso-latin-1-characters">iso-latin-1-characters</span></span> <: <span class="name"><a href="#Name_basic-multilingual-plane-characters">basic-multilingual-plane-characters</a></span>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_latin-1-chars">latin-1-chars</span></span> = <span class="name"><a href="#Name_iso-latin-1-characters">iso-latin-1-characters</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Type</i>
  <span class="name"><span id="Name_iso-latin-1-points">iso-latin-1-points</span></span> ~> <span class="name"><a href="../Integers/index.html#Name_bounded-integers">bounded-integers</a></span>(0, <span class="name"><a href="../../Composite/Bits/index.html#Name_unsigned-bit-vector-maximum">unsigned-bit-vector-maximum</a></span>(8))</code></pre></div>


  The values in <code><span class="name"><a href="#Name_iso-latin-1-characters">iso-latin-1-characters</a></span></code> are the values of
  <code><span class="name"><a href="#Name_unicode-character">unicode-character</a></span>(<i class="var">ILP</i>:<span class="name"><a href="#Name_iso-latin-1-points">iso-latin-1-points</a></span>)</code>.



#### ASCII character set


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Type</i>
  <span class="name"><span id="Name_ascii-characters">ascii-characters</span></span> <: <span class="name"><a href="#Name_iso-latin-1-characters">iso-latin-1-characters</a></span>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_ascii-chars">ascii-chars</span></span> = <span class="name"><a href="#Name_ascii-characters">ascii-characters</a></span></code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Type</i>
  <span class="name"><span id="Name_ascii-points">ascii-points</span></span> ~> <span class="name"><a href="../Integers/index.html#Name_bounded-integers">bounded-integers</a></span>(0, <span class="name"><a href="../../Composite/Bits/index.html#Name_unsigned-bit-vector-maximum">unsigned-bit-vector-maximum</a></span>(7))</code></pre></div>


  The values in <code><span class="name"><a href="#Name_ascii-characters">ascii-characters</a></span></code> are the values of
  <code><span class="name"><a href="#Name_unicode-character">unicode-character</a></span>(<i class="var">AP</i>:<span class="name"><a href="#Name_ascii-points">ascii-points</a></span>)</code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_ascii-character">ascii-character</span></span>(_:<span class="name"><a href="../../Composite/Strings/index.html#Name_strings">strings</a></span>) : =><span class="name"><a href="#Name_ascii-characters">ascii-characters</a></span><sup class="sup">?</sup>
<i class="keyword">Alias</i>
  <span class="name"><span id="Name_ascii-char">ascii-char</span></span> = <span class="name"><a href="#Name_ascii-character">ascii-character</a></span></code></pre></div>


  <code><span class="name"><a href="#Name_ascii-character">ascii-character</a></span>"C"</code> takes a string. When it consists of a single ASCII
  character <code><i class="var">C</i></code> it gives the character, otherwise <code>( )</code>.

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Rule</i>
  <span class="name"><a href="#Name_ascii-character">ascii-character</a></span>[<span id="Variable754_C"><i class="var">C</i></span>:<span class="name"><a href="#Name_ascii-characters">ascii-characters</a></span>] ~> <a href="#Variable754_C"><i class="var">C</i></a>
<i class="keyword">Rule</i>
  <a href="#Variable792_C"><i class="var">C</i></a> : ~ <span class="name"><a href="#Name_ascii-characters">ascii-characters</a></span>
  ------------------------------------
  <span class="name"><a href="#Name_ascii-character">ascii-character</a></span>[<span id="Variable792_C"><i class="var">C</i></span>:<span class="name"><a href="#Name_characters">characters</a></span>] ~> ( )
<i class="keyword">Rule</i>
  <span class="name"><a href="../../Composite/Sequences/index.html#Name_length">length</a></span>(<a href="#Variable835_C*"><i class="var">C<sup class="sup">*</sup></i></a>) =/= 1
  --------------------------------------
  <span class="name"><a href="#Name_ascii-character">ascii-character</a></span>[<span id="Variable835_C*"><i class="var">C<sup class="sup">*</sup></i></span>:<span class="name"><a href="#Name_characters">characters</a></span><sup class="sup">*</sup>] ~> ( )</code></pre></div>



#### Character point encodings

  See https://en.wikipedia.org/wiki/Character_encoding


<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_utf-8">utf-8</span></span>(_:<span class="name"><a href="#Name_unicode-points">unicode-points</a></span>) : =>(<span class="name"><a href="../../Composite/Bits/index.html#Name_bytes">bytes</a></span>, (<span class="name"><a href="../../Composite/Bits/index.html#Name_bytes">bytes</a></span>, (<span class="name"><a href="../../Composite/Bits/index.html#Name_bytes">bytes</a></span>, <span class="name"><a href="../../Composite/Bits/index.html#Name_bytes">bytes</a></span><sup class="sup">?</sup>)<sup class="sup">?</sup> )<sup class="sup">?</sup> )</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_utf-16">utf-16</span></span>(_:<span class="name"><a href="#Name_unicode-points">unicode-points</a></span>) : =>(<span class="name"><a href="../../Composite/Bits/index.html#Name_bit-vectors">bit-vectors</a></span>(16), (<span class="name"><a href="../../Composite/Bits/index.html#Name_bit-vectors">bit-vectors</a></span>(16))<sup class="sup">?</sup> )</code></pre></div>
<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Built-in</i> <i class="keyword">Funcon</i>
  <span class="name"><span id="Name_utf-32">utf-32</span></span>(_:<span class="name"><a href="#Name_unicode-points">unicode-points</a></span>) : =><span class="name"><a href="../../Composite/Bits/index.html#Name_bit-vectors">bit-vectors</a></span>(32)</code></pre></div>
#### Control characters

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_backspace">backspace</span></span> : =><span class="name"><a href="#Name_ascii-characters">ascii-characters</a></span> 
    ~> <span class="name"><a href="#Name_unicode-character">unicode-character</a></span>(<span class="name"><a href="../Integers/index.html#Name_hexadecimal-natural">hexadecimal-natural</a></span>"0008")</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_horizontal-tab">horizontal-tab</span></span> : =><span class="name"><a href="#Name_ascii-characters">ascii-characters</a></span> 
    ~> <span class="name"><a href="#Name_unicode-character">unicode-character</a></span>(<span class="name"><a href="../Integers/index.html#Name_hexadecimal-natural">hexadecimal-natural</a></span>"0009")</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_line-feed">line-feed</span></span> : =><span class="name"><a href="#Name_ascii-characters">ascii-characters</a></span> 
    ~> <span class="name"><a href="#Name_unicode-character">unicode-character</a></span>(<span class="name"><a href="../Integers/index.html#Name_hexadecimal-natural">hexadecimal-natural</a></span>"000a")</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_form-feed">form-feed</span></span> : =><span class="name"><a href="#Name_ascii-characters">ascii-characters</a></span> 
    ~> <span class="name"><a href="#Name_unicode-character">unicode-character</a></span>(<span class="name"><a href="../Integers/index.html#Name_hexadecimal-natural">hexadecimal-natural</a></span>"000c")</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_carriage-return">carriage-return</span></span> : =><span class="name"><a href="#Name_ascii-characters">ascii-characters</a></span> 
    ~> <span class="name"><a href="#Name_unicode-character">unicode-character</a></span>(<span class="name"><a href="../Integers/index.html#Name_hexadecimal-natural">hexadecimal-natural</a></span>"000d")</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_double-quote">double-quote</span></span> : =><span class="name"><a href="#Name_ascii-characters">ascii-characters</a></span> 
    ~> <span class="name"><a href="#Name_unicode-character">unicode-character</a></span>(<span class="name"><a href="../Integers/index.html#Name_hexadecimal-natural">hexadecimal-natural</a></span>"0022")</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_single-quote">single-quote</span></span> : =><span class="name"><a href="#Name_ascii-characters">ascii-characters</a></span> 
    ~> <span class="name"><a href="#Name_unicode-character">unicode-character</a></span>(<span class="name"><a href="../Integers/index.html#Name_hexadecimal-natural">hexadecimal-natural</a></span>"0027")</code></pre></div>

<div class="highlighter-rouge"><pre class="highlight"><code><i class="keyword">Funcon</i>
  <span class="name"><span id="Name_backslash">backslash</span></span> : =><span class="name"><a href="#Name_ascii-characters">ascii-characters</a></span> 
    ~> <span class="name"><a href="#Name_unicode-character">unicode-character</a></span>(<span class="name"><a href="../Integers/index.html#Name_hexadecimal-natural">hexadecimal-natural</a></span>"005c")</code></pre></div>



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
[Characters.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Primitive/Characters/Characters.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Values/Primitive/Characters
  "CBS SOURCE WEB PAGE"
[PRETTY]: /CBS-beta/math/Funcons-beta/Values/Primitive/Characters
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Primitive/Characters/Characters.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"

____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
   "CBS-BETA ISSUE REPORTS ON GITHUB"
 [Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Values/Primitive/Characters/Characters.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A
   "GENERATE AN EMAIL TEMPLATE"
