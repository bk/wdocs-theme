% if TOC.item_count > 1:
  <article class="toc">
    ## <header><h4>${ _("Table of Contents") }</h4></header>
    <ul>
    % for item in TOC:
      ${ toc_item(item) }
    % endfor
    </ul>
  </article>
% endif

<%def name="toc_item(item)">
    <% maxdepth = site.navigation_depth or 2 %>
    % if item.level <= maxdepth:
      <li data-level="${ item.level }">
        <a href="${ item.url }" class="plain h">${ item.title }</a>
        % if item.children and item.level != maxdepth:
          <ul>
            % for child in item.children:
              ${ toc_item(child) }
            % endfor
          </ul>
        % endif
      </li>
    % endif
</%def>
