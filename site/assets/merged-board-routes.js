(() => {
  const sections = {
    'special-creation.html': 'special-creation',
    'hit-spread-timing.html': 'hit-spread-timing',
  };
  const section = sections[location.pathname.split('/').pop()];
  if (section) location.replace('fall-rules.html' + (location.hash || '#' + section));
})();
