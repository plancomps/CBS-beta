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

## Value Types
               


$$\begin{align*}
  [ \
  \KEY{Type} \quad & \NAMEREF{values} \\
  \KEY{Alias} \quad & \NAMEREF{vals} \\
  \KEY{Type} \quad & \NAMEREF{value-types} \\
  \KEY{Alias} \quad & \NAMEREF{types} \\
  \KEY{Type} \quad & \NAMEREF{empty-type} \\
  \KEY{Funcon} \quad & \NAMEREF{is-in-type} \\
  \KEY{Alias} \quad & \NAMEREF{is} \\
  \KEY{Funcon} \quad & \NAMEREF{is-value} \\
  \KEY{Alias} \quad & \NAMEREF{is-val} \\
  \KEY{Funcon} \quad & \NAMEREF{when-true} \\
  \KEY{Alias} \quad & \NAMEREF{when} \\
  \KEY{Type} \quad & \NAMEREF{cast-to-type} \\
  \KEY{Alias} \quad & \NAMEREF{cast} \\
  \KEY{Type} \quad & \NAMEREF{ground-values} \\
  \KEY{Alias} \quad & \NAMEREF{ground-vals} \\
  \KEY{Funcon} \quad & \NAMEREF{is-equal} \\
  \KEY{Alias} \quad & \NAMEREF{is-eq}
  \ ]
\end{align*}$$

### Values
               


$$\begin{align*}
  \KEY{Built-in Type} \quad 
  & \NAMEDECL{values}  
\\
  \KEY{Alias} \quad
  & \NAMEDECL{vals} = \NAMEREF{values}
\end{align*}$$

 
  The type $$\SHADE{\NAMEREF{values}}$$ includes all values provided by CBS.
  
  Some funcons are declared as value constructors. Values are constructed by
  applying value constructor funcons to the required arguments.
  
  Values are immutable and context-independent. Their structure can be
  inspected using patterns formed from value constructors and variables.
  Computations can be extracted from values and executed, but the structure
  of computations cannot be inspected.
  
  Some types of values and their funcons are declared as built-in, and not
  further specified in CBS. New types of built-in values can be added to CBS
  by its developers.
 
  New algebraic datatypes may be declared by users of CBS. Their values are
  disjoint from built-in values.


$$\begin{align*}
  \KEY{Meta-variables} \quad
  & \VAR{T}, \VAR{T}\SUB{1}, \VAR{T}\SUB{2} <: \NAMEREF{values}
\end{align*}$$

### Types
               


$$\begin{align*}
  \KEY{Built-in Type} \quad 
  & \NAMEDECL{value-types}  
\\
  \KEY{Alias} \quad
  & \NAMEDECL{types} = \NAMEREF{value-types}
\end{align*}$$

$$\begin{align*}
  \KEY{Built-in Type} \quad 
  & \NAMEDECL{empty-type}  
