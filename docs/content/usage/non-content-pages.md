---
title: Non-content pages
subtitle: Pages that are provided directly by WDocs
---

Most of the pages on your site will be content pages containing your
documentation or other relevant information. As a rule they will
be written in Markdown (although that is really up to you, as [wmk] supports
several alternative input formats if that is what you prefer).

Aside from these content pages, WDocs provides a few pages of its own.

- [Search] is a page displaying a search form and search results,
  although it may show an error message if `site.lunr_index` is turned off.

- [Tags] is a page showing a list of tags that have been used on your
  pages. Tags are added as the `tags` variable in the frontmatter of each
  page. (Default tags for a whole section can be provided by using `index.yaml` files.)
  Each tag listed on the tags page will point to a separate page listing the
  content pages with that tag.

- [Sitemap] shows a hierarchical overview of all pages on the site, aside from
  the sidemap page itself and the pages for individual tags (if they are present).

Note that it is possible for content pages to override these automatic pages if their
paths conflict.  If you for instance create a markdown file called `tags.md` in the root
of your content directory, that will ordinarily override the built-in Tags page.

[wmk]: https://wmk.baldr.net/
[Search]: /search/
[Tags]: /tags/
[Sitemap]: /sitemap/
