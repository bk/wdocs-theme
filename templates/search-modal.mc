<div class="modal">
  <input id="wdocs_search_modal" type="checkbox" />
  <label for="wdocs_search_modal" class="overlay"></label>
  <article>
    <header>
      <label for="wdocs_search_modal" class="close">&times;</label>
      <h4>${ _("Search") }</h4>
    </header>
    <p>${ _("From here you can search these documents. Enter your search terms below.") }</p>
    <form action="${ 'search/' | url }" method="get">
        <div class="form-group">
            <input type="search" name="q" class="form-control" placeholder="${ _("Search...") }" id="mkdocs-search-query" title="${ _("Type search term here") }">
        </div>
    </form>
    <footer></footer>
  </article>
</div>
