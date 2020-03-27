---
layout: default
title: Downloads
nav_order: "9"
---

Downloads
=========

Clone or download a zip of the current [CBS-beta project site on Github].

Browsing CBS-beta offline
-------------------------

1.  Requirements:

    [Ruby]\: 2.6.5 (Ruby 2.7.0 works, but emits tedious warnings about deprecated code)
    
    [Jekyll]\: 3.8.5 (Jekyll 4 does _not_ work with the theme currently used by CBS-beta)

2.  Run the following command in a terminal from the unzipped folder:

    ```
    bundle install
    bundle exec jekyll serve --baseurl '/CBS-beta' --port 4000 --host localhost
    ```
    (`port` and `host` need only be specified if different values are required)
    
    [Jekyll log] -- ignore the warning `Invalid theme folder: _sass`

3.  Open a web browser at `http://localhost:4000/CBS-beta/` (the final `/` is required)

Stop the local server with Control-C when no longer needed.


[CBS-beta project site on Github]: https://github.com/plancomps/CBS-beta

[`Languages-beta/IMP/IMP-cbs/IMP/IMP-Start/index.html`]: /CBS-beta/Languages-beta/IMP/IMP-cbs/IMP/IMP-Start/index.html

[`Funcons-beta/Funcons-Index/index.html`]: /CBS-beta/Funcons-beta/Funcons-Index/index.html

[Ruby]: https://www.ruby-lang.org/

[Jekyll]: https://help.github.com/en/articles/setting-up-your-github-pages-site-locally-with-jekyll

[Jekyll log]: /CBS-beta/assets/images/Jekyll-localhost.png

[Python3]: https://docs.python.org/3/library/http.server.html

[Python2]: https://docs.python.org/2/library/simplehttpserver.html#module-SimpleHTTPServer
