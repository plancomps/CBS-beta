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

### Storing
               


$$\begin{align*}
  [ \
  \KEY{Datatype} \quad & \NAMEREF{locations} \\
  \KEY{Alias} \quad & \NAMEREF{locs} \\
  \KEY{Type} \quad & \NAMEREF{stores} \\
  \KEY{Entity} \quad & \NAMEREF{store} \\
  \KEY{Funcon} \quad & \NAMEREF{initialise-storing} \\
  \KEY{Funcon} \quad & \NAMEREF{store-clear} \\
  \KEY{Datatype} \quad & \NAMEREF{variables} \\
  \KEY{Alias} \quad & \NAMEREF{vars} \\
  \KEY{Funcon} \quad & \NAMEREF{variable} \\
  \KEY{Alias} \quad & \NAMEREF{var} \\
  \KEY{Funcon} \quad & \NAMEREF{allocate-variable} \\
  \KEY{Alias} \quad & \NAMEREF{alloc} \\
  \KEY{Funcon} \quad & \NAMEREF{recycle-variables} \\
  \KEY{Alias} \quad & \NAMEREF{recycle} \\
  \KEY{Funcon} \quad & \NAMEREF{initialise-variable} \\
  \KEY{Alias} \quad & \NAMEREF{init} \\
  \KEY{Funcon} \quad & \NAMEREF{allocate-initialised-variable} \\
  \KEY{Alias} \quad & \NAMEREF{alloc-init} \\
  \KEY{Funcon} \quad & \NAMEREF{assign} \\
  \KEY{Funcon} \quad & \NAMEREF{assigned} \\
  \KEY{Funcon} \quad & \NAMEREF{current-value} \\
  \KEY{Funcon} \quad & \NAMEREF{un-assign} \\
  \KEY{Funcon} \quad & \NAMEREF{structural-assign} \\
  \KEY{Funcon} \quad & \NAMEREF{structural-assigned}
  \ ]
\end{align*}$$

$$\begin{align*}
  \KEY{Meta-variables} \quad
  & \VAR{T}, \VAR{T}' <: \NAMEHYPER{../../../Values}{Value-Types}{values}
\end{align*}$$

#### Stores
               


$$\begin{align*}
  \KEY{Type} \quad 
  & \NAMEDECL{locations}  
    \leadsto \NAMEHYPER{../.}{Generating}{atoms}
\\
  \KEY{Alias} \quad
  & \NAMEDECL{locs} = \NAMEREF{locations}
\end{align*}$$


  A storage location is represented by an atom.


$$\begin{align*}
  \KEY{Type} \quad 
  & \NAMEDECL{stores}  
    \leadsto \NAMEHYPER{../../../Values/Composite}{Maps}{maps}
               (  \NAMEREF{locations}, 
                      \NAMEHYPER{../../../Values}{Value-Types}{values}\QUERY )
\end{align*}$$


  The domain of a store is the set of currently allocated locations.
  Mapping a location to $$\SHADE{(   \  )}$$ models the absence of its stored value;
  removing it from the store allows it to be re-allocated.


$$\begin{align*}
  \KEY{Entity} \quad
  & \langle \_, \NAMEDECL{store}(\_ : \NAMEREF{stores}) \rangle \TRANS   
    \langle \_, \NAME{store}(\_ : \NAME{stores}) \rangle
\end{align*}$$


  The current store is a mutable entity.
  A transition $$\SHADE{ \langle \VAR{X}, \NAMEREF{store} (  \VAR{$\sigma$} ) \rangle \TRANS 
           \langle \VAR{X}', \NAMEREF{store} (  \VAR{$\sigma$}' ) \rangle}$$ models
  a step from $$\SHADE{\VAR{X}}$$ to $$\SHADE{\VAR{X}'}$$ where the difference between $$\SHADE{\VAR{$\sigma$}}$$ and $$\SHADE{\VAR{$\sigma$}'}$$
  (if any) corresponds to storage effects.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{store-clear} 
    :  \TO \NAMEHYPER{../../../Values/Primitive}{Null}{null-type} 
\\
  \KEY{Rule} \quad
    &  \langle \NAMEREF{store-clear}, \NAMEREF{store} (  \_ ) \rangle \TRANS 
        \langle \NAMEHYPER{../../../Values/Primitive}{Null}{null-value}, \NAMEREF{store} (  \NAMEHYPER{../../../Values/Composite}{Maps}{map}
                                                     (   \  ) ) \rangle
\end{align*}$$


  $$\SHADE{\NAMEREF{store-clear}}$$ ensures the store is empty.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{initialise-storing}(
                       \VAR{X} :  \TO \VAR{T}) 
    :  \TO \VAR{T} \\&\quad
    \leadsto \NAMEHYPER{../.}{Flowing}{sequential}
               ( \\&\quad\quad\quad\quad \NAMEREF{store-clear}, \\&\quad\quad\quad\quad
                      \NAMEHYPER{../.}{Giving}{initialise-giving}
                       (  \NAMEHYPER{../.}{Generating}{initialise-generating}
                               (  \VAR{X} ) ) )
