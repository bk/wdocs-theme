<%doc>
  Icons for the nav bar.
  Respects the site.fontawesome setting.
</%doc>

<%def name="arrow_right()">${
  arrow_right_fa() if site.fontawesome else arrow_right_svg() |n
}</%def>
<%def name="arrow_left()">${
  arrow_left_fa() if site.fontawesome else arrow_left_svg() |n
}</%def>
<%def name="search()">${
  search_fa() if site.fontawesome else search_svg() |n
}</%def>
<%def name="tag()">${
  tag_fa() if site.fontawesome else tag_svg() |n
}</%def>

<%def name="arrow_right_fa()"><i class="fa fa-arrow-right"></i></%def>
<%def name="arrow_left_fa()"><i class="fa fa-arrow-left"></i></%def>
<%def name="search_fa()"><i class="fa fa-search"></i></%def>
<%def name="tag_fa()"><i class="fa fa-tag"></i></%def>

<%def name="arrow_right_svg()"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-arrow-right"><line x1="5" y1="12" x2="19" y2="12"></line><polyline points="12 5 19 12 12 19"></polyline></svg></%def>

<%def name="arrow_left_svg()"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-arrow-left"><line x1="19" y1="12" x2="5" y2="12"></line><polyline points="12 19 5 12 12 5"></polyline></svg></%def>

<%def name="search_svg()"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-search"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg></%def>

<%def name="tag_svg()"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-tag"><path d="M20.59 13.41l-7.17 7.17a2 2 0 0 1-2.83 0L2 12V2h10l8.59 8.59a2 2 0 0 1 0 2.82z"></path><line x1="7" y1="7" x2="7.01" y2="7"></line></svg></%def>
