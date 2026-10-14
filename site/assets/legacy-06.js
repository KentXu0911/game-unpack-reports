(() => {
  const targets = {"summary": "shop-rules", "product-decision": "shop-rules", "moments": "shop-rules", "unlock-timeline": "shop-rules", "user-tiers": "user-tiers", "product-activities": "shop-rules", "adaptive-product": "user-tiers", "failure-product": "failure-product", "experiments": "experiments", "shelf-product": "shop-rules", "source-reconciliation": "research-method", "boundaries": "commerce-backend", "technical": "shop-rules", "decision": "shop-rules", "stage-panel": "shop-rules", "segments": "user-tiers", "dynamic": "shop-rules", "adaptive": "user-tiers", "shelves": "shop-rules", "golden": "shop-rules", "rescue": "failure-product", "payment": "payment", "activities": "shop-rules", "gaps": "commerce-backend", "evidence": "research-method", "": "shop-rules"};
  let id = '';
  try { id = decodeURIComponent(location.hash.slice(1)); } catch { id = ''; }
  const target = Object.prototype.hasOwnProperty.call(targets, id) ? targets[id] : targets[''];
  location.replace('../index.html#' + target);
})();
