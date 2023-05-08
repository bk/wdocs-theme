// We want at most one open dropdown menu at a time
document.addEventListener('click', function(e) {
  let open_dd = document.querySelector('details[role="dropdown"][open]');
  if (open_dd && !open_dd.contains(e.target)) {
    open_dd.removeAttribute('open');
  }
});

// Listen for shortcut keys.
// Currently fixed as n=next, p=prev, s=search.
document.addEventListener("keydown", function(e){
  let tag = e.target.tagName.toUpperCase();
  if (tag == 'INPUT' || tag == 'TEXTAREA') return true;
  let key = e.which || e.keyCode || window.event && window.event.keyCode;
  let sel = null;
  // n==78, p==80, s=83
  if (key == 78) { // n==next
    sel = document.querySelector('nav a[rel="next"]')
  }
  else if (key == 80) { // p==prev
    sel = document.querySelector('nav a[rel="prev"]')
  }
  if (sel) {
    let page = sel.getAttribute('href');
    if (page) window.location.href = page;
  }
  if (!sel && key == 83) { // s==search
    sel = document.querySelector('nav [rel="search"]')
    let chk = document.getElementById(sel.getAttribute('for'));
    if (chk) {
      chk.checked = true;
    }
  }
});

// Light/dark theme switcher widget
(function(){
  const saved_theme = localStorage.theme;
  if (saved_theme && saved_theme.match(/^(?:light|dark)-theme$/)) {
    let doc_cl = document.querySelector('html').classList;
    doc_cl.remove('light-theme');
    doc_cl.remove('dark-theme');
    doc_cl.add(saved_theme);
  } else if (saved_theme) {
    localStorage.theme = '';
  }
  document.querySelectorAll('a.switcher').forEach(
    function(s) {
      s.addEventListener("click", function(ev) {
        let cl = document.querySelector('html').classList;
        if (! cl.contains('dark-theme')) {
          cl.remove('light-theme');
          cl.add('dark-theme');
          localStorage.theme = 'dark-theme';
        } else {
          cl.remove('dark-theme');
          cl.add('light-theme');
          localStorage.theme = 'light-theme';
        }
        ev.preventDefault();
        return false;
      });
    });
})();
