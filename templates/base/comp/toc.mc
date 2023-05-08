% if TOC.item_count > 1 or (TOC.item_count and page and page._added_auto_title):
<div class="stack mt-0 mb-0">
  <details class="toc-trigger"><summary>${ _("Table of Contents") }</summary></details>
  <article class="toc">
    <ul>
    % if page._added_auto_title:
      ${ extended_toc(page._added_auto_title, TOC) }
    % else:
      % for item in TOC:
        ${ toc_item(item) }
      % endfor
    % endif
    </ul>
  </article>
</div>
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

<%def name="extended_toc(title, toc)">
  <li data-level="1">
    <a href="#auto-${ title | slugify }" class="plain h">${ title }</a>
    <ul>
      % for item in toc:
        ${ toc_item(item) }
      % endfor
    </ul>
  </li>
</%def>
