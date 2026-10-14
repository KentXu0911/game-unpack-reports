(() => {
  const targets = {"level-config": "level-config", "fall-rules": "fall-rules", "obstacle-rules": "obstacle-rules", "area-tasks": "area-tasks", "distributed-assets": "distributed-assets", "team-flow": "team-flow", "production-tools": "production-tools", "server-boundary": "social-backend", "source-projects": "source-projects", "evidence": "research-method", "": "level-config"};
  let id = '';
  try { id = decodeURIComponent(location.hash.slice(1)); } catch { id = ''; }
  const target = Object.prototype.hasOwnProperty.call(targets, id) ? targets[id] : targets[''];
  location.replace('../index.html#' + target);
})();