\\
  \KEY{Alias} \quad
  & \NAMEDECL{init-storing} = \NAMEREF{initialise-storing}
\end{align*}$$


  $$\SHADE{\NAMEREF{initialise-storing}
           (  \VAR{X} )}$$ ensures that the entities used by the funcons for
  storing are properly initialised.


#### Simple variables
               


  
  Simple variables may store primitive or structured values. The type of
  values stored by a variable is fixed when it is allocated. For instance,
  $$\SHADE{\NAMEREF{allocate-variable}
           (  \NAMEHYPER{../../../Values/Primitive}{Integers}{integers} )}$$ allocates a simple integer variable, and
  $$\SHADE{\NAMEREF{allocate-variable}
           (  \NAMEHYPER{../../../Values/Composite}{Vectors}{vectors}
                   (  \NAMEHYPER{../../../Values/Primitive}{Integers}{integers} ) )}$$ allocates a structured variable for
  storing vectors of integers, which can be updated only monolithically.


$$\begin{align*}
  \KEY{Datatype} \quad 
  \NAMEDECL{variables} 
  \ ::= \ & \NAMEDECL{variable}(
                               \_ : \NAMEREF{locations}, \_ : \NAMEHYPER{../../../Values}{Value-Types}{value-types})
\end{align*}$$

$$\begin{align*}
  \KEY{Alias} \quad
  & \NAMEDECL{vars} = \NAMEREF{variables}
\\
  \KEY{Alias} \quad
  & \NAMEDECL{var} = \NAMEREF{variable}
\end{align*}$$


  $$\SHADE{\NAMEREF{variables}}$$ is the type of simple variables that can store values of
  a particular type.

  $$\SHADE{\NAMEREF{variable}
           (  \VAR{L}, 
                  \VAR{T} )}$$ constructs a simple variable for storing values of
  type $$\SHADE{\VAR{T}}$$ at location $$\SHADE{\VAR{L}}$$. Variables at different locations are independent. 
  
  Note that $$\SHADE{\NAMEREF{variables}}$$ is a subtype of $$\SHADE{\NAMEHYPER{../../../Values/Composite}{Datatypes}{datatype-values}}$$.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{allocate-variable}(
                       \VAR{T} : \NAMEHYPER{../../../Values}{Value-Types}{types}) 
    :  \TO \NAMEREF{variables} 
\\
  \KEY{Alias} \quad
  & \NAMEDECL{alloc} = \NAMEREF{allocate-variable}
