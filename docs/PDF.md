---
title: PDF
parent: Browsing
nav_order: 9
---

# PDF

The PDFs display CBS with mathematical typography rendered using LaTeX
and the [CBS-LaTeX] macro package.

Names are highlighted, and name references are hyperlinked to declarations.

[Pretty] web pages corresponding closely to the PDFs are generated from the same [sources]
using the [CBS-KaTeX] macro package and rendered using [KaTeX].

{:.note}
> On macOS (Catalina), the [Preview app does not support hyperlinks to specific targets] in PDF pages;
> similarly when browsing PDFs in Safari.
> Acrobat (Reader) and Firefox support hyperlinks in PDFs just as in web pages.

[Pretty]: Pretty

[KaTeX]: https://katex.org

[sources]:   https://github.com/plancomps/CBS-beta/tree/math/_math
[CBS-LaTeX]: https://github.com/plancomps/CBS-beta/blob/math/_includes/cbs-latex.sty
[CBS-KaTeX]: https://github.com/plancomps/CBS-beta/blob/math/_includes/cbs-katex.html

[Preview app does not support hyperlinks to specific targets]: https://discussions.apple.com/thread/251041261
