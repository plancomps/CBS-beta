To browse these CBS specifications, click the link for the preferred format in the following list: 

[Sources]

: CBS text files on GitHub
  
  With line numbers (useful when reporting issues or suggesting improvements) but no highlighting or hyperlinks
  
  Navigation to related source files requires familiarity with the folder hierarchy

[Plain]

: Web pages with verbatim copies of source files
  
  Names are highlighted, and references are hyperlinked to declarations
  
  Links to related pages support navigation between specifications

[Pretty]

: Web pages displaying CBS with mathematical typography using [KaTeX]
  
  Names are highlighted, and name references are hyperlinked to declarations
  
  Links to related pages support navigation between specifications

[PDF]

: Documents displaying CBS with mathematical typography using [LaTeX]
  
  Names are highlighted, and references are hyperlinked to declarations
  
  When browsing PDFs in a web browser, links to related pages are only in the navigation panel
    
  {:.note}
  > On macOS (Catalina), the [Preview app does not support hyperlinks to specific targets] in PDF pages;
  > similarly when browsing PDFs in Safari.
  > Acrobat (Reader) and Firefox support hyperlinks in PDFs just as in web pages.

[Preview app does not support hyperlinks to specific targets]: https://discussions.apple.com/thread/251041261

The plain and pretty web pages generated from CBS source files include links to the PDF documents,
to each other, and to the source files on GitHub.

The Markdown and LaTeX files from which the web pages and PDFs were generated are available on GitHub
([Plain sources], [Pretty and PDF sources])
together with the required [CBS-LaTeX] and [CBS-KaTeX] macro definitions and [CSS].
The [Downloads] page explains how to obtain a copy and serve the files locally.

[Downloads]: ../docs/Downloads
[PDF]: ../docs/PDF

[Plain sources]: https://github.com/plancomps/CBS-beta/tree/math/_docs
[Pretty and PDF sources]: https://github.com/plancomps/CBS-beta/tree/math/_math
[CBS-LaTeX]: https://github.com/plancomps/CBS-beta/blob/math/_includes/cbs-latex.sty
[CBS-KaTeX]: https://github.com/plancomps/CBS-beta/blob/math/_includes/cbs-katex.html
[CSS]: https://github.com/plancomps/CBS-beta/blob/math/_sass/custom/custom.scss
[CBS-beta]: https://plancomps.github.io/CBS-beta

[KaTeX]: https://katex.org
[LaTeX]: https://www.latex-project.org
