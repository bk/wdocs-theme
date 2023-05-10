---
title: Tips and tricks
subtitle: A few helpful pointers
tags:
  - tips
  - advanced
---

## Keyboard shortcuts

Three keyboard shortcuts form part of the theme:

- <kbd>s</kbd>: Calls up the Search modal
- <kbd>n</kbd>: Next page in the main navigation
- <kbd>p</kbd>: Previous page in the main navigation

Currently these key assignments are not configurable.

## PDF generation

For many documentation sites it is useful to have PDF versions of at least some of the pages.

You can achieve this as part of the build process for the site by setting `pandoc` to true (either globally or for each page you want to convert to PDF). Then you set the option

```yaml
pandoc_extra_formats:
    pdf: mydir/myoutputfilename.pdf
```

in the frontmatter of the page. If you want to do this for all or most pages of your site, you can place

```
pandoc_extra_formats:
    pdf: 'auto'
```

in a shared `index.yaml` file. In this case, the PDF filename will be based upon the filename of the Markdown source.

WDoc places a link to the PDF file, if any, at the bottom of the page.

## Page not found

You may wish to customize the simple 404 page provided with the theme. There are basically two ways of doing this:

1. Create a new template file `template/404.mhtml` in your project, probably starting from the corresponding file in the theme.

2. Create a new Markdown file, `content/404.md` with content similar to the following:

   ```
   ---
   title: 404
   subtitle: Page not found
   main_class: 'page-not-found'
   pretty_path: false
   no_sidebar: true
   ---

   We could not find the page you are trying to access.
   The following links may be useful - or you might
   wish to use the search field to look for the content
   you are interested in.

   - [Frontpage](/)
   - [User guide](/guide/)
   - [Sitemap](/sitemap/)

   <form action="/search/" method="get">
     <input name="q"
      placeholder="Type query here and press Enter">
   </form>
   ```

Of course you must configure your webserver to use the `404.html` page thus generated.

## Redirects

If you rename a page, the old URL for its content becomes invalid. In this case it is often a good idea to create a redirect from the old to the new page.

Add the line

```yaml
redirects: True
```

to `wmk_config.yaml` and create the file `redirects.yaml` inside `data/` in your project directory. The file looks something like this:

```yaml
- from: /old/index.html
  to: /new/
- from: /old/info/index.html
  to: /new/data/
```

