(() => {
  function revealTarget() {
    if (!location.hash) return;
    let id;
    try { id = decodeURIComponent(location.hash.slice(1)); } catch (error) { id = location.hash.slice(1); }
    const target = document.getElementById(id);
    if (!target) return;
    for (let node = target.parentElement; node; node = node.parentElement) {
      if (node.tagName === 'DETAILS') node.open = true;
    }
    requestAnimationFrame(() => target.scrollIntoView({ block: 'start', behavior: 'instant' }));
  }
  window.addEventListener('hashchange', revealTarget);
  window.addEventListener('load', revealTarget);
  if (document.readyState === 'loading') document.addEventListener('DOMContentLoaded', revealTarget);
  else revealTarget();
})();
