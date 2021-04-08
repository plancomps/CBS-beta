{::comment}{% raw %}{:/}
<details open markdown="block">
  <summary>
    OUTLINE
  </summary>
  {: .text-delta }
- TOC
{:toc}
</details>


----

### Sequences of values
               


$$\begin{align*}
  [ \
  \KEY{Funcon} \quad & \NAMEREF{length} \\
  \KEY{Funcon} \quad & \NAMEREF{index} \\
  \KEY{Funcon} \quad & \NAMEREF{is-in} \\
  \KEY{Funcon} \quad & \NAMEREF{first} \\
  \KEY{Funcon} \quad & \NAMEREF{second} \\
  \KEY{Funcon} \quad & \NAMEREF{third} \\
  \KEY{Funcon} \quad & \NAMEREF{first-n} \\
  \KEY{Funcon} \quad & \NAMEREF{drop-first-n} \\
  \KEY{Funcon} \quad & \NAMEREF{reverse} \\
  \KEY{Funcon} \quad & \NAMEREF{n-of} \\
  \KEY{Funcon} \quad & \NAMEREF{intersperse}
  \ ]
\end{align*}$$


  Sequences of two or more values are not themselves values, nor is the empty
  sequence a value. However, sequences can be provided to funcons as arguments,
  and returned as results. Many operations on composite values can be expressed
  by extracting their components as sequences, operating on the sequences, then
  forming the required composite values from the resulting sequences.
  
  A sequence with elements $$\SHADE{\VAR{X}\SUB{1}}$$, ..., $$\SHADE{\VAR{X}\SUB{n}}$$ is written $$\SHADE{\VAR{X}\SUB{1}, \cdots, \VAR{X}\SUB{n}}$$.
  A sequence with a single element $$\SHADE{\VAR{X}}$$ is identified with (and written) $$\SHADE{\VAR{X}}$$.
  An empty sequence is indicated by the absence of a term.
  Any sequence $$\SHADE{\VAR{X}\STAR}$$ can be enclosed in parentheses $$\SHADE{(  \VAR{X}\STAR )}$$, e.g.:
  $$\SHADE{(   \  )}$$, $$\SHADE{(  1 )}$$, $$\SHADE{(  1, 
                2, 
                3 )}$$. Superfluous commas are ignored.
  
  The elements of a type sequence $$\SHADE{\VAR{T}\SUB{1}, \cdots, \VAR{T}\SUB{n}}$$ are the value sequences $$\SHADE{\VAR{V}\SUB{1}, \cdots, \VAR{V}\SUB{n}}$$
  where $$\SHADE{\VAR{V}\SUB{1} : \VAR{T}\SUB{1}}$$, ..., $$\SHADE{\VAR{V}\SUB{n} : \VAR{T}\SUB{n}}$$. The only element of the empty type sequence $$\SHADE{(   \  )}$$
  is the empty value sequence $$\SHADE{(   \  )}$$.
  
  $$\SHADE{(  \VAR{T} )^{\VAR{N}}}$$ is equivalent to $$\SHADE{\VAR{T}, \cdots, \VAR{T}}$$ with $$\SHADE{\VAR{N}}$$ occurrences of $$\SHADE{\VAR{T}}$$.
  $$\SHADE{(  \VAR{T} )\STAR}$$ is equivalent to the union of all $$\SHADE{(  \VAR{T} )^{\VAR{N}}}$$ for $$\SHADE{\VAR{N}}$$>=0,
  $$\SHADE{(  \VAR{T} )\PLUS}$$ is equivalent to the union of all $$\SHADE{(  \VAR{T} )^{\VAR{N}}}$$ for $$\SHADE{\VAR{N}}$$>=1, and
  $$\SHADE{(  \VAR{T} )\QUERY}$$ is equivalent to $$\SHADE{\VAR{T}  \mid (   \  )}$$.
  The parentheses around $$\SHADE{\VAR{T}}$$ above can be omitted when they are not needed for
  disambiguation.
    
  (Non-trivial) sequence types are not values, so not included in $$\SHADE{\NAMEHYPER{../..}{Value-Types}{types}}$$.


