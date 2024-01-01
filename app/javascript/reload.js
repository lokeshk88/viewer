document.addEventListener('turbolinks:load', 
  function () {
  document.querySelector('.search-ips-button').addEventListener('ajax:success', 
    function () {
    Turbolinks.visit(window.location, { action: 'replace' });
  });
});