\end{align*}$$

 
  A type $$\SHADE{\VAR{T}}$$ is a value that represents a set of values. 

  The values of type $$\SHADE{\NAMEREF{types}}$$ are all the types, including $$\SHADE{\NAMEREF{types}}$$ itself.

  The formula $$\SHADE{ \VAR{V} : \VAR{T}}$$ holds when $$\SHADE{\VAR{V}}$$ is a value of type $$\SHADE{\VAR{T}}$$, i.e., $$\SHADE{\VAR{V}}$$ is in
  the set represented by the type $$\SHADE{\VAR{T}}$$.

  The formula $$\SHADE{\VAR{T}\SUB{1} <: \VAR{T}\SUB{2}}$$ holds when $$\SHADE{\VAR{T}\SUB{1}}$$ is a subtype of $$\SHADE{\VAR{T}\SUB{2}}$$, i.e., the set
  represented by $$\SHADE{\VAR{T}\SUB{1}}$$ is a subset of the set represented by $$\SHADE{\VAR{T}\SUB{2}}$$.

  The set of types forms a Boolean algebra with the following operations and
  constants:
    
  * $$\SHADE{\VAR{T}\SUB{1} \mathbin{\&} \VAR{T}\SUB{2}}$$    (meet/intersection)
  * $$\SHADE{\VAR{T}\SUB{1}  \mid \VAR{T}\SUB{2}}$$    (join/union)
  * $$\SHADE{\mathop{\sim} \VAR{T}}$$        (complement)
  * $$\SHADE{\NAMEREF{values}}$$     (top)
  * $$\SHADE{\NAMEREF{empty-type}}$$ (bottom)
  
  Subtyping: $$\SHADE{\VAR{T}\SUB{1} <: \VAR{T}\SUB{2}}$$ is the partial order defined by the algebra. 

  Subsumption: If $$\SHADE{ \VAR{V} : \VAR{T}\SUB{1}}$$ and $$\SHADE{\VAR{T}\SUB{1} <: \VAR{T}\SUB{2}}$$ both hold, so does $$\SHADE{ \VAR{V} : \VAR{T}\SUB{2}}$$.

  Indivisibility: For each value $$\SHADE{\VAR{V}}$$ and type $$\SHADE{\VAR{T}}$$, either $$\SHADE{ \VAR{V} : \VAR{T}}$$ or
  $$\SHADE{ \VAR{V} : \mathop{\sim} \VAR{T}}$$ holds.

  Universality: $$\SHADE{ \VAR{V} : \NAMEREF{values}}$$ holds for all values $$\SHADE{\VAR{V}}$$.

  Emptiness: $$\SHADE{ \VAR{V} : \NAMEREF{empty-type}}$$ holds for no value $$\SHADE{\VAR{V}}$$.

  'Type N' declares the name 'N' to refer to a fresh value constructor
  and includes it as an element of $$\SHADE{\NAMEREF{types}}$$. 
  
  'Type N ~> T' moreover specifies 'Rule N ~> T', so that 'N' can be used as
  an abbreviation for the type term 'T'.
  
  'Type N <: T' declares the name 'N' to refer to a fresh value constructor
  in $$\SHADE{\NAMEREF{types}}$$, and asserts 'N <: T'. 
  
  Parametrised type declarations introduce generic (possibly dependent) types, 
  i.e., families of individual types, indexed by types (and by other values). 
  For example, $$\SHADE{\NAMEHYPER{../Composite}{Lists}{lists}
           (  \VAR{T} )}$$ is parameterised by the type of list elements $$\SHADE{\VAR{T}}$$.
  Replacing a parameter by $$\SHADE{\_}$$ denotes the union over all instances of that
  parameter, e.g., $$\SHADE{\NAMEHYPER{../Composite}{Lists}{lists}
           (  \_ )}$$ is the union of all types $$\SHADE{\NAMEHYPER{../Composite}{Lists}{lists}
           (  \VAR{T} )}$$ with $$\SHADE{\VAR{T} : \NAMEREF{types}}$$.
  
  Qualified variables $$\SHADE{\VAR{V} : \VAR{T}}$$ in terms range over values of type $$\SHADE{\VAR{T}}$$.
  Qualified variables $$\SHADE{\VAR{T}\SUB{1} <: \VAR{T}\SUB{2}}$$ in terms range over subtypes $$\SHADE{\VAR{T}\SUB{1}}$$ of $$\SHADE{\VAR{T}\SUB{2}}$$.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{is-in-type}(
                       \VAR{V} : \NAMEREF{values}, \VAR{T} : \NAMEREF{types}) 
    :  \TO \NAMEHYPER{../Primitive}{Booleans}{booleans} 
\\
  \KEY{Alias} \quad
  & \NAMEDECL{is} = \NAMEREF{is-in-type}
\end{align*}$$


  $$\SHADE{\NAMEREF{is-in-type}
           (  \VAR{V}, 
                  \VAR{T} )}$$ tests whether $$\SHADE{ \VAR{V} : \VAR{T}}$$ holds. The value $$\SHADE{\VAR{V}}$$ need not be a
  ground value, but $$\SHADE{\VAR{T}}$$ should not require testing any computation types.


$$\begin{align*}
  \KEY{Rule} \quad
    & \RULE{
      &  \VAR{V} : \VAR{T}
      }{
      & \NAMEREF{is-in-type}
          (  \VAR{V} : \NAMEREF{values}, 
                 \VAR{T} : \NAMEREF{types} ) \leadsto 
          \NAMEHYPER{../Primitive}{Booleans}{true}
      }
