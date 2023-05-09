# WDocs

WDocs is a documentation theme for [wmk](https://github.com/bk/wmk).

## Settings

WDocs has several configuration options which affect the template output or other functionality of the generated website.

### Site variables

Default settings for `site`:

```yaml
site:
    name: WDocs
    description: Documentation theme for wmk
    author: Baldur Kristinsson
    leading_path: ''
    base_url: ''
    repo_url: 'https://github.com/bk/wdocs-theme/'
    repo_name: WDocs on Github
    avec_theme: default
    tags_in_nav: truetrue
    highlightjs: false
    hljs_style: github
    hljs_languages: []
    fontawesome: false
    auto_title_h1: true
    copyright: |
        Created with the <a href="https://github.com/bk/wdocs-theme">WDocs</a>
        documentation theme for <a href="https://wmk.baldr.net/">wmk</a>.
    tagline: 'Simple and easy documentation'
    extra_css: []
    extra_javascript: []
    navigation_depth: 2
    favicon: 'img/favicon.ico'
    lang: 'en'
```

- `name`, `description`, `author`: Mostly self-explanatory. By default, the `name` appears at the top right corner of the site and links to the frontpage. It should therefore prefarably be short.

- `leading_path`, `base_url`: Leading path is the path from the root of the subdomain on which the site is hosted to the directory containing the files generated by `wmk`. The `base_url`, if specified, should contain both a protocol and hostname and also include the leading_path, if any, e.g. `https://example.com/mydocs/`. These variables are used by the `url` template filter, which adds the appropriate prefixes to those path fragments that do not start with `/`.

- `repo_url`, `repo_name`: If specified, a link to the given repository will be added to the footer of the page.

- `avec_theme`: The name of the [aveccss](https://github.com/bk/aveccss) color scheme. The themes available are: default, one, gruvbox, pico, plain, or selenized. All color schemes support both light and dark mode and adjust automatically to the user's light/dark preference.

- `tags_in_nav`: If true, a link to the Tags page will be placed in the site navigation. 

- `highlightjs`, `hljs_style`, `hljs_languages`: Settings for the [highlight.js](https://highlight.js/) Javascript module. If you use server-side syntax highlighting via pygments or pandoc, you will have to add CSS files yourself; the `highlightjs` configuration option is supplied as an easy alternative to this. It is, however, turned off by default.

- `fontawesome`: Whether to enable loading FontAwesome icon fonts. False by default. If enabled, FontAwesome symbols are used in the site navigation, which changes the appearance slightly.

- `auto_title_h1`: If true, then pages which do not start with a `<h1>` heading but have a `title` in the frontmatter are prefixed with the title as a `<h1>` heading. It will be followed by a `subtitle`, if any.

- `copyright`, `tagline`: These appear in the site footer.

- `extra_css`, `extra_javascript`, `favicon`: These are self-explanatory.

- `navigation_depth`: Which heading level to stop at in the table of contents that will be placed in the sidebar on each page.

- `lang`: Localization setting. Currently the supported languages are `en`, `da` and `is`. You can supply your own translation as a `wmk.mo` file that must be placed in `data/locales/<lang>/LC_MESSAGES/` in your project directory.

### Nav setting

```yaml
nav:
    - Home: /
    - Usage:
        - Getting started: usage/getting-started
        - Advanced settings: usage/advanced
    - About:
        - Impressum: about/impressum
        - License: about/license
        - Help: about/help
    - Resources:
        - Code repository: https://github.com/example/repo/
        - Forum: https://example.discourse.group/
```

The `nav` setting has the structure shown in the example. It is presented by the WDocs theme as a navigation tree for the site, i.e. as a hierarchical navigation menu in the header bar (in desktop browers) and in a "hamburger" menu (in mobile and tablet browsers). It also forms the basis of the Next and Previous links that are available on those pages that are in the `nav` structure.

### Other settings

WDocs also supplies theme settings for `lunr_index`, `markdown_extensions`, and `markdown_extension_configs`. Most notably it turns site search on by default. These standard settings described in the [wmk documentation](https://wmk.baldr.net/).

## Further information

Further documentation about the WDocs theme as well as an example site is available [here](https://wdocs.baldr.net/).

## Author and license

Author: [Baldur Kristinsson](https://github.com/bk).

This theme is made available under the [MIT license](https://opensource.org/license/mit/).

**Acknowledgements:** The general structure and design of WDocs (but not the code) is based on the default [MkDocs](https://mkdocs.org/) theme.
