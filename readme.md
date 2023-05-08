# WDocs

Wdocs is a documentation theme for [wmk](https://github.com/bk/wmk).


```yaml
site:
    description: Documentation theme for wmk
    author: Baldur Kristinsson
    leading_path: ''
    base_url: ''
    repo_url: 'https://github.com/bk/wdocs-theme/'
    repo_name: WDocs on Github
    avec_theme: default
    tags_in_nav: true
    highlightjs: true
    # Extra languages for highlightjs (in addition to the default 36).
    # E.g. ['django', 'lisp'] - See https://highlightjs.org/download/ for a list.
    hljs_languages: []
    fontawesome: false
    auto_title_h1: true
    tagline: 'Easy and efficient documentation in Markdown'
    copyright: |
      Created with the <a href="https://github.com/bk/wdocs-theme">WDocs</a>
      documentation theme for <a href="https://wmk.baldr.net/">wmk</a>.
    extra_css: []
    extra_javascript: []
    lang: 'en_US'
    navigation_depth: 2
    favicon: 'img/favicon.ico'

lunr_index: true

markdown_extensions:
  - toc
  - abbr
  - attr_list
  - def_list
  - footnotes
  - md_in_html
  - tables
  - sane_lists
  - fenced_code
  # More advanced fenced_code alternative: pymdownx.superfences

markdown_extension_configs:
  toc:
    permalink: '#'
```
