<div class="modal">
  <input id="wdocs_search_modal" type="checkbox" />
  <label for="wdocs_search_modal" class="overlay"></label>
  <article class="search-modal">
    <header>
      <label for="wdocs_search_modal" class="close">&times;</label>
      <h4>${ _("Search") }</h4>
    </header>
    <p>${ _("Enter your search terms below.") }</p>
    <form action="${ 'search' | url }" method="get" class="ta-center">
      <input type="search" name="q" class="form-control" placeholder="${ _("Search...") }" id="wsm-query" title="${ _("Type search term here") }">
      <button>${ _("Submit search") }</button>
    </form>
  </article>
</div>
