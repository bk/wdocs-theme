<%! import re %>
<%namespace name="icons" file="/lib/icons.mc" />

<%def name="other_nav()">
<%doc>
  Right/bottom navigation section:

  - search modal link
  - tags page link
  - next/previous links
  - light/dark theme switcher
</%doc>
  % if site.lunr_search:
    <li><label for="wdocs_search_modal" rel="search" role="link" class="plain mb-0">${ icons.search() } ${ _("Search") }</label></li>
  % endif
  % if site.tags_in_nav:
    <li><a href="${ 'tags/' | url }">${ icons.tag() } ${ _("Tags") }</a></li>
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
        ${ icons.arrow_left() } <span class="inl seen-001">${ _("Previous") }</span>
      </a></li>
    % else:
      <li><span rel="prev" class="disabled">
        ${ icons.arrow_left() } <span class="inl seen-001">${ _("Previous") }</span>
      </span></li>
    % endif
    % if next_url:
      <li><a rel="next" href="${ next_url | url }"">
        ${ icons.arrow_right() } <span class="inl seen-001">${ _("Next") }</span>
      </a></li>
    % else:
      <li><span rel="prev" class="disabled">
        ${ icons.arrow_right() } <span class="inl seen-001">${ _("Next") }</span>
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
    </div>
  % endif
</%def>

<%def name="pdf_link()">
  <%doc>
    Link to PDF version if it is defined.
  </%doc>
  <%
    pef = page.pandoc_extra_formats or {}
    pdf_url = pef.get('pdf', '')
    if pdf_url == 'auto':
        pdf_url = re.sub(r'\.\w+$', '.pdf', SELF_SHORT_PATH)
  %>
  % if pdf_url:
    <p><a href="${ pdf_url | url }" role="button" class="smaller mt-2">${ _("PDF version of this page") }</a></p>
  % endif
</%def>

<%def name="maybe_auto_title()">
<%doc>
  If there is no <h1> at the start of CONTENT, place the page title above it,
  but only if site.auto_title_h1 is true and page.no_auto_title_h1 is not.
</%doc>
<%
if not site.auto_title_h1 or (page and page.no_auto_title_h1):
    return ''
%>
  % if page and page.title and CONTENT and not CONTENT.startswith('<h1'):
      <% page._added_auto_title = page.title %>
      <h1 id="auto-${ page.title | slugify }">${ page.title }</h1>
      % if page.subtitle:
        <p class="subtitle">${ page.subtitle }</p>
      % else:
        ## To prevent the first paragraph from becoming a subtitle
        <div></div>
      % endif
  % endif
</%def>

<%def name="repo_info(repo_url, repo_name)">
<%doc>
  Information about the code repository, if configured. Appears in the footer.
</%doc>
<%
  if not repo_name:
      repo_name = "Code"
  icon = getattr(icons, 'git_commit_svg')
  if 'github' in repo_url:
      icon = getattr(icons, 'github_svg')
  elif 'gitlab' in repo_url:
      icon = getattr(icons, 'gitlab_svg')
%>
<a href="${ repo_url | url }"><div>${ icon() |n }</div><div>${ _(repo_name) }</div></a>
</%def>

