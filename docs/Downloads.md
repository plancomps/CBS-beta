---
title: Downloads
nav_order: 5
---

Downloads
=========

Clone or download a zip of the current [CBS-beta project site on Github].

Browsing CBS-beta offline
-------------------------

1.  Requirements:

    [Ruby]\: 2.6.5 (Ruby 2.7.0 works, but emits tedious warnings about deprecated code)
    
    [Jekyll]\: 3.8.7 or 4.x ([jekyll-remote-theme] supports use of Jekyll 4 on GitHub Pages)

2.  Run the following command in a terminal from the root directory of the project:

    ```bash
    bundle install
    bundle exec jekyll serve --no-watch --port 4000 --host localhost
    ```
    
    - The `no-watch` option suppresses spurious error reports from `listen` about 
      `directory is already being watched`, but also disables automatic building
      when page sources change.
      
    - The `port` and `host` options default to the values shown above.
    
    [Log](Log)

3.  Open a web browser at `http://localhost:4000/CBS-beta/` (the final `/` is required)

Stop the local server with Control-C when no longer needed.

Color schemes
-------------

{:.note}
> When browsing these web pages on GitHub, the color scheme matches the system/browser preference.

To make local browsing independent of the system/browser preference,
replace `auto_dark_scheme: dark` by `color_scheme: light` or `color_scheme: dark` in `_config.yml`
and restart `jekyll serve`.

The colors used for CBS highlighting in the `light` and `dark` schemes can be adjusted by editing the SCSS files in `_sass/custom`.


[CBS-beta project site on Github]: https://github.com/plancomps/CBS-beta

[`Languages-beta/IMP/IMP-cbs/IMP/IMP-Start/index.html`]: /CBS-beta/Languages-beta/IMP/IMP-cbs/IMP/IMP-Start/index.html

[`Funcons-beta/Funcons-Index/index.html`]: /CBS-beta/Funcons-beta/Funcons-Index/index.html

[Ruby]: https://www.ruby-lang.org/

[Jekyll]: https://help.github.com/en/articles/setting-up-your-github-pages-site-locally-with-jekyll

[jekyll-remote-theme]: https://github.com/benbalter/jekyll-remote-theme

[Python3]: https://docs.python.org/3/library/http.server.html

[Python2]: https://docs.python.org/2/library/simplehttpserver.html#module-SimpleHTTPServer
