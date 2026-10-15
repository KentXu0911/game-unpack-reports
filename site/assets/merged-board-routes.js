(() => {
  const targets = {"special-creation.html": "fall-rules.html#special-creation", "hit-spread-timing.html": "fall-rules.html#hit-spread-timing", "propeller-targeting.html": "obstacle-rules.html#propeller-targeting", "smart-rocket.html": "obstacle-rules.html#smart-rocket"};
  const target = targets[location.pathname.split('/').pop()];
  if (target) location.replace(location.hash ? target.split('#')[0] + location.hash : target);
})();
