---
layout: default
title: "Storing"
math: katex
parent: Normal
ancestor: Funcons-beta

---

[Funcons-beta] : [Storing.cbs]

### Storing
               


$$\relax\begin{aligned}\relax
  [ ~ 
  \KEY{Datatype} ~ & \NAMEREF{locations} \\
  \KEY{Alias} ~ & \NAMEREF{locs} \\
  \KEY{Type} ~ & \NAMEREF{stores} \\
  \KEY{Entity} ~ & \NAMEREF{store} \\
  \KEY{Funcon} ~ & \NAMEREF{initialise-storing} \\
  \KEY{Funcon} ~ & \NAMEREF{store-clear} \\
  \KEY{Datatype} ~ & \NAMEREF{variables} \\
  \KEY{Alias} ~ & \NAMEREF{vars} \\
  \KEY{Funcon} ~ & \NAMEREF{variable} \\
  \KEY{Alias} ~ & \NAMEREF{var} \\
  \KEY{Funcon} ~ & \NAMEREF{allocate-variable} \\
  \KEY{Alias} ~ & \NAMEREF{alloc} \\
  \KEY{Funcon} ~ & \NAMEREF{recycle-variables} \\
  \KEY{Alias} ~ & \NAMEREF{recycle} \\
  \KEY{Funcon} ~ & \NAMEREF{initialise-variable} \\
  \KEY{Alias} ~ & \NAMEREF{init} \\
  \KEY{Funcon} ~ & \NAMEREF{allocate-initialised-variable} \\
  \KEY{Alias} ~ & \NAMEREF{alloc-init} \\
  \KEY{Funcon} ~ & \NAMEREF{assign} \\
  \KEY{Funcon} ~ & \NAMEREF{assigned} \\
  \KEY{Funcon} ~ & \NAMEREF{current-value} \\
  \KEY{Funcon} ~ & \NAMEREF{un-assign} \\
  \KEY{Funcon} ~ & \NAMEREF{structural-assign} \\
  \KEY{Funcon} ~ & \NAMEREF{structural-assigned}
  ~ ]
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Meta-variables} ~ 
  & \VAR{T}, \VAR{T}' <: \NAMEHYPER{../../../Values}{Value-Types}{values}
\end{aligned}$$

#### Stores
               


$$\relax\begin{aligned}\relax
  \KEY{Type} ~  
  & \NAMEDECL{locations}  
  \leadsto \NAMEHYPER{../.}{Generating}{atoms}
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{locs} = \NAMEREF{locations}
\end{aligned}$$


  A storage location is represented by an atom.


$$\relax\begin{aligned}\relax
  \KEY{Type} ~  
  & \NAMEDECL{stores}  
  \leadsto \NAMEHYPER{../../../Values/Composite}{Maps}{maps}
             ( \NAMEREF{locations},      
               \NAMEHYPER{../../../Values}{Value-Types}{values}\QUERY )
\end{aligned}$$


  The domain of a store is the set of currently allocated locations.
  Mapping a location to $$\SHADE{(  ~  )}$$ models the absence of its stored value;
  removing it from the store allows it to be re-allocated.


$$\relax\begin{aligned}\relax
  \KEY{Entity} ~ 
  & \langle \_, \NAMEDECL{store}(\_ : \NAMEREF{stores}) \rangle \TRANS  \langle \_, \NAME{store}(\_ : \NAME{stores}) \rangle
\end{aligned}$$


  The current store is a mutable entity.
  A transition $$\SHADE{ \langle \VAR{X}, \NAMEREF{store} ( \VAR{$\sigma$} ) \rangle \TRANS 
           \langle \VAR{X}', \NAMEREF{store} ( \VAR{$\sigma$}' ) \rangle}$$ models
  a step from $$\SHADE{\VAR{X}}$$ to $$\SHADE{\VAR{X}'}$$ where the difference between $$\SHADE{\VAR{$\sigma$}}$$ and $$\SHADE{\VAR{$\sigma$}'}$$
  (if any) corresponds to storage effects.


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{store-clear} :  \TO \NAMEHYPER{../../../Values/Primitive}{Null}{null-type}
\\
  \KEY{Rule} ~ 
    &  \langle \NAMEREF{store-clear}, \NAMEREF{store} ( \_ ) \rangle \TRANS 
        \langle \NAMEHYPER{../../../Values/Primitive}{Null}{null-value}, \NAMEREF{store} ( \NAMEHYPER{../../../Values/Composite}{Maps}{map}
                                                 (  ~  ) ) \rangle
