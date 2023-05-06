% if not nav_item.children:
<li>
    <a href="${ nav_item.url | XXX:url }" class="dropdown-item% if nav_item.active: active% endif">${ nav_item.title }</a>
</li>
% else:
  <li class="dropdown-submenu">
    <a href="#" class="dropdown-item">${ nav_item.title }</a>
    <ul class="dropdown-menu">
        % for nav_item in nav_item.children:
            <%include file="nav-sub.html" />
        % endfor
    </ul>
  </li>
% endif

