<%def name="other_nav()">
<%doc>
  Right/bottom navigation section:

  - search modal link
  - tags page link
  - next/previous links
  - light/dark theme switcher
</%doc>
  % if site.lunr_search:
    <li><label for="wdocs_search_modal" rel="search" role="link" class="plain mb-0"><i class="fa fa-search"></i> ${ _("Search") }</label></li>
  % endif
  % if site.tags_in_nav:
    <li><a href="${ 'tags/' | url }"><i class="fa fa-tag"></i> ${ _("Tags") }</a></li>
  % endif
  <%
    next_url = page.next_page if page and page.next_page else None
    prev_url = page.previous_page if page and page.previous_page else None
    if not next_url and not prev_url:
        links = nav._links_in_order()
        foundme = [_ for _ in links if _.is_url(SELF_URL, url)]
        if foundme:
            next_url = foundme[0].next.url if foundme[0].next else None
            prev_url = foundme[0].previous.url if foundme[0].previous else None
  %>
  % if next_url or prev_url:
    % if prev_url:
      <li><a rel="prev" href="${ prev_url | url }">
        <i class="fa fa-arrow-left"></i> <span class="inl seen-001">${ _("Previous") }</span>
      </a></li>
    % else:
      <li><span rel="prev" class="disabled">
        <i class="fa fa-arrow-left"></i> <span class="inl seen-001">${ _("Previous") }</span>
      </span></li>
    % endif
    % if next_url:
      <li><a rel="next" href="${ next_url | url }"">
        <i class="fa fa-arrow-right"></i> <span class="inl seen-001">${ _("Next") }</span>
      </a></li>
    % else:
      <li><span rel="prev" class="disabled">
        <i class="fa fa-arrow-right"></i> <span class="inl seen-001">${ _("Next") }</span>
      </span></li>
    % endif
  % endif
  <li>
    <a class="switcher" href="#"><i>${ _("Dark/Light") }</i></a>
  </li>
</%def>

<%def name="nav_sub(nav_item, current_url='')">
<%doc>
  Navigation items, possibly nested.
</%doc>
  % if not nav_item.children:
    <li>
      <a href="${ nav_item.url | url }" class="${ 'active' if nav_item.contains_url(current_url, url, best=True)  else '' }">${ nav_item.title }</a>
    </li>
  % else:
    <li>
      ${ nav_item.title }:
      <ul>
        % for it in nav_item:
          ${ nav_sub(it) }
        % endfor
      </ul>
    </li>
  % endif
</%def>

<%def name="tags()">
  <%doc>
    Simple list of tags for this page.
  </%doc>
  % if page and page.tags:
    <div class="tagged-with bg-accent p-1 mt-5">
      <p class="m-0"><strong>${ _("Tags") }:</strong>&nbsp;
        % for i, tag in enumerate(page.tags):
          <% taglink = 'tags/' + slugify(tag) %>
          <a href="${ taglink | url }">${ tag }</a>
          % if not i == len(page.tags) - 1:
            &middot;
          % endif
        % endfor
      </p>
  % endif
</%def>