\end{aligned}$$


  $$\SHADE{\NAMEREF{store-clear}}$$ ensures the store is empty.


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{initialise-storing}(\VAR{X} :  \TO \VAR{T}) :  \TO \VAR{T} \\
  & \quad \leadsto \NAMEHYPER{../.}{Flowing}{sequential}
                     ( \NAMEREF{store-clear}, \\&\quad \quad \quad \quad 
                       \NAMEHYPER{../.}{Giving}{initialise-giving}
                         ( \NAMEHYPER{../.}{Generating}{initialise-generating}
                             ( \VAR{X} ) ) )
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{init-storing} = \NAMEREF{initialise-storing}
\end{aligned}$$


  $$\SHADE{\NAMEREF{initialise-storing}
           ( \VAR{X} )}$$ ensures that the entities used by the funcons for
  storing are properly initialised.


#### Simple variables
               


  
  Simple variables may store primitive or structured values. The type of
  values stored by a variable is fixed when it is allocated. For instance,
  $$\SHADE{\NAMEREF{allocate-variable}
           ( \NAMEHYPER{../../../Values/Primitive}{Integers}{integers} )}$$ allocates a simple integer variable, and
  $$\SHADE{\NAMEREF{allocate-variable}
           ( \NAMEHYPER{../../../Values/Composite}{Vectors}{vectors}
               ( \NAMEHYPER{../../../Values/Primitive}{Integers}{integers} ) )}$$ allocates a structured variable for
  storing vectors of integers, which can be updated only monolithically.


