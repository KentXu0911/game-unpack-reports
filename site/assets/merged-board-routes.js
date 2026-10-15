(() => {
  const targets = {"special-creation.html": "fall-rules.html#special-creation", "hit-spread-timing.html": "fall-rules.html#hit-spread-timing", "propeller-targeting.html": "obstacle-rules.html#propeller-targeting", "smart-rocket.html": "obstacle-rules.html#smart-rocket", "account-offers.html": "shop-rules.html#account-offers", "live-price-ads.html": "payment.html#live-price-ads"};
  const accountHashes = {"original-dynamic": "shop-rules.html#original-dynamic", "original-adaptive-product": "user-tiers.html#original-adaptive-product", "original-adaptive": "user-tiers.html#original-adaptive"};
  const page = location.pathname.split('/').pop();
  let hash; try { hash = decodeURIComponent(location.hash.slice(1)); } catch { hash = ''; }
  const mapped = page === 'account-offers.html' && accountHashes[hash];
  const target = mapped || targets[page];
  if (target) {
    const url = new URL(target, location.href);
    url.search = location.search;
    if (location.hash && !mapped) url.hash = location.hash;
    location.replace(url.href);
  }
})();
