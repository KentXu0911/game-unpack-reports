(() => {
  const targets = {"original-user-tiers": "user-tiers.html", "original-segments": "user-tiers.html", "original-adaptive-product": "user-tiers.html", "original-adaptive": "user-tiers.html", "original-experiments": "experiments.html", "original-boundaries": "payment.html", "original-gaps": "commerce-backend.html", "original-product-decision": "shop-rules.html", "original-shelf-product": "user-tiers.html", "original-activities": "passes.html", "original-failure-product": "failure-product.html", "original-rescue": "failure-product.html", "original-shelves": "user-tiers.html", "original-decision": "shop-rules.html", "original-stage-panel": "shop-rules.html", "original-moments": "shop-rules.html", "original-unlock-timeline": "shop-rules.html", "original-dynamic": "shop-rules.html", "original-golden": "shop-rules.html", "original-product-activities": "passes.html", "original-payment": "payment.html"};
  function navigate() {
    let hash; try { hash = decodeURIComponent(location.hash.slice(1)); } catch { return; }
    if (!targets[hash] || document.getElementById(hash)) return;
    if (location.pathname.split('/').pop() === targets[hash]) return;
    const url = new URL(targets[hash], location.href);
    url.search = location.search; url.hash = location.hash; location.replace(url.href);
  }
  window.addEventListener('hashchange', navigate);
  navigate();
})();