$$\relax\begin{aligned}\relax
  \KEY{Datatype} ~ 
  \NAMEDECL{variables}  
  ~ ::= ~ & \NAMEDECL{variable} (\_ : \NAMEREF{locations}, \_ : \NAMEHYPER{../../../Values}{Value-Types}{value-types})
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Alias} ~ 
  & \NAMEDECL{vars} = \NAMEREF{variables}
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{var} = \NAMEREF{variable}
\end{aligned}$$


  $$\SHADE{\NAMEREF{variables}}$$ is the type of simple variables that can store values of
  a particular type.

  $$\SHADE{\NAMEREF{variable}
           ( \VAR{L},   
             \VAR{T} )}$$ constructs a simple variable for storing values of
  type $$\SHADE{\VAR{T}}$$ at location $$\SHADE{\VAR{L}}$$. Variables at different locations are independent. 
  
  Note that $$\SHADE{\NAMEREF{variables}}$$ is a subtype of $$\SHADE{\NAMEHYPER{../../../Values/Composite}{Datatypes}{datatype-values}}$$.


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{allocate-variable}(\VAR{T} : \NAMEHYPER{../../../Values}{Value-Types}{types}) :  \TO \NAMEREF{variables}
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{alloc} = \NAMEREF{allocate-variable}
\end{aligned}$$


  $$\SHADE{\NAMEREF{allocate-variable}
           ( \VAR{T} )}$$ gives a simple variable whose location is not in the
  current store. Subsequent uses of $$\SHADE{\NAMEREF{allocate-variable}
           ( \VAR{T}' )}$$ give independent
  variables, except after $$\SHADE{\NAMEREF{recycle-variables}
           ( \VAR{V},   
             \cdots )}$$ or $$\SHADE{\NAMEREF{store-clear}}$$.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \RULE{
      &  \langle \NAMEHYPER{../.}{Generating}{use-atom-not-in}
                              ( \NAMEHYPER{../../../Values/Composite}{Maps}{dom}
                                  ( \VAR{$\sigma$} ) ), \NAMEREF{store} ( \VAR{$\sigma$} ) \rangle \TRANS 
          \langle \VAR{L}, \NAMEREF{store} ( \VAR{$\sigma$}' ) \rangle\\
        &\NAMEHYPER{../../../Values/Composite}{Maps}{map-override}
          ( \{ \VAR{L} \mapsto 
                 (  ~  ) \},   
            \VAR{$\sigma$}' ) \leadsto
          \VAR{$\sigma$}''
      }{
      &  \langle \NAMEREF{allocate-variable}
                              ( \VAR{T} : \NAMEHYPER{../../../Values}{Value-Types}{types} ), \NAMEREF{store} ( \VAR{$\sigma$} ) \rangle \TRANS 
          \langle \NAMEREF{variable}
                    ( \VAR{L},   
                      \VAR{T} ), \NAMEREF{store} ( \VAR{$\sigma$}'' ) \rangle
      }
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{recycle-variables}(\_ : \NAMEREF{variables}\PLUS) :  \TO \NAMEHYPER{../../../Values/Primitive}{Null}{null-type}
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{recycle} = \NAMEREF{recycle-variables}
\end{aligned}$$


  $$\SHADE{\NAMEREF{recycle-variables}
           ( \VAR{Var},   
             \cdots )}$$ removes the locations of $$\SHADE{\VAR{Var}}$$, ..., from the
  current store, so that they may subsequently be re-allocated.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \RULE{
      & \NAMEHYPER{../../../Values/Composite}{Sets}{is-in-set}
          ( \VAR{L},   
            \NAMEHYPER{../../../Values/Composite}{Maps}{dom}
              ( \VAR{$\sigma$} ) ) == 
          \NAMEHYPER{../../../Values/Primitive}{Booleans}{true}
      }{
      &  \langle \NAMEREF{recycle-variables}
                              ( \NAMEREF{variable}
                                  ( \VAR{L} : \NAMEREF{locations},    
                                    \VAR{T} : \NAMEHYPER{../../../Values}{Value-Types}{types} ) ), \NAMEREF{store} ( \VAR{$\sigma$} ) \rangle \TRANS 
          \langle \NAMEHYPER{../../../Values/Primitive}{Null}{null-value}, \NAMEREF{store} ( \NAMEHYPER{../../../Values/Composite}{Maps}{map-delete}
                                                   ( \VAR{$\sigma$},   
                                                     \{ \VAR{L} \} ) ) \rangle
      }
\\
  \KEY{Rule} ~ 
    & \RULE{
      & \NAMEHYPER{../../../Values/Composite}{Sets}{is-in-set}
          ( \VAR{L},   
            \NAMEHYPER{../../../Values/Composite}{Maps}{dom}
              ( \VAR{$\sigma$} ) ) == 
          \NAMEHYPER{../../../Values/Primitive}{Booleans}{false}
      }{
      &  \langle \NAMEREF{recycle-variables}
                              ( \NAMEREF{variable}
                                  ( \VAR{L} : \NAMEREF{locations},    
                                    \VAR{T} : \NAMEHYPER{../../../Values}{Value-Types}{types} ) ), \NAMEREF{store} ( \VAR{$\sigma$} ) \rangle \TRANS 
          \langle \NAMEHYPER{../../Abnormal}{Failing}{fail}, \NAMEREF{store} ( \VAR{$\sigma$} ) \rangle
      }
\\
  \KEY{Rule} ~ 
    & \NAMEREF{recycle-variables}
        ( \VAR{Var} : \NAMEREF{variables},   
          \VAR{Var}\PLUS : \NAMEREF{variables}\PLUS ) \leadsto
        \NAMEHYPER{../.}{Flowing}{sequential}
          ( \NAMEREF{recycle-variables}
              ( \VAR{Var} ),   
            \NAMEREF{recycle-variables}
              ( \VAR{Var}\PLUS ) )
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{initialise-variable}(\_ : \NAMEREF{variables}, \_ : \NAMEHYPER{../../../Values}{Value-Types}{values}) :  \TO \NAMEHYPER{../../../Values/Primitive}{Null}{null-type}
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{init} = \NAMEREF{initialise-variable}
\end{aligned}$$


  $$\SHADE{\NAMEREF{initialise-variable}
           ( \VAR{Var},   
             \VAR{Val} )}$$ assigns $$\SHADE{\VAR{Val}}$$ as the initial value of $$\SHADE{\VAR{Var}}$$,
  and gives $$\SHADE{\NAMEHYPER{../../../Values/Primitive}{Null}{null-value}}$$. If $$\SHADE{\VAR{Var}}$$ already has an assigned value, it fails.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \RULE{
      & \NAMEHYPER{../../../Values/Primitive}{Booleans}{and}
          ( \NAMEHYPER{../../../Values/Composite}{Sets}{is-in-set}
              ( \VAR{L},    
                \NAMEHYPER{../../../Values/Composite}{Maps}{dom}
                  ( \VAR{$\sigma$} ) ),   
            \NAMEHYPER{../../../Values/Primitive}{Booleans}{not} ~
              \NAMEHYPER{../../../Values}{Value-Types}{is-value}
                ( \NAMEHYPER{../../../Values/Composite}{Maps}{map-lookup}
                    ( \VAR{$\sigma$},      
                      \VAR{L} ) ),   
            \NAMEHYPER{../../../Values}{Value-Types}{is-in-type}
              ( \VAR{Val},    
                \VAR{T} ) ) == 
          \NAMEHYPER{../../../Values/Primitive}{Booleans}{true}
      }{
      &  \langle \NAMEREF{initialise-variable}
                              ( \NAMEREF{variable}
                                  ( \VAR{L} : \NAMEREF{locations},    
                                    \VAR{T} : \NAMEHYPER{../../../Values}{Value-Types}{types} ),   
                                \VAR{Val} : \NAMEHYPER{../../../Values}{Value-Types}{values} ), \NAMEREF{store} ( \VAR{$\sigma$} ) \rangle \TRANS 
          \langle \NAMEHYPER{../../../Values/Primitive}{Null}{null-value}, \NAMEREF{store} ( \NAMEHYPER{../../../Values/Composite}{Maps}{map-override}
                                                   ( \{ \VAR{L} \mapsto 
                                                          \VAR{Val} \},   
                                                     \VAR{$\sigma$} ) ) \rangle
      }
\\
  \KEY{Rule} ~ 
    & \RULE{
      & \NAMEHYPER{../../../Values/Primitive}{Booleans}{and}
          ( \NAMEHYPER{../../../Values/Composite}{Sets}{is-in-set}
              ( \VAR{L},    
                \NAMEHYPER{../../../Values/Composite}{Maps}{dom}
                  ( \VAR{$\sigma$} ) ),   
            \NAMEHYPER{../../../Values/Primitive}{Booleans}{not} ~
              \NAMEHYPER{../../../Values}{Value-Types}{is-value}
                ( \NAMEHYPER{../../../Values/Composite}{Maps}{map-lookup}
                    ( \VAR{$\sigma$},      
                      \VAR{L} ) ),   
            \NAMEHYPER{../../../Values}{Value-Types}{is-in-type}
              ( \VAR{Val},    
                \VAR{T} ) ) == 
          \NAMEHYPER{../../../Values/Primitive}{Booleans}{false}
      }{
      &  \langle \NAMEREF{initialise-variable}
                              ( \NAMEREF{variable}
                                  ( \VAR{L} : \NAMEREF{locations},    
                                    \VAR{T} : \NAMEHYPER{../../../Values}{Value-Types}{types} ),   
                                \VAR{Val} : \NAMEHYPER{../../../Values}{Value-Types}{values} ), \NAMEREF{store} ( \VAR{$\sigma$} ) \rangle \TRANS 
          \langle \NAMEHYPER{../../Abnormal}{Failing}{fail}, \NAMEREF{store} ( \VAR{$\sigma$} ) \rangle
      }
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{allocate-initialised-variable}(\VAR{T} , \VAR{Val} : \VAR{T}) :  \TO \NAMEREF{variables} \\
  & \quad \leadsto \NAMEHYPER{../.}{Giving}{give}
                     ( \NAMEREF{allocate-variable}
                         ( \VAR{T} ), \\&\quad \quad \quad \quad 
                       \NAMEHYPER{../.}{Flowing}{sequential}
                         ( \NAMEREF{initialise-variable}
                             ( \NAMEHYPER{../.}{Giving}{given}, \\&\quad \quad \quad \quad \quad \quad 
                               \VAR{Val} ), \\&\quad \quad \quad \quad \quad 
                           \NAMEHYPER{../.}{Giving}{given} ) )
\\
  \KEY{Alias} ~ 
  & \NAMEDECL{alloc-init} = \NAMEREF{allocate-initialised-variable}
\end{aligned}$$


  $$\SHADE{\NAMEREF{allocate-initialised-variable}
           ( \VAR{T},   
             \VAR{Val} )}$$ allocates a simple variable for
  storing values of type $$\SHADE{\VAR{T}}$$, initialises its value to $$\SHADE{\VAR{Val}}$$, and returns the
  variable.


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{assign}(\_ : \NAMEREF{variables}, \_ : \NAMEHYPER{../../../Values}{Value-Types}{values}) :  \TO \NAMEHYPER{../../../Values/Primitive}{Null}{null-type}
\end{aligned}$$


  $$\SHADE{\NAMEREF{assign}
           ( \VAR{Var},   
             \VAR{Val} )}$$ assigns the value $$\SHADE{\VAR{Val}}$$ to the variable $$\SHADE{\VAR{Var}}$$,
  provided that $$\SHADE{\VAR{Var}}$$ was allocated with a type that contains $$\SHADE{\VAR{Val}}$$.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \RULE{
      & \NAMEHYPER{../../../Values/Primitive}{Booleans}{and}
          ( \NAMEHYPER{../../../Values/Composite}{Sets}{is-in-set}
              ( \VAR{L},    
                \NAMEHYPER{../../../Values/Composite}{Maps}{dom}
                  ( \VAR{$\sigma$} ) ),   
            \NAMEHYPER{../../../Values}{Value-Types}{is-in-type}
              ( \VAR{Val},    
                \VAR{T} ) ) == 
          \NAMEHYPER{../../../Values/Primitive}{Booleans}{true}
      }{
      &  \langle \NAMEREF{assign}
                              ( \NAMEREF{variable}
                                  ( \VAR{L} : \NAMEREF{locations},    
                                    \VAR{T} : \NAMEHYPER{../../../Values}{Value-Types}{types} ),   
                                \VAR{Val} : \NAMEHYPER{../../../Values}{Value-Types}{values} ), \NAMEREF{store} ( \VAR{$\sigma$} ) \rangle \TRANS 
          \langle \NAMEHYPER{../../../Values/Primitive}{Null}{null-value}, \NAMEREF{store} ( \NAMEHYPER{../../../Values/Composite}{Maps}{map-override}
                                                   ( \{ \VAR{L} \mapsto 
                                                          \VAR{Val} \},   
                                                     \VAR{$\sigma$} ) ) \rangle
      }
\\
  \KEY{Rule} ~ 
    & \RULE{
      & \NAMEHYPER{../../../Values/Primitive}{Booleans}{and}
          ( \NAMEHYPER{../../../Values/Composite}{Sets}{is-in-set}
              ( \VAR{L},    
                \NAMEHYPER{../../../Values/Composite}{Maps}{dom}
                  ( \VAR{$\sigma$} ) ),   
            \NAMEHYPER{../../../Values}{Value-Types}{is-in-type}
              ( \VAR{Val},    
                \VAR{T} ) ) == 
          \NAMEHYPER{../../../Values/Primitive}{Booleans}{false}
      }{
      &  \langle \NAMEREF{assign}
                              ( \NAMEREF{variable}
                                  ( \VAR{L} : \NAMEREF{locations},    
                                    \VAR{T} : \NAMEHYPER{../../../Values}{Value-Types}{types} ),   
                                \VAR{Val} : \NAMEHYPER{../../../Values}{Value-Types}{values} ), \NAMEREF{store} ( \VAR{$\sigma$} ) \rangle \TRANS 
          \langle \NAMEHYPER{../../Abnormal}{Failing}{fail}, \NAMEREF{store} ( \VAR{$\sigma$} ) \rangle
      }
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{assigned}(\_ : \NAMEREF{variables}) :  \TO \NAMEHYPER{../../../Values}{Value-Types}{values}
\end{aligned}$$


  $$\SHADE{\NAMEREF{assigned}
           ( \VAR{Var} )}$$ gives the value assigned to the variable $$\SHADE{\VAR{Var}}$$,
  failing if no value is currently assigned.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \RULE{
      & \NAMEHYPER{../../../Values/Composite}{Maps}{map-lookup}
          ( \VAR{$\sigma$},   
            \VAR{L} ) \leadsto
          ( \VAR{Val} : \NAMEHYPER{../../../Values}{Value-Types}{values} )
      }{
      &  \langle \NAMEREF{assigned}
                              ( \NAMEREF{variable}
                                  ( \VAR{L} : \NAMEREF{locations},    
                                    \VAR{T} : \NAMEHYPER{../../../Values}{Value-Types}{types} ) ), \NAMEREF{store} ( \VAR{$\sigma$} ) \rangle \TRANS 
          \langle \VAR{Val}, \NAMEREF{store} ( \VAR{$\sigma$} ) \rangle
      }
\\
  \KEY{Rule} ~ 
    & \RULE{
      & \NAMEHYPER{../../../Values/Composite}{Maps}{map-lookup}
          ( \VAR{$\sigma$},   
            \VAR{L} ) == 
          (  ~  )
      }{
      &  \langle \NAMEREF{assigned}
                              ( \NAMEREF{variable}
                                  ( \VAR{L} : \NAMEREF{locations},    
                                    \VAR{T} : \NAMEHYPER{../../../Values}{Value-Types}{types} ) ), \NAMEREF{store} ( \VAR{$\sigma$} ) \rangle \TRANS 
          \langle \NAMEHYPER{../../Abnormal}{Failing}{fail}, \NAMEREF{store} ( \VAR{$\sigma$} ) \rangle
      }
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{current-value}(\_ : \NAMEHYPER{../../../Values}{Value-Types}{values}) :  \TO \NAMEHYPER{../../../Values}{Value-Types}{values}
\end{aligned}$$


  $$\SHADE{\NAMEREF{current-value}
           ( \VAR{V} )}$$ gives the same result as $$\SHADE{\NAMEREF{assigned}
           ( \VAR{V} )}$$ when $$\SHADE{\VAR{V}}$$ is a
  simple variable, and otherwise gives $$\SHADE{\VAR{V}}$$. 
  
  It represents implicit dereferencing of a value that might be a variable.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \NAMEREF{current-value}
        ( \VAR{Var} : \NAMEREF{variables} ) \leadsto
        \NAMEREF{assigned}
          ( \VAR{Var} )
\\
  \KEY{Rule} ~ 
    & \NAMEREF{current-value}
        ( \VAR{U} : \mathop{\sim} \NAMEREF{variables} ) \leadsto
        \VAR{U}
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{un-assign}(\_ : \NAMEREF{variables}) :  \TO \NAMEHYPER{../../../Values/Primitive}{Null}{null-type}
\end{aligned}$$


  $$\SHADE{\NAMEREF{un-assign}
           ( \VAR{Var} )}$$ remove the value assigned to the variable $$\SHADE{\VAR{Var}}$$.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \RULE{
      & \NAMEHYPER{../../../Values/Composite}{Sets}{is-in-set}
          ( \VAR{L},   
            \NAMEHYPER{../../../Values/Composite}{Maps}{dom}
              ( \VAR{$\sigma$} ) ) == 
          \NAMEHYPER{../../../Values/Primitive}{Booleans}{true}
      }{
      &  \langle \NAMEREF{un-assign}
                              ( \NAMEREF{variable}
                                  ( \VAR{L} : \NAMEREF{locations},    
                                    \VAR{T} : \NAMEHYPER{../../../Values}{Value-Types}{types} ) ), \NAMEREF{store} ( \VAR{$\sigma$} ) \rangle \TRANS 
          \langle \NAMEHYPER{../../../Values/Primitive}{Null}{null-value}, \NAMEREF{store} ( \NAMEHYPER{../../../Values/Composite}{Maps}{map-override}
                                                   ( \{ \VAR{L} \mapsto 
                                                          (  ~  ) \},   
                                                     \VAR{$\sigma$} ) ) \rangle
      }
\\
  \KEY{Rule} ~ 
    & \RULE{
      & \NAMEHYPER{../../../Values/Composite}{Sets}{is-in-set}
          ( \VAR{L},   
            \NAMEHYPER{../../../Values/Composite}{Maps}{dom}
              ( \VAR{$\sigma$} ) ) == 
          \NAMEHYPER{../../../Values/Primitive}{Booleans}{false}
      }{
      &  \langle \NAMEREF{un-assign}
                              ( \NAMEREF{variable}
                                  ( \VAR{L} : \NAMEREF{locations},    
                                    \VAR{T} : \NAMEHYPER{../../../Values}{Value-Types}{types} ) ), \NAMEREF{store} ( \VAR{$\sigma$} ) \rangle \TRANS 
          \langle \NAMEHYPER{../../Abnormal}{Failing}{fail}, \NAMEREF{store} ( \VAR{$\sigma$} ) \rangle
      }
\end{aligned}$$

#### Structured variables
               



  Structured variables are structured values where some components are
  simple variables. Such component variables can be selected using the
  same funcons as for selecting components of structured values. 

  Structured variables containing both simple variables and values correspond
  to hybrid structures where particular components are mutable.
  
  All datatypes (except for abstractions) can be used to form structured
  variables. So can maps, but not sets or multisets. 
  
  Structural generalisations of $$\SHADE{\NAMEREF{assign}
           ( \VAR{Var},   
             \VAR{Val} )}$$ and 
  $$\SHADE{\NAMEREF{assigned}
           ( \VAR{Var} )}$$ access all the simple variables contained in a
  structured variable. Assignment requires each component value of a hybrid
  structured variable to be equal to the corresponding component of the
  structured value.


$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{structural-assign}(\_ : \NAMEHYPER{../../../Values}{Value-Types}{values}, \_ : \NAMEHYPER{../../../Values}{Value-Types}{values}) :  \TO \NAMEHYPER{../../../Values/Primitive}{Null}{null-type}
\end{aligned}$$


  $$\SHADE{\NAMEREF{structural-assign}
           ( \VAR{V}\SUB{1},   
             \VAR{V}\SUB{2} )}$$ takes a (potentially) structured variable
  $$\SHADE{\VAR{V}\SUB{1}}$$and a (potentially) structured value $$\SHADE{\VAR{V}\SUB{2}}$$. Provided that the structure
  and all non-variable values in $$\SHADE{\VAR{V}\SUB{1}}$$ match the structure and corresponding
  values of $$\SHADE{\VAR{V}\SUB{2}}$$, all the simple variables in $$\SHADE{\VAR{V}\SUB{1}}$$ are assigned the
  corresponding values of $$\SHADE{\VAR{V}\SUB{2}}$$; otherwise the assignment fails.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \NAMEREF{structural-assign}
        ( \VAR{V}\SUB{1} : \NAMEREF{variables},   
          \VAR{V}\SUB{2} : \NAMEHYPER{../../../Values}{Value-Types}{values} ) \leadsto
        \NAMEREF{assign}
          ( \VAR{V}\SUB{1},   
            \VAR{V}\SUB{2} )
\\
  \KEY{Rule} ~ 
    & \RULE{
      &  \VAR{V}\SUB{1} : \mathop{\sim} ( \NAMEREF{variables} )\\
        &\VAR{V}\SUB{1} \leadsto
          \NAMEHYPER{../../../Values/Composite}{Datatypes}{datatype-value}
            ( \VAR{I}\SUB{1} : \NAMEHYPER{../.}{Binding}{identifiers},   
              \VAR{V}\SUB{1}\STAR : \NAMEHYPER{../../../Values}{Value-Types}{values}\STAR )\\
        &\VAR{V}\SUB{2} \leadsto
          \NAMEHYPER{../../../Values/Composite}{Datatypes}{datatype-value}
            ( \VAR{I}\SUB{2} : \NAMEHYPER{../.}{Binding}{identifiers},   
              \VAR{V}\SUB{2}\STAR : \NAMEHYPER{../../../Values}{Value-Types}{values}\STAR )
      }{
      & \NAMEREF{structural-assign}
          ( \VAR{V}\SUB{1} : \NAMEHYPER{../../../Values/Composite}{Datatypes}{datatype-values},   
            \VAR{V}\SUB{2} : \NAMEHYPER{../../../Values/Composite}{Datatypes}{datatype-values} ) \leadsto
          \NAMEHYPER{../.}{Flowing}{sequential}
            ( \NAMEHYPER{../../Abnormal}{Failing}{check-true}
                ( \NAMEHYPER{../../../Values}{Value-Types}{is-equal}
                    ( \VAR{I}\SUB{1},     
                      \VAR{I}\SUB{2} ) ),   
              \NAMEHYPER{../.}{Flowing}{effect}
                ( \NAMEHYPER{../../../Values/Composite}{Tuples}{tuple}
                    ( \NAMEHYPER{../.}{Giving}{interleave-map}
                        ( \NAMEREF{structural-assign}
                            ( \NAMEHYPER{../../../Values/Composite}{Tuples}{tuple-elements}
                                ( \NAMEHYPER{../.}{Giving}{given} ) ),      
                          \NAMEHYPER{../../../Values/Composite}{Tuples}{tuple-zip}
                            ( \NAMEHYPER{../../../Values/Composite}{Tuples}{tuple}
                                ( \VAR{V}\SUB{1}\STAR ),       
                              \NAMEHYPER{../../../Values/Composite}{Tuples}{tuple}
                                ( \VAR{V}\SUB{2}\STAR ) ) ) ) ),   
              \NAMEHYPER{../../../Values/Primitive}{Null}{null-value} )
      }
\end{aligned}$$


  Note that simple variables are datatype values.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \RULE{
      & \NAMEHYPER{../../../Values/Composite}{Maps}{dom}
          ( \VAR{M}\SUB{1} ) == 
          \{  ~  \}
      }{
      & \NAMEREF{structural-assign}
          ( \VAR{M}\SUB{1} : \NAMEHYPER{../../../Values/Composite}{Maps}{maps}
                        ( \_,    
                          \_ ),   
            \VAR{M}\SUB{2} : \NAMEHYPER{../../../Values/Composite}{Maps}{maps}
                        ( \_,    
                          \_ ) ) \leadsto
          \NAMEHYPER{../../Abnormal}{Failing}{check-true}
            ( \NAMEHYPER{../../../Values}{Value-Types}{is-equal}
                ( \NAMEHYPER{../../../Values/Composite}{Maps}{dom}
                    ( \VAR{M}\SUB{2} ),    
                  \{  ~  \} ) )
      }
\\
  \KEY{Rule} ~ 
    & \RULE{
      & \NAMEHYPER{../../../Values/Composite}{Sets}{some-element}
          ( \NAMEHYPER{../../../Values/Composite}{Maps}{dom}
              ( \VAR{M}\SUB{1} ) ) \leadsto
          \VAR{K}
      }{
      & \NAMEREF{structural-assign}
          ( \VAR{M}\SUB{1} : \NAMEHYPER{../../../Values/Composite}{Maps}{maps}
                        ( \_,    
                          \_ ),   
            \VAR{M}\SUB{2} : \NAMEHYPER{../../../Values/Composite}{Maps}{maps}
                        ( \_,    
                          \_ ) ) \leadsto
          \NAMEHYPER{../.}{Flowing}{sequential}
            ( \NAMEHYPER{../../Abnormal}{Failing}{check-true}
                ( \NAMEHYPER{../../../Values/Composite}{Sets}{is-in-set}
                    ( \VAR{K},     
                      \NAMEHYPER{../../../Values/Composite}{Maps}{dom}
                        ( \VAR{M}\SUB{2} ) ) ),   
              \NAMEREF{structural-assign}
                ( \NAMEHYPER{../../../Values/Composite}{Maps}{map-lookup}
                    ( \VAR{M}\SUB{1},     
                      \VAR{K} ),    
                  \NAMEHYPER{../../../Values/Composite}{Maps}{map-lookup}
                    ( \VAR{M}\SUB{2},     
                      \VAR{K} ) ),   
              \NAMEREF{structural-assign}
                ( \NAMEHYPER{../../../Values/Composite}{Maps}{map-delete}
                    ( \VAR{M}\SUB{1},     
                      \{ \VAR{K} \} ),    
                  \NAMEHYPER{../../../Values/Composite}{Maps}{map-delete}
                    ( \VAR{M}\SUB{2},     
                      \{ \VAR{K} \} ) ) )
      }
\\
  \KEY{Rule} ~ 
    & \RULE{
      &  \VAR{V}\SUB{1} : \mathop{\sim} ( \NAMEHYPER{../../../Values/Composite}{Datatypes}{datatype-values} \mid \NAMEHYPER{../../../Values/Composite}{Maps}{maps}
                                                             ( \_,   
                                                               \_ ) )
      }{
      & \NAMEREF{structural-assign}
          ( \VAR{V}\SUB{1} : \NAMEHYPER{../../../Values}{Value-Types}{values},   
            \VAR{V}\SUB{2} : \NAMEHYPER{../../../Values}{Value-Types}{values} ) \leadsto
          \NAMEHYPER{../../Abnormal}{Failing}{check-true}
            ( \NAMEHYPER{../../../Values}{Value-Types}{is-equal}
                ( \VAR{V}\SUB{1},    
                  \VAR{V}\SUB{2} ) )
      }
\end{aligned}$$

$$\relax\begin{aligned}\relax
  \KEY{Funcon} ~ 
  & \NAMEDECL{structural-assigned}(\_ : \NAMEHYPER{../../../Values}{Value-Types}{values}) :  \TO \NAMEHYPER{../../../Values}{Value-Types}{values}
\end{aligned}$$


  $$\SHADE{\NAMEREF{structural-assigned}
           ( \VAR{V} )}$$ takes a (potentially) structured variable $$\SHADE{\VAR{V}}$$,
  and computes the value of $$\SHADE{\VAR{V}}$$ with all simple variables in $$\SHADE{\VAR{V}}$$ replaced by
  their assigned values, failing if any of them do not have assigned values.
  
  When $$\SHADE{\VAR{V}}$$ is just a simple variable or a (possibly structured) value with no
  component variables, $$\SHADE{\NAMEREF{structural-assigned}
           ( \VAR{V} )}$$ gives the same result as
  $$\SHADE{\NAMEREF{current-value}
           ( \VAR{V} )}$$.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \NAMEREF{structural-assigned}
        ( \VAR{Var} : \NAMEREF{variables} ) \leadsto
        \NAMEREF{assigned}
          ( \VAR{Var} )
\\
  \KEY{Rule} ~ 
    & \RULE{
      &  \VAR{V} : \mathop{\sim} ( \NAMEREF{variables} )\\
        &\VAR{V} \leadsto
          \NAMEHYPER{../../../Values/Composite}{Datatypes}{datatype-value}
            ( \VAR{I} : \NAMEHYPER{../.}{Binding}{identifiers},   
              \VAR{V}\STAR : \NAMEHYPER{../../../Values}{Value-Types}{values}\STAR )
      }{
      & \NAMEREF{structural-assigned}
          ( \VAR{V} : \NAMEHYPER{../../../Values/Composite}{Datatypes}{datatype-values} ) \leadsto
          \NAMEHYPER{../../../Values/Composite}{Datatypes}{datatype-value}
            ( \VAR{I},   
              \NAMEHYPER{../.}{Giving}{interleave-map}
                ( \NAMEREF{structural-assigned}
                    ( \NAMEHYPER{../.}{Giving}{given} ),    
                  \VAR{V}\STAR ) )
      }
\end{aligned}$$


  Note that simple variables are datatype values.


$$\relax\begin{aligned}\relax
  \KEY{Rule} ~ 
    & \NAMEREF{structural-assigned}
        ( \VAR{M} : \NAMEHYPER{../../../Values/Composite}{Maps}{maps}
                      ( \_,    
                        \_ ) ) \leadsto
        \NAMEHYPER{../../../Values/Composite}{Maps}{map}
          ( \NAMEHYPER{../.}{Giving}{interleave-map}
              ( \NAMEREF{structural-assigned}
                  ( \NAMEHYPER{../.}{Giving}{given} ),    
                \NAMEHYPER{../../../Values/Composite}{Maps}{map-elements}
                  ( \VAR{M} ) ) )
\\
  \KEY{Rule} ~ 
    & \RULE{
      &  \VAR{U} : \mathop{\sim} ( \NAMEHYPER{../../../Values/Composite}{Datatypes}{datatype-values} \mid \NAMEHYPER{../../../Values/Composite}{Maps}{maps}
                                                             ( \_,   
                                                               \_ ) )
      }{
      & \NAMEREF{structural-assigned}
          ( \VAR{U} : \NAMEHYPER{../../../Values}{Value-Types}{values} ) \leadsto
          \VAR{U}
      }
\end{aligned}$$



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


____

From the [PLanCompS Project] | [CBS-beta issues...] | [Suggest an improvement...]

[Storing.cbs]: /CBS-beta/Funcons-beta/Computations/Normal/Storing/Storing.cbs
  "CBS SOURCE FILE"
[PLanCompS Project]: https://plancomps.github.io
  "PROGRAMMING LANGUAGE COMPONENTS AND SPECIFICATIONS PROJECT HOME PAGE"
[CBS-beta issues...]: https://github.com/plancomps/CBS-beta/issues
  "CBS-BETA ISSUE REPORTS ON GITHUB"
[Suggest an improvement...]: mailto:plancomps@gmail.com?Subject=CBS-beta%20-%20comment&Body=Re%3A%20CBS-beta%20specification%20at%20Computations/Normal/Storing/Storing.cbs%0A%0AComment/Query/Issue/Suggestion%3A%0A%0A%0ASignature%3A%0A 
  "GENERATE AN EMAIL TEMPLATE"