$$\begin{align*}
  \KEY{Meta-variables} \quad
  & \VAR{T}, \VAR{T}' <: \NAMEHYPER{../..}{Value-Types}{values}
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{length}(
                       \_ : \NAMEHYPER{../..}{Value-Types}{values}\STAR) 
    :  \TO \NAMEHYPER{../../Primitive}{Integers}{natural-numbers} 
\end{align*}$$


  $$\SHADE{\NAMEREF{length}
           (  \VAR{V}\STAR )}$$ gives the number of elements in $$\SHADE{\VAR{V}\STAR}$$.


$$\begin{align*}
  \KEY{Rule} \quad
    & \NAMEREF{length}
        (   \  ) \leadsto 
        0
\\
  \KEY{Rule} \quad
    & \NAMEREF{length}
        (  \VAR{V} : \NAMEHYPER{../..}{Value-Types}{values}, 
               \VAR{V}\STAR : \NAMEHYPER{../..}{Value-Types}{values}\STAR ) \leadsto 
        \NAMEHYPER{../../Primitive}{Integers}{natural-successor}
          (  \NAMEREF{length}
                  (  \VAR{V}\STAR ) )
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{is-in}(
                       \_ : \NAMEHYPER{../..}{Value-Types}{values}, \_ : \NAMEHYPER{../..}{Value-Types}{values}\STAR) 
    :  \TO \NAMEHYPER{../../Primitive}{Booleans}{booleans} 
