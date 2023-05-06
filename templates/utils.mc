<%def name="nav_sub(nav_item, current_url='')">
  % if not nav_item.children:
    <li>
      <a href="${ nav_item.url | url }" class="dropdown-item${ ' active' if nav_item.contains_url(current_url, url, best=True)  else '' }">${ nav_item.title }</a>
    </li>
  % else:
    <li class="dropdown-submenu">
      <a href="#" class="dropdown-item">${ nav_item.title }</a>
      <ul class="dropdown-menu">
        % for it in nav_item:
          ${ nav_sub(it) }
        % endfor
      </ul>
    </li>
  % endif
</%def>
