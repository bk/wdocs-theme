<div class="modal" id="wmkdocs_search_modal" tabindex="-1" role="dialog" aria-labelledby="searchModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="searchModalLabel">${ _("Search") }</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal"><span aria-hidden="true"></span><span class="sr-only">${ _("Close") }</span></button>
            </div>
            <div class="modal-body">
                <p>${ _("From here you can search these documents. Enter your search terms below.") }</p>
                <form action="${ 'search/' | url }" method="get">
                    <div class="form-group">
                        <input type="search" name="q" class="form-control" placeholder="${ _("Search...") }" id="mkdocs-search-query" title="${ _("Type search term here") }">
                    </div>
                </form>
            </div>
            <div class="modal-footer">
            </div>
        </div>
    </div>
</div>
