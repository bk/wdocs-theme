% if TOC.item_count > 1:
<div class="navbar-light navbar-expand-md bs-sidebar hidden-print affix" role="complementary">
    <div class="navbar-header">
        <button type="button" class="navbar-toggler collapsed" data-bs-toggle="collapse" data-bs-target="#toc-collapse" title="${ _("Table of Contents") }">
            <span class="fa fa-angle-down"></span>
        </button>
    </div>

    <div id="toc-collapse" class="navbar-collapse collapse card bg-secondary bg-opacity-10">
        <ul class="nav flex-column">
            % for item in TOC:
                ${ toc_item(item) }
            % endfor
        </ul>
    </div>
</div>
% endif

<%def name="toc_item(item)">
    <% maxdepth = site.navigation_depth or 2 %>
    % if item.level <= maxdepth:
        <li class="nav-item" data-level="${ item.level }"><a href="${ item.url }" class="nav-link">${ item.title }</a>
            <ul class="nav flex-column">
                % for child in item.children:
                    ${ toc_item(child) }
                % endfor
            </ul>
        </li>
    % endif
</%def>