\\
  \KEY{Rule} \quad
    & \RULE{
      &  \VAR{V} : \mathop{\sim} \VAR{T}
      }{
      & \NAMEREF{is-in-type}
          (  \VAR{V} : \NAMEREF{values}, 
                 \VAR{T} : \NAMEREF{types} ) \leadsto 
          \NAMEHYPER{../Primitive}{Booleans}{false}
      }
\end{align*}$$

### Option types
               



  For any value type $$\SHADE{\VAR{T}}$$, the elements of the option type $$\SHADE{(  \VAR{T} )\QUERY}$$ are the
  elements of $$\SHADE{\VAR{T}}$$ together with the empty sequence $$\SHADE{(   \  )}$$, which represents
  the absence of a value. Option types are a special case of sequence types.
  
  A funcon whose result type is an option type $$\SHADE{(  \VAR{T} )\QUERY}$$ may compute a value of
  type $$\SHADE{\VAR{T}}$$ or the empty sequence $$\SHADE{(   \  )}$$; the latter represents undefined results
  of partial operations.

  The parentheses in $$\SHADE{(  \VAR{T} )\QUERY}$$ and $$\SHADE{(   \  )}$$ can be omitted when this does not give
  rise to grouoing ambiguity. Note however that $$\SHADE{\VAR{T}\QUERY}$$ is a meta-variable ranging
  over option types, whereas $$\SHADE{(  \VAR{T} )\QUERY}$$ is the option type for the value type $$\SHADE{\VAR{T}}$$.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{is-value}(
                       \_ : \NAMEREF{values}\QUERY) 
    :  \TO \NAMEHYPER{../Primitive}{Booleans}{booleans} 
\\
  \KEY{Alias} \quad
  & \NAMEDECL{is-val} = \NAMEREF{is-value}
\end{align*}$$


  $$\SHADE{\NAMEREF{is-value}
           (  \VAR{V}\QUERY )}$$ tests whether the optional value $$\SHADE{\VAR{V}\QUERY}$$ is a value or absent.


$$\begin{align*}
  \KEY{Rule} \quad
    & \NAMEREF{is-value}
        (  \_ : \NAMEREF{values} ) \leadsto 
        \NAMEHYPER{../Primitive}{Booleans}{true}
\\
  \KEY{Rule} \quad
    & \NAMEREF{is-value}
        (   \  ) \leadsto 
        \NAMEHYPER{../Primitive}{Booleans}{false}
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{when-true}(
                       \_ : \NAMEHYPER{../Primitive}{Booleans}{booleans}, \_ : \VAR{T}) 
    :  \TO (  \VAR{T} )\QUERY 
\\
  \KEY{Alias} \quad
  & \NAMEDECL{when} = \NAMEREF{when-true}
\end{align*}$$


  $$\SHADE{\NAMEREF{when-true}
           (  \VAR{B}, 
                  \VAR{V} )}$$ gives $$\SHADE{\VAR{V}}$$ when $$\SHADE{\VAR{B}}$$ is $$\SHADE{\NAMEHYPER{../Primitive}{Booleans}{true}}$$, and $$\SHADE{(   \  )}$$ when $$\SHADE{\VAR{B}}$$ is $$\SHADE{\NAMEHYPER{../Primitive}{Booleans}{false}}$$.


$$\begin{align*}
  \KEY{Rule} \quad
    & \NAMEREF{when-true}
        (  \NAMEHYPER{../Primitive}{Booleans}{true}, 
               \VAR{V} : \NAMEREF{values} ) \leadsto 
        \VAR{V}
\\
  \KEY{Rule} \quad
    & \NAMEREF{when-true}
        (  \NAMEHYPER{../Primitive}{Booleans}{false}, 
               \VAR{V} : \NAMEREF{values} ) \leadsto 
        (   \  )
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{cast-to-type}(
                       \VAR{V} : \NAMEREF{values}, \VAR{T} : \NAMEREF{types}) 
    :  \TO (  \VAR{T} )\QUERY 
