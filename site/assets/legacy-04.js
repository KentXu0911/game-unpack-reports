(() => {
  const targets = {"gate-matrix": "gate-matrix", "": "gate-matrix"};
  let id = '';
  try { id = decodeURIComponent(location.hash.slice(1)); } catch { id = ''; }
  const target = Object.prototype.hasOwnProperty.call(targets, id) ? targets[id] : targets[''];
  location.replace('../index.html#' + target);
})();