\end{align*}$$


  $$\SHADE{\NAMEREF{allocate-variable}
           (  \VAR{T} )}$$ gives a simple variable whose location is not in the
  current store. Subsequent uses of $$\SHADE{\NAMEREF{allocate-variable}
           (  \VAR{T}' )}$$ give independent
  variables, except after $$\SHADE{\NAMEREF{recycle-variables}
           (  \VAR{V}, 
                  \cdots )}$$ or $$\SHADE{\NAMEREF{store-clear}}$$.


$$\begin{align*}
  \KEY{Rule} \quad
    & \RULE{
      &  \langle \NAMEHYPER{../.}{Generating}{use-atom-not-in}
                              (  \NAMEHYPER{../../../Values/Composite}{Maps}{dom}
                                      (  \VAR{$\sigma$} ) ), \NAMEREF{store} (  \VAR{$\sigma$} ) \rangle \TRANS 
          \langle \VAR{L}, \NAMEREF{store} (  \VAR{$\sigma$}' ) \rangle\\&
        \NAMEHYPER{../../../Values/Composite}{Maps}{map-override}
          (  \{ \VAR{L} \mapsto 
                     (   \  ) \}, 
                 \VAR{$\sigma$}' ) \leadsto 
          \VAR{$\sigma$}''
      }{
      &  \langle \NAMEREF{allocate-variable}
                              (  \VAR{T} : \NAMEHYPER{../../../Values}{Value-Types}{types} ), \NAMEREF{store} (  \VAR{$\sigma$} ) \rangle \TRANS \\&\quad
          \langle \NAMEREF{variable}
                    (  \VAR{L}, 
                           \VAR{T} ), \NAMEREF{store} (  \VAR{$\sigma$}'' ) \rangle
      }
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{recycle-variables}(
                       \_ : \NAMEREF{variables}\PLUS) 
    :  \TO \NAMEHYPER{../../../Values/Primitive}{Null}{null-type} 
\\
  \KEY{Alias} \quad
  & \NAMEDECL{recycle} = \NAMEREF{recycle-variables}
\end{align*}$$


  $$\SHADE{\NAMEREF{recycle-variables}
           (  \VAR{Var}, 
                  \cdots )}$$ removes the locations of $$\SHADE{\VAR{Var}}$$, ..., from the
  current store, so that they may subsequently be re-allocated.


$$\begin{align*}
  \KEY{Rule} \quad
    & \RULE{
      & \NAMEHYPER{../../../Values/Composite}{Sets}{is-in-set}
          (  \VAR{L}, 
                 \NAMEHYPER{../../../Values/Composite}{Maps}{dom}
                  (  \VAR{$\sigma$} ) ) 
        == \NAMEHYPER{../../../Values/Primitive}{Booleans}{true}
      }{
      &  \langle \NAMEREF{recycle-variables}
                              (  \NAMEREF{variable}
                                      (  \VAR{L} : \NAMEREF{locations}, 
                                             \VAR{T} : \NAMEHYPER{../../../Values}{Value-Types}{types} ) ), \NAMEREF{store} (  \VAR{$\sigma$} ) \rangle \TRANS \\&\quad
          \langle \NAMEHYPER{../../../Values/Primitive}{Null}{null-value}, \NAMEREF{store} (  \NAMEHYPER{../../../Values/Composite}{Maps}{map-delete}
                                                       (  \VAR{$\sigma$}, 
                                                              \{  \VAR{L} \} ) ) \rangle
      }
\\
  \KEY{Rule} \quad
    & \RULE{
      & \NAMEHYPER{../../../Values/Composite}{Sets}{is-in-set}
          (  \VAR{L}, 
                 \NAMEHYPER{../../../Values/Composite}{Maps}{dom}
                  (  \VAR{$\sigma$} ) ) 
        == \NAMEHYPER{../../../Values/Primitive}{Booleans}{false}
      }{
      &  \langle \NAMEREF{recycle-variables}
                              (  \NAMEREF{variable}
                                      (  \VAR{L} : \NAMEREF{locations}, 
                                             \VAR{T} : \NAMEHYPER{../../../Values}{Value-Types}{types} ) ), \NAMEREF{store} (  \VAR{$\sigma$} ) \rangle \TRANS \\&\quad
          \langle \NAMEHYPER{../../Abnormal}{Failing}{fail}, \NAMEREF{store} (  \VAR{$\sigma$} ) \rangle
      }
\\
  \KEY{Rule} \quad
    & \NAMEREF{recycle-variables}
        (  \VAR{Var} : \NAMEREF{variables}, 
               \VAR{Var}\PLUS : \NAMEREF{variables}\PLUS ) \leadsto \\&\quad
        \NAMEHYPER{../.}{Flowing}{sequential}
          (  \NAMEREF{recycle-variables}
                  (  \VAR{Var} ), 
                 \NAMEREF{recycle-variables}
                  (  \VAR{Var}\PLUS ) )
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{initialise-variable}(
                       \_ : \NAMEREF{variables}, \_ : \NAMEHYPER{../../../Values}{Value-Types}{values}) 
    :  \TO \NAMEHYPER{../../../Values/Primitive}{Null}{null-type} 
\\
  \KEY{Alias} \quad
  & \NAMEDECL{init} = \NAMEREF{initialise-variable}
\end{align*}$$


  $$\SHADE{\NAMEREF{initialise-variable}
           (  \VAR{Var}, 
                  \VAR{Val} )}$$ assigns $$\SHADE{\VAR{Val}}$$ as the initial value of $$\SHADE{\VAR{Var}}$$,
  and gives $$\SHADE{\NAMEHYPER{../../../Values/Primitive}{Null}{null-value}}$$. If $$\SHADE{\VAR{Var}}$$ already has an assigned value, it fails.


$$\begin{align*}
  \KEY{Rule} \quad
    & \RULE{
      & \NAMEHYPER{../../../Values/Primitive}{Booleans}{and}
          ( \\&\quad \NAMEHYPER{../../../Values/Composite}{Sets}{is-in-set}
                  (  \VAR{L}, 
                         \NAMEHYPER{../../../Values/Composite}{Maps}{dom}
                          (  \VAR{$\sigma$} ) ), \\&\quad
                 \NAMEHYPER{../../../Values/Primitive}{Booleans}{not} \ 
                  \NAMEHYPER{../../../Values}{Value-Types}{is-value}
                    (  \NAMEHYPER{../../../Values/Composite}{Maps}{map-lookup}
                            (  \VAR{$\sigma$}, 
                                   \VAR{L} ) ), \\&\quad
                 \NAMEHYPER{../../../Values}{Value-Types}{is-in-type}
                  (  \VAR{Val}, 
                         \VAR{T} ) ) \\&\quad
        == \NAMEHYPER{../../../Values/Primitive}{Booleans}{true}
      }{
      &  \langle \NAMEREF{initialise-variable}
                              (  \NAMEREF{variable}
                                      (  \VAR{L} : \NAMEREF{locations}, 
                                             \VAR{T} : \NAMEHYPER{../../../Values}{Value-Types}{types} ), 
                                     \VAR{Val} : \NAMEHYPER{../../../Values}{Value-Types}{values} ), \NAMEREF{store} (  \VAR{$\sigma$} ) \rangle \TRANS \\&\quad
          \langle \NAMEHYPER{../../../Values/Primitive}{Null}{null-value}, \NAMEREF{store} (  \NAMEHYPER{../../../Values/Composite}{Maps}{map-override}
                                                       (  \{ \VAR{L} \mapsto 
                                                                  \VAR{Val} \}, 
                                                              \VAR{$\sigma$} ) ) \rangle
      }
\\
  \KEY{Rule} \quad
    & \RULE{
      & \NAMEHYPER{../../../Values/Primitive}{Booleans}{and}
          ( \\&\quad \NAMEHYPER{../../../Values/Composite}{Sets}{is-in-set}
                  (  \VAR{L}, 
                         \NAMEHYPER{../../../Values/Composite}{Maps}{dom}
                          (  \VAR{$\sigma$} ) ), \\&\quad
                 \NAMEHYPER{../../../Values/Primitive}{Booleans}{not} \ 
                  \NAMEHYPER{../../../Values}{Value-Types}{is-value}
                    (  \NAMEHYPER{../../../Values/Composite}{Maps}{map-lookup}
                            (  \VAR{$\sigma$}, 
                                   \VAR{L} ) ), \\&\quad
                 \NAMEHYPER{../../../Values}{Value-Types}{is-in-type}
                  (  \VAR{Val}, 
                         \VAR{T} ) ) \\&\quad
        == \NAMEHYPER{../../../Values/Primitive}{Booleans}{false}
      }{
      &  \langle \NAMEREF{initialise-variable}
                              (  \NAMEREF{variable}
                                      (  \VAR{L} : \NAMEREF{locations}, 
                                             \VAR{T} : \NAMEHYPER{../../../Values}{Value-Types}{types} ), 
                                     \VAR{Val} : \NAMEHYPER{../../../Values}{Value-Types}{values} ), \NAMEREF{store} (  \VAR{$\sigma$} ) \rangle \TRANS \\&\quad
          \langle \NAMEHYPER{../../Abnormal}{Failing}{fail}, \NAMEREF{store} (  \VAR{$\sigma$} ) \rangle
      }
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{allocate-initialised-variable}(
                       \VAR{T} , \VAR{Val} : \VAR{T}) 
    :  \TO \NAMEREF{variables} \\&\quad
    \leadsto \NAMEHYPER{../.}{Giving}{give}
               ( \\&\quad\quad\quad\quad \NAMEREF{allocate-variable}
                       (  \VAR{T} ), \\&\quad\quad\quad\quad
                      \NAMEHYPER{../.}{Flowing}{sequential}
                       (  \NAMEREF{initialise-variable}
                               (  \NAMEHYPER{../.}{Giving}{given}, 
                                      \VAR{Val} ), 
                              \NAMEHYPER{../.}{Giving}{given} ) )
\\
  \KEY{Alias} \quad
  & \NAMEDECL{alloc-init} = \NAMEREF{allocate-initialised-variable}
\end{align*}$$


  $$\SHADE{\NAMEREF{allocate-initialised-variable}
           (  \VAR{T}, 
                  \VAR{Val} )}$$ allocates a simple variable for
  storing values of type $$\SHADE{\VAR{T}}$$, initialises its value to $$\SHADE{\VAR{Val}}$$, and returns the
  variable.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{assign}(
                       \_ : \NAMEREF{variables}, \_ : \NAMEHYPER{../../../Values}{Value-Types}{values}) 
    :  \TO \NAMEHYPER{../../../Values/Primitive}{Null}{null-type} 
\end{align*}$$


  $$\SHADE{\NAMEREF{assign}
           (  \VAR{Var}, 
                  \VAR{Val} )}$$ assigns the value $$\SHADE{\VAR{Val}}$$ to the variable $$\SHADE{\VAR{Var}}$$,
  provided that $$\SHADE{\VAR{Var}}$$ was allocated with a type that contains $$\SHADE{\VAR{Val}}$$.


$$\begin{align*}
  \KEY{Rule} \quad
    & \RULE{
      & \NAMEHYPER{../../../Values/Primitive}{Booleans}{and}
          (  \NAMEHYPER{../../../Values/Composite}{Sets}{is-in-set}
                  (  \VAR{L}, 
                         \NAMEHYPER{../../../Values/Composite}{Maps}{dom}
                          (  \VAR{$\sigma$} ) ), 
                 \NAMEHYPER{../../../Values}{Value-Types}{is-in-type}
                  (  \VAR{Val}, 
                         \VAR{T} ) ) 
        == \NAMEHYPER{../../../Values/Primitive}{Booleans}{true}
      }{
      &  \langle \NAMEREF{assign}
                              (  \NAMEREF{variable}
                                      (  \VAR{L} : \NAMEREF{locations}, 
                                             \VAR{T} : \NAMEHYPER{../../../Values}{Value-Types}{types} ), 
                                     \VAR{Val} : \NAMEHYPER{../../../Values}{Value-Types}{values} ), \NAMEREF{store} (  \VAR{$\sigma$} ) \rangle \TRANS \\&\quad
          \langle \NAMEHYPER{../../../Values/Primitive}{Null}{null-value}, \NAMEREF{store} (  \NAMEHYPER{../../../Values/Composite}{Maps}{map-override}
                                                       (  \{ \VAR{L} \mapsto 
                                                                  \VAR{Val} \}, 
                                                              \VAR{$\sigma$} ) ) \rangle
      }
\\
  \KEY{Rule} \quad
    & \RULE{
      & \NAMEHYPER{../../../Values/Primitive}{Booleans}{and}
          (  \NAMEHYPER{../../../Values/Composite}{Sets}{is-in-set}
                  (  \VAR{L}, 
                         \NAMEHYPER{../../../Values/Composite}{Maps}{dom}
                          (  \VAR{$\sigma$} ) ), 
                 \NAMEHYPER{../../../Values}{Value-Types}{is-in-type}
                  (  \VAR{Val}, 
                         \VAR{T} ) ) 
        == \NAMEHYPER{../../../Values/Primitive}{Booleans}{false}
      }{
      &  \langle \NAMEREF{assign}
                              (  \NAMEREF{variable}
                                      (  \VAR{L} : \NAMEREF{locations}, 
                                             \VAR{T} : \NAMEHYPER{../../../Values}{Value-Types}{types} ), 
                                     \VAR{Val} : \NAMEHYPER{../../../Values}{Value-Types}{values} ), \NAMEREF{store} (  \VAR{$\sigma$} ) \rangle \TRANS \\&\quad
          \langle \NAMEHYPER{../../Abnormal}{Failing}{fail}, \NAMEREF{store} (  \VAR{$\sigma$} ) \rangle
      }
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{assigned}(
                       \_ : \NAMEREF{variables}) 
    :  \TO \NAMEHYPER{../../../Values}{Value-Types}{values} 
\end{align*}$$


  $$\SHADE{\NAMEREF{assigned}
           (  \VAR{Var} )}$$ gives the value assigned to the variable $$\SHADE{\VAR{Var}}$$,
  failing if no value is currently assigned.


$$\begin{align*}
  \KEY{Rule} \quad
    & \RULE{
      & \NAMEHYPER{../../../Values/Composite}{Maps}{map-lookup}
          (  \VAR{$\sigma$}, 
                 \VAR{L} ) \leadsto 
          (  \VAR{Val} : \NAMEHYPER{../../../Values}{Value-Types}{values} )
      }{
      &  \langle \NAMEREF{assigned}
                              (  \NAMEREF{variable}
                                      (  \VAR{L} : \NAMEREF{locations}, 
                                             \VAR{T} : \NAMEHYPER{../../../Values}{Value-Types}{types} ) ), \NAMEREF{store} (  \VAR{$\sigma$} ) \rangle \TRANS \\&\quad
          \langle \VAR{Val}, \NAMEREF{store} (  \VAR{$\sigma$} ) \rangle
      }
\\
  \KEY{Rule} \quad
    & \RULE{
      & \NAMEHYPER{../../../Values/Composite}{Maps}{map-lookup}
          (  \VAR{$\sigma$}, 
                 \VAR{L} ) 
        == (   \  )
      }{
      &  \langle \NAMEREF{assigned}
                              (  \NAMEREF{variable}
                                      (  \VAR{L} : \NAMEREF{locations}, 
                                             \VAR{T} : \NAMEHYPER{../../../Values}{Value-Types}{types} ) ), \NAMEREF{store} (  \VAR{$\sigma$} ) \rangle \TRANS \\&\quad
          \langle \NAMEHYPER{../../Abnormal}{Failing}{fail}, \NAMEREF{store} (  \VAR{$\sigma$} ) \rangle
      }
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{current-value}(
                       \_ : \NAMEHYPER{../../../Values}{Value-Types}{values}) 
    :  \TO \NAMEHYPER{../../../Values}{Value-Types}{values} 
\end{align*}$$


  $$\SHADE{\NAMEREF{current-value}
           (  \VAR{V} )}$$ gives the same result as $$\SHADE{\NAMEREF{assigned}
           (  \VAR{V} )}$$ when $$\SHADE{\VAR{V}}$$ is a
  simple variable, and otherwise gives $$\SHADE{\VAR{V}}$$. 
  
  It represents implicit dereferencing of a value that might be a variable.


$$\begin{align*}
  \KEY{Rule} \quad
    & \NAMEREF{current-value}
        (  \VAR{Var} : \NAMEREF{variables} ) \leadsto 
        \NAMEREF{assigned}
          (  \VAR{Var} )
\\
  \KEY{Rule} \quad
    & \NAMEREF{current-value}
        (  \VAR{U} : \mathop{\sim} \NAMEREF{variables} ) \leadsto 
        \VAR{U}
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{un-assign}(
                       \_ : \NAMEREF{variables}) 
    :  \TO \NAMEHYPER{../../../Values/Primitive}{Null}{null-type} 
\end{align*}$$


  $$\SHADE{\NAMEREF{un-assign}
           (  \VAR{Var} )}$$ remove the value assigned to the variable $$\SHADE{\VAR{Var}}$$.


$$\begin{align*}
  \KEY{Rule} \quad
    & \RULE{
      & \NAMEHYPER{../../../Values/Composite}{Sets}{is-in-set}
          (  \VAR{L}, 
                 \NAMEHYPER{../../../Values/Composite}{Maps}{dom}
                  (  \VAR{$\sigma$} ) ) 
        == \NAMEHYPER{../../../Values/Primitive}{Booleans}{true}
      }{
      &  \langle \NAMEREF{un-assign}
                              (  \NAMEREF{variable}
                                      (  \VAR{L} : \NAMEREF{locations}, 
                                             \VAR{T} : \NAMEHYPER{../../../Values}{Value-Types}{types} ) ), \NAMEREF{store} (  \VAR{$\sigma$} ) \rangle \TRANS \\&\quad
          \langle \NAMEHYPER{../../../Values/Primitive}{Null}{null-value}, \NAMEREF{store} (  \NAMEHYPER{../../../Values/Composite}{Maps}{map-override}
                                                       (  \{ \VAR{L} \mapsto 
                                                                  (   \  ) \}, 
                                                              \VAR{$\sigma$} ) ) \rangle
      }
\\
  \KEY{Rule} \quad
    & \RULE{
      & \NAMEHYPER{../../../Values/Composite}{Sets}{is-in-set}
          (  \VAR{L}, 
                 \NAMEHYPER{../../../Values/Composite}{Maps}{dom}
                  (  \VAR{$\sigma$} ) ) 
        == \NAMEHYPER{../../../Values/Primitive}{Booleans}{false}
      }{
      &  \langle \NAMEREF{un-assign}
                              (  \NAMEREF{variable}
                                      (  \VAR{L} : \NAMEREF{locations}, 
                                             \VAR{T} : \NAMEHYPER{../../../Values}{Value-Types}{types} ) ), \NAMEREF{store} (  \VAR{$\sigma$} ) \rangle \TRANS \\&\quad
          \langle \NAMEHYPER{../../Abnormal}{Failing}{fail}, \NAMEREF{store} (  \VAR{$\sigma$} ) \rangle
      }
\end{align*}$$

#### Structured variables
               



  Structured variables are structured values where some components are
  simple variables. Such component variables can be selected using the
  same funcons as for selecting components of structured values. 

  Structured variables containing both simple variables and values correspond
  to hybrid structures where particular components are mutable.
  
  All datatypes (except for abstractions) can be used to form structured
  variables. So can maps, but not sets or multisets. 
  
  Structural generalisations of $$\SHADE{\NAMEREF{assign}
           (  \VAR{Var}, 
                  \VAR{Val} )}$$ and 
  $$\SHADE{\NAMEREF{assigned}
           (  \VAR{Var} )}$$ access all the simple variables contained in a
  structured variable. Assignment requires each component value of a hybrid
  structured variable to be equal to the corresponding component of the
  structured value.


$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{structural-assign}(
                       \_ : \NAMEHYPER{../../../Values}{Value-Types}{values}, \_ : \NAMEHYPER{../../../Values}{Value-Types}{values}) 
    :  \TO \NAMEHYPER{../../../Values/Primitive}{Null}{null-type} 
\end{align*}$$


  $$\SHADE{\NAMEREF{structural-assign}
           (  \VAR{V}\SUB{1}, 
                  \VAR{V}\SUB{2} )}$$ takes a (potentially) structured variable
  $$\SHADE{\VAR{V}\SUB{1}}$$and a (potentially) structured value $$\SHADE{\VAR{V}\SUB{2}}$$. Provided that the structure
  and all non-variable values in $$\SHADE{\VAR{V}\SUB{1}}$$ match the structure and corresponding
  values of $$\SHADE{\VAR{V}\SUB{2}}$$, all the simple variables in $$\SHADE{\VAR{V}\SUB{1}}$$ are assigned the
  corresponding values of $$\SHADE{\VAR{V}\SUB{2}}$$; otherwise the assignment fails.


$$\begin{align*}
  \KEY{Rule} \quad
    & \NAMEREF{structural-assign}
        (  \VAR{V}\SUB{1} : \NAMEREF{variables}, 
               \VAR{V}\SUB{2} : \NAMEHYPER{../../../Values}{Value-Types}{values} ) \leadsto \\&\quad
        \NAMEREF{assign}
          (  \VAR{V}\SUB{1}, 
                 \VAR{V}\SUB{2} )
\\
  \KEY{Rule} \quad
    & \RULE{
      &  \VAR{V}\SUB{1} : \mathop{\sim} (  \NAMEREF{variables} )\\&
        \VAR{V}\SUB{1} \leadsto 
          \NAMEHYPER{../../../Values/Composite}{Datatypes}{datatype-value}
            (  \VAR{I}\SUB{1} : \NAMEHYPER{../.}{Binding}{identifiers}, 
                   \VAR{V}\SUB{1}\STAR : \NAMEHYPER{../../../Values}{Value-Types}{values}\STAR )\\&
        \VAR{V}\SUB{2} \leadsto 
          \NAMEHYPER{../../../Values/Composite}{Datatypes}{datatype-value}
            (  \VAR{I}\SUB{2} : \NAMEHYPER{../.}{Binding}{identifiers}, 
                   \VAR{V}\SUB{2}\STAR : \NAMEHYPER{../../../Values}{Value-Types}{values}\STAR )
      }{
      & \NAMEREF{structural-assign}
          (  \VAR{V}\SUB{1} : \NAMEHYPER{../../../Values/Composite}{Datatypes}{datatype-values}, 
                 \VAR{V}\SUB{2} : \NAMEHYPER{../../../Values/Composite}{Datatypes}{datatype-values} ) \leadsto \\&\quad
          \NAMEHYPER{../.}{Flowing}{sequential}
            ( \\&\quad\quad \NAMEHYPER{../../Abnormal}{Failing}{check-true}
                    (  \NAMEHYPER{../../../Values}{Value-Types}{is-equal}
                            (  \VAR{I}\SUB{1}, 
                                   \VAR{I}\SUB{2} ) ), \\&\quad\quad
                   \NAMEHYPER{../.}{Flowing}{effect}
                    ( \\&\quad\quad\quad \NAMEHYPER{../../../Values/Composite}{Tuples}{tuple}
                            ( \\&\quad\quad\quad\quad \NAMEHYPER{../.}{Giving}{interleave-map}
                                    ( \\&\quad\quad\quad\quad\quad \NAMEREF{structural-assign}
                                            (  \NAMEHYPER{../../../Values/Composite}{Tuples}{tuple-elements}
                                                    (  \NAMEHYPER{../.}{Giving}{given} ) ), \\&\quad\quad\quad\quad\quad
                                           \NAMEHYPER{../../../Values/Composite}{Tuples}{tuple-zip}
                                            (  \NAMEHYPER{../../../Values/Composite}{Tuples}{tuple}
                                                    (  \VAR{V}\SUB{1}\STAR ), 
                                                   \NAMEHYPER{../../../Values/Composite}{Tuples}{tuple}
                                                    (  \VAR{V}\SUB{2}\STAR ) ) ) ) ), \\&\quad\quad
                   \NAMEHYPER{../../../Values/Primitive}{Null}{null-value} )
      }
\end{align*}$$


  Note that simple variables are datatype values.


$$\begin{align*}
  \KEY{Rule} \quad
    & \RULE{
      & \NAMEHYPER{../../../Values/Composite}{Maps}{dom}
          (  \VAR{M}\SUB{1} ) 
        == \{   \  \}
      }{
      & \NAMEREF{structural-assign}
          (  \VAR{M}\SUB{1} : \NAMEHYPER{../../../Values/Composite}{Maps}{maps}
                            (  \_, 
                                   \_ ), 
                 \VAR{M}\SUB{2} : \NAMEHYPER{../../../Values/Composite}{Maps}{maps}
                            (  \_, 
                                   \_ ) ) \leadsto \\&\quad
          \NAMEHYPER{../../Abnormal}{Failing}{check-true}
            (  \NAMEHYPER{../../../Values}{Value-Types}{is-equal}
                    (  \NAMEHYPER{../../../Values/Composite}{Maps}{dom}
                            (  \VAR{M}\SUB{2} ), 
                           \{   \  \} ) )
      }
\\
  \KEY{Rule} \quad
    & \RULE{
      & \NAMEHYPER{../../../Values/Composite}{Sets}{some-element}
          (  \NAMEHYPER{../../../Values/Composite}{Maps}{dom}
                  (  \VAR{M}\SUB{1} ) ) \leadsto 
          \VAR{K}
      }{
      & \NAMEREF{structural-assign}
          (  \VAR{M}\SUB{1} : \NAMEHYPER{../../../Values/Composite}{Maps}{maps}
                            (  \_, 
                                   \_ ), 
                 \VAR{M}\SUB{2} : \NAMEHYPER{../../../Values/Composite}{Maps}{maps}
                            (  \_, 
                                   \_ ) ) \leadsto \\&\quad
          \NAMEHYPER{../.}{Flowing}{sequential}
            ( \\&\quad\quad \NAMEHYPER{../../Abnormal}{Failing}{check-true}
                    (  \NAMEHYPER{../../../Values/Composite}{Sets}{is-in-set}
                            (  \VAR{K}, 
                                   \NAMEHYPER{../../../Values/Composite}{Maps}{dom}
                                    (  \VAR{M}\SUB{2} ) ) ), \\&\quad\quad
                   \NAMEREF{structural-assign}
                    (  \NAMEHYPER{../../../Values/Composite}{Maps}{map-lookup}
                            (  \VAR{M}\SUB{1}, 
                                   \VAR{K} ), 
                           \NAMEHYPER{../../../Values/Composite}{Maps}{map-lookup}
                            (  \VAR{M}\SUB{2}, 
                                   \VAR{K} ) ), \\&\quad\quad
                   \NAMEREF{structural-assign}
                    (  \NAMEHYPER{../../../Values/Composite}{Maps}{map-delete}
                            (  \VAR{M}\SUB{1}, 
                                   \{  \VAR{K} \} ), 
                           \NAMEHYPER{../../../Values/Composite}{Maps}{map-delete}
                            (  \VAR{M}\SUB{2}, 
                                   \{  \VAR{K} \} ) ) )
      }
\\
  \KEY{Rule} \quad
    & \RULE{
      &  \VAR{V}\SUB{1} : \mathop{\sim} (  \NAMEHYPER{../../../Values/Composite}{Datatypes}{datatype-values}  \mid \NAMEHYPER{../../../Values/Composite}{Maps}{maps}
                                                                     (  \_, 
                                                                            \_ ) )
      }{
      & \NAMEREF{structural-assign}
          (  \VAR{V}\SUB{1} : \NAMEHYPER{../../../Values}{Value-Types}{values}, 
                 \VAR{V}\SUB{2} : \NAMEHYPER{../../../Values}{Value-Types}{values} ) \leadsto \\&\quad
          \NAMEHYPER{../../Abnormal}{Failing}{check-true}
            (  \NAMEHYPER{../../../Values}{Value-Types}{is-equal}
                    (  \VAR{V}\SUB{1}, 
                           \VAR{V}\SUB{2} ) )
      }
\end{align*}$$

$$\begin{align*}
  \KEY{Funcon} \quad
  & \NAMEDECL{structural-assigned}(
                       \_ : \NAMEHYPER{../../../Values}{Value-Types}{values}) 
    :  \TO \NAMEHYPER{../../../Values}{Value-Types}{values} 
\end{align*}$$


  $$\SHADE{\NAMEREF{structural-assigned}
           (  \VAR{V} )}$$ takes a (potentially) structured variable $$\SHADE{\VAR{V}}$$,
  and computes the value of $$\SHADE{\VAR{V}}$$ with all simple variables in $$\SHADE{\VAR{V}}$$ replaced by
  their assigned values, failing if any of them do not have assigned values.
  
  When $$\SHADE{\VAR{V}}$$ is just a simple variable or a (possibly structured) value with no
  component variables, $$\SHADE{\NAMEREF{structural-assigned}
           (  \VAR{V} )}$$ gives the same result as
  $$\SHADE{\NAMEREF{current-value}
           (  \VAR{V} )}$$.


$$\begin{align*}
  \KEY{Rule} \quad
    & \NAMEREF{structural-assigned}
        (  \VAR{Var} : \NAMEREF{variables} ) \leadsto 
        \NAMEREF{assigned}
          (  \VAR{Var} )
\\
  \KEY{Rule} \quad
    & \RULE{
      &  \VAR{V} : \mathop{\sim} (  \NAMEREF{variables} )\\&
        \VAR{V} \leadsto 
          \NAMEHYPER{../../../Values/Composite}{Datatypes}{datatype-value}
            (  \VAR{I} : \NAMEHYPER{../.}{Binding}{identifiers}, 
                   \VAR{V}\STAR : \NAMEHYPER{../../../Values}{Value-Types}{values}\STAR )
      }{
      & \NAMEREF{structural-assigned}
          (  \VAR{V} : \NAMEHYPER{../../../Values/Composite}{Datatypes}{datatype-values} ) \leadsto \\&\quad
          \NAMEHYPER{../../../Values/Composite}{Datatypes}{datatype-value}
            (  \VAR{I}, 
                   \NAMEHYPER{../.}{Giving}{interleave-map}
                    (  \NAMEREF{structural-assigned}
                            (  \NAMEHYPER{../.}{Giving}{given} ), 
                           \VAR{V}\STAR ) )
      }
\end{align*}$$


  Note that simple variables are datatype values.


$$\begin{align*}
  \KEY{Rule} \quad
    & \NAMEREF{structural-assigned}
        (  \VAR{M} : \NAMEHYPER{../../../Values/Composite}{Maps}{maps}
                          (  \_, 
                                 \_ ) ) \leadsto \\&\quad
        \NAMEHYPER{../../../Values/Composite}{Maps}{map}
          (  \NAMEHYPER{../.}{Giving}{interleave-map}
                  (  \NAMEREF{structural-assigned}
                          (  \NAMEHYPER{../.}{Giving}{given} ), 
                         \NAMEHYPER{../../../Values/Composite}{Maps}{map-elements}
                          (  \VAR{M} ) ) )
\\
  \KEY{Rule} \quad
    & \RULE{
      &  \VAR{U} : \mathop{\sim} (  \NAMEHYPER{../../../Values/Composite}{Datatypes}{datatype-values}  \mid \NAMEHYPER{../../../Values/Composite}{Maps}{maps}
                                                                     (  \_, 
                                                                            \_ ) )
      }{
      & \NAMEREF{structural-assigned}
          (  \VAR{U} : \NAMEHYPER{../../../Values}{Value-Types}{values} ) \leadsto 
          \VAR{U}
      }
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
[Storing.cbs]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Normal/Storing/Storing.cbs
  "CBS SOURCE FILE ON GITHUB"
[PLAIN]: /CBS-beta/docs/Funcons-beta/Computations/Normal/Storing
  "CBS SOURCE WEB PAGE"
 [PRETTY]: /CBS-beta/math/Funcons-beta/Computations/Normal/Storing
  "CBS-KATEX WEB PAGE"
[PDF]: https://github.com/plancomps/CBS-beta/blob/master/Funcons-beta/Computations/Normal/Storing/Storing.pdf
  "CBS-LATEX PDF FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
{::comment}{% endraw %}{:/}
