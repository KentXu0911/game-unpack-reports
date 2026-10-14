(() => {
  const targets = {"s0": "activity-defaults", "s1": "activity-defaults", "s2": "activity-defaults", "s3": "passes", "ar": "activity-defaults", "s4": "shop-rules", "ar2": "activity-defaults", "s5": "research-method", "s6": "activity-defaults", "": "activity-defaults"};
  let id = '';
  try { id = decodeURIComponent(location.hash.slice(1)); } catch { id = ''; }
  const target = Object.prototype.hasOwnProperty.call(targets, id) ? targets[id] : targets[''];
  location.replace('../index.html#' + target);
})();