\\
  \KEY{Alias} \quad
  & \NAMEDECL{cast} = \NAMEREF{cast-to-type}
\end{align*}$$


  $$\SHADE{\NAMEREF{cast-to-type}
           (  \VAR{V}, 
                  \VAR{T} )}$$ gives $$\SHADE{\VAR{V}}$$ if it is in $$\SHADE{\VAR{T}}$$, otherwise $$\SHADE{(   \  )}$$.


$$\begin{align*}
  \KEY{Rule} \quad
    & \RULE{
      &  \VAR{V} : \VAR{T}
      }{
      & \NAMEREF{cast-to-type}
          (  \VAR{V} : \NAMEREF{values}, 
                 \VAR{T} : \NAMEREF{types} ) \leadsto 
          \VAR{V}
      }
\\
  \KEY{Rule} \quad
    & \RULE{
      &  \VAR{V} : \mathop{\sim} \VAR{T}
      }{
      & \NAMEREF{cast-to-type}
          (  \VAR{V} : \NAMEREF{values}, 
                 \VAR{T} : \NAMEREF{types} ) \leadsto 
          (   \  )
      }
\end{align*}$$

### Ground values
               


$$\begin{align*}
  \KEY{Built-in Type} \quad 
  & \NAMEDECL{ground-values}  
\\
  \KEY{Alias} \quad
  & \NAMEDECL{ground-vals} = \NAMEREF{ground-values}
\end{align*}$$


  The elements of $$\SHADE{\NAMEREF{ground-values}}$$ are all values that are formed entirely
  from value-constructors, and thus do not involve computations. 
  
  A type is a subtype of $$\SHADE{\NAMEREF{ground-values}}$$ if and only if all its elements are
  included in $$\SHADE{\NAMEREF{ground-values}}$$.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{is-equal}(
                       \VAR{V} : \NAMEREF{values}, \VAR{W} : \NAMEREF{values}) 
    :  \TO \NAMEHYPER{../Primitive}{Booleans}{booleans} 
\\
  \KEY{Alias} \quad
  & \NAMEDECL{is-eq} = \NAMEREF{is-equal}
\end{align*}$$


  $$\SHADE{\NAMEREF{is-equal}
           (  \VAR{V}, 
                  \VAR{W} )}$$ returns $$\SHADE{\NAMEHYPER{../Primitive}{Booleans}{true}}$$ when $$\SHADE{\VAR{V}}$$ and $$\SHADE{\VAR{W}}$$ are identical ground values,
  otherwise $$\SHADE{\NAMEHYPER{../Primitive}{Booleans}{false}}$$.


$$\begin{align*}
  \KEY{Rule} \quad
    & \RULE{
      & \VAR{V} 
        == \VAR{W}
      }{
      & \NAMEREF{is-equal}
          (  \VAR{V} : \NAMEREF{ground-values}, 
                 \VAR{W} : \NAMEREF{ground-values} ) \leadsto 
          \NAMEHYPER{../Primitive}{Booleans}{true}
      }
\\
  \KEY{Rule} \quad
    & \RULE{
      & \VAR{V} 
        \neq \VAR{W}
      }{
      & \NAMEREF{is-equal}
          (  \VAR{V} : \NAMEREF{ground-values}, 
                 \VAR{W} : \NAMEREF{ground-values} ) \leadsto 
          \NAMEHYPER{../Primitive}{Booleans}{false}
      }
\\
  \KEY{Rule} \quad
    & \NAMEREF{is-equal}
        (  \VAR{V} : \mathop{\sim} \NAMEREF{ground-values}, 
               \VAR{W} : \NAMEREF{values} ) \leadsto 
        \NAMEHYPER{../Primitive}{Booleans}{false}
\\
  \KEY{Rule} \quad
    & \NAMEREF{is-equal}
        (  \VAR{V} : \NAMEREF{values}, 
               \VAR{W} : \mathop{\sim} \NAMEREF{ground-values} ) \leadsto 
        \NAMEHYPER{../Primitive}{Booleans}{false}
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
[Value-Types.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Value-Types/Value-Types.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Values/Value-Types
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Funcons-beta/Values/Value-Types
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Values/Value-Types/Value-Types.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}
