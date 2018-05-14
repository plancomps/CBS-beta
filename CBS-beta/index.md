CBS-beta ![PREVIEW](Funcons-beta/preview.png)
========

**(The CBS-beta website is currently being constructed. This preview of it**
**will be updated when complete and ready for review.)**

CBS supports _component-based specification of programming languages_ by
translation to so-called _'funcons'_ ([fundamental programming constructs]).

Defining a translation of programming language constructs to funcons in CBS can
be significantly easier than defining the behaviour of the language constructs
directly. This is illustrated by the CBS specifications of several small and
medium-scale programming languages; see [Languages-beta].

Moreover, the definition of the translation to funcons is highly modular, which
should facilitate co-evolution of a language and its formal specification. 
And CBS definitions are executable, to support rapid prototyping during
language development.

Funcons are highly reusable components of language specifications. In CBS, the 
name, signature, and behaviour of each funcon are defined independently, using
a modular variant of structural operational semantics.

The funcons provided by the [CBS library] have fixed definitions, so version
control is not needed for their safe reuse in CBS language specifications.
Crucially, adding new funcons to the library does not require any changes to the
definitions of its current funcons. 

PLanCompS: Programming Language Components and Specifications
----------

CBS has been developed by the [PLanCompS] project. From 2011 to 2016, the research
was funded by EPSRC in the UK. The PLanCompS project is now an open international
collaboration, and welcomes new [contributors]. 

If you would like to contribute to PLanCompS (e.g., by using CBS to define a new
or existing language, or by suggesting new or improved funcons) please email 
plancomps at gmail.com.

[Fundamental programming constructs]: Funcons-beta/index.html

[Languages-beta]: Languages-beta/index.html

[CBS library]: Funcons-beta/Funcons-Index/index.html

[PLanCompS]: http://plancomps.org

[Contributors]: Contributors.html