\\
  \KEY{Rule} \quad
    & \NAMEREF{is-in}
        (  \VAR{V} : \NAMEHYPER{../..}{Value-Types}{values}, 
               \VAR{V}' : \NAMEHYPER{../..}{Value-Types}{values}, 
               \VAR{V}\STAR : \NAMEHYPER{../..}{Value-Types}{values}\STAR ) \leadsto 
        \NAMEHYPER{../../Primitive}{Booleans}{or}
          (  \NAMEHYPER{../..}{Value-Types}{is-equal}
                  (  \VAR{V}, 
                         \VAR{V}' ), 
                 \NAMEREF{is-in}
                  (  \VAR{V}, 
                         \VAR{V}\STAR ) )
\\
  \KEY{Rule} \quad
    & \NAMEREF{is-in}
        (  \VAR{V} : \NAMEHYPER{../..}{Value-Types}{values}, 
               (   \  ) ) \leadsto 
        \NAMEHYPER{../../Primitive}{Booleans}{false}
\end{align*}$$

#### Sequence indexing
               


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{index}(
                       \_ : \NAMEHYPER{../../Primitive}{Integers}{natural-numbers}, \_ : \NAMEHYPER{../..}{Value-Types}{values}\STAR) 
    :  \TO \NAMEHYPER{../..}{Value-Types}{values}\QUERY 
\end{align*}$$


  $$\SHADE{\NAMEREF{index}
           (  \VAR{N}, 
                  \VAR{V}\STAR )}$$ gives the $$\SHADE{\VAR{N}}$$th element of $$\SHADE{\VAR{V}\STAR}$$, if it exists, otherwise $$\SHADE{(   \  )}$$.


$$\begin{align*}
  \KEY{Rule} \quad
    & \NAMEREF{index}
        (  1, 
               \VAR{V} : \NAMEHYPER{../..}{Value-Types}{values}, 
               \VAR{V}\STAR : \NAMEHYPER{../..}{Value-Types}{values}\STAR ) \leadsto 
        \VAR{V}
\\
  \KEY{Rule} \quad
    & \RULE{
      & \NAMEHYPER{../../Primitive}{Integers}{natural-predecessor}
          (  \VAR{N} ) \leadsto 
          \VAR{N}'
      }{
      & \NAMEREF{index}
          (  \VAR{N} : \NAMEHYPER{../../Primitive}{Integers}{positive-integers}, 
                 \_ : \NAMEHYPER{../..}{Value-Types}{values}, 
                 \VAR{V}\STAR : \NAMEHYPER{../..}{Value-Types}{values}\STAR ) \leadsto 
          \NAMEREF{index}
            (  \VAR{N}', 
                   \VAR{V}\STAR )
      }
\\
  \KEY{Rule} \quad
    & \NAMEREF{index}
        (  0, 
               \VAR{V}\STAR : \NAMEHYPER{../..}{Value-Types}{values}\STAR ) \leadsto 
        (   \  )
\\
  \KEY{Rule} \quad
    & \NAMEREF{index}
        (  \_ : \NAMEHYPER{../../Primitive}{Integers}{positive-integers}, 
               (   \  ) ) \leadsto 
        (   \  )
\end{align*}$$

 Total indexing funcons: 

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{first}(
                       \_ : \VAR{T}, \_ : \NAMEHYPER{../..}{Value-Types}{values}\STAR) 
    :  \TO \VAR{T} 
\\
  \KEY{Rule} \quad
    & \NAMEREF{first}
        (  \VAR{V} : \VAR{T}, 
               \VAR{V}\STAR : \NAMEHYPER{../..}{Value-Types}{values}\STAR ) \leadsto 
        \VAR{V}
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{second}(
                       \_ : \NAMEHYPER{../..}{Value-Types}{values}, \_ : \VAR{T}, \_ : \NAMEHYPER{../..}{Value-Types}{values}\STAR) 
    :  \TO \VAR{T} 
\\
  \KEY{Rule} \quad
    & \NAMEREF{second}
        (  \_ : \NAMEHYPER{../..}{Value-Types}{values}, 
               \VAR{V} : \VAR{T}, 
               \VAR{V}\STAR : \NAMEHYPER{../..}{Value-Types}{values}\STAR ) \leadsto 
        \VAR{V}
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{third}(
                       \_ : \NAMEHYPER{../..}{Value-Types}{values}, \_ : \NAMEHYPER{../..}{Value-Types}{values}, \_ : \VAR{T}, \_ : \NAMEHYPER{../..}{Value-Types}{values}\STAR) 
    :  \TO \VAR{T} 
\\
  \KEY{Rule} \quad
    & \NAMEREF{third}
        (  \_ : \NAMEHYPER{../..}{Value-Types}{values}, 
               \_ : \NAMEHYPER{../..}{Value-Types}{values}, 
               \VAR{V} : \VAR{T}, 
               \VAR{V}\STAR : \NAMEHYPER{../..}{Value-Types}{values}\STAR ) \leadsto 
        \VAR{V}
\end{align*}$$

#### Homogeneous sequences
               


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{first-n}(
                       \_ : \NAMEHYPER{../../Primitive}{Integers}{natural-numbers}, \_ : (  \VAR{T} )\STAR) 
    :  \TO (  \VAR{T} )\STAR 
\\
  \KEY{Rule} \quad
    & \NAMEREF{first-n}
        (  0, 
               \VAR{V}\STAR : (  \VAR{T} )\STAR ) \leadsto 
        (   \  )
\\
  \KEY{Rule} \quad
    & \RULE{
      & \NAMEHYPER{../../Primitive}{Integers}{natural-predecessor}
          (  \VAR{N} ) \leadsto 
          \VAR{N}'
      }{
      & \NAMEREF{first-n}
          (  \VAR{N} : \NAMEHYPER{../../Primitive}{Integers}{positive-integers}, 
                 \VAR{V} : \VAR{T}, 
                 \VAR{V}\STAR : (  \VAR{T} )\STAR ) \leadsto 
          (  \VAR{V}, 
                 \NAMEREF{first-n}
                  (  \VAR{N}', 
                         \VAR{V}\STAR ) )
      }
\\
  \KEY{Rule} \quad
    & \NAMEREF{first-n}
        (  \VAR{N} : \NAMEHYPER{../../Primitive}{Integers}{positive-integers}, 
               (   \  ) ) \leadsto 
        (   \  )
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{drop-first-n}(
                       \_ : \NAMEHYPER{../../Primitive}{Integers}{natural-numbers}, \_ : (  \VAR{T} )\STAR) 
    :  \TO (  \VAR{T} )\STAR 
\\
  \KEY{Rule} \quad
    & \NAMEREF{drop-first-n}
        (  0, 
               \VAR{V}\STAR : (  \VAR{T} )\STAR ) \leadsto 
        \VAR{V}\STAR
\\
  \KEY{Rule} \quad
    & \RULE{
      & \NAMEHYPER{../../Primitive}{Integers}{natural-predecessor}
          (  \VAR{N} ) \leadsto 
          \VAR{N}'
      }{
      & \NAMEREF{drop-first-n}
          (  \VAR{N} : \NAMEHYPER{../../Primitive}{Integers}{positive-integers}, 
                 \_ : \VAR{T}, 
                 \VAR{V}\STAR : (  \VAR{T} )\STAR ) \leadsto 
          \NAMEREF{drop-first-n}
            (  \VAR{N}', 
                   \VAR{V}\STAR )
      }
\\
  \KEY{Rule} \quad
    & \NAMEREF{drop-first-n}
        (  \VAR{N} : \NAMEHYPER{../../Primitive}{Integers}{positive-integers}, 
               (   \  ) ) \leadsto 
        (   \  )
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{reverse}(
                       \_ : (  \VAR{T} )\STAR) 
    :  \TO (  \VAR{T} )\STAR 
\\
  \KEY{Rule} \quad
    & \NAMEREF{reverse}
        (   \  ) \leadsto 
        (   \  )
\\
  \KEY{Rule} \quad
    & \NAMEREF{reverse}
        (  \VAR{V} : \VAR{T}, 
               \VAR{V}\STAR : (  \VAR{T} )\STAR ) \leadsto 
        (  \NAMEREF{reverse}
                (  \VAR{V}\STAR ), 
               \VAR{V} )
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{n-of}(
                       \VAR{N} : \NAMEHYPER{../../Primitive}{Integers}{natural-numbers}, \VAR{V} : \VAR{T}) 
    :  \TO (  \VAR{T} )\STAR 
\\
  \KEY{Rule} \quad
    & \NAMEREF{n-of}
        (  0, 
               \_ : \VAR{T} ) \leadsto 
        (   \  )
\\
  \KEY{Rule} \quad
    & \RULE{
      & \NAMEHYPER{../../Primitive}{Integers}{natural-predecessor}
          (  \VAR{N} ) \leadsto 
          \VAR{N}'
      }{
      & \NAMEREF{n-of}
          (  \VAR{N} : \NAMEHYPER{../../Primitive}{Integers}{positive-integers}, 
                 \VAR{V} : \VAR{T} ) \leadsto 
          (  \VAR{V}, 
                 \NAMEREF{n-of}
                  (  \VAR{N}', 
                         \VAR{V} ) )
      }
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{intersperse}(
                       \_ : \VAR{T}', \_ : (  \VAR{T} )\STAR) 
    :  \TO (  \VAR{T}, 
                          (  \VAR{T}', 
                                \VAR{T} )\STAR )\QUERY 
\\
  \KEY{Rule} \quad
    & \NAMEREF{intersperse}
        (  \_ : \VAR{T}', 
               (   \  ) ) \leadsto 
        (   \  )
\\
  \KEY{Rule} \quad
    & \NAMEREF{intersperse}
        (  \_ : \VAR{T}', 
               \VAR{V} ) \leadsto 
        \VAR{V}
\\
  \KEY{Rule} \quad
    & \NAMEREF{intersperse}
        (  \VAR{V}' : \VAR{T}', 
               \VAR{V}\SUB{1} : \VAR{T}, 
               \VAR{V}\SUB{2} : \VAR{T}, 
               \VAR{V}\STAR : (  \VAR{T} )\STAR ) \leadsto 
        (  \VAR{V}\SUB{1}, 
               \VAR{V}', 
               \NAMEREF{intersperse}
                (  \VAR{V}', 
                       \VAR{V}\SUB{2}, 
                       \VAR{V}\STAR ) )
\end{align*}$$



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
[Sequences.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Composite/Sequences/Sequences.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Values/Composite/Sequences
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Funcons-beta/Values/Composite/Sequences
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Composite/Sequences/Sequences.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}
