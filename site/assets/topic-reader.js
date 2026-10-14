(() => {
  const rows = [...document.querySelectorAll('.detail-row')];
  const links = [...document.querySelectorAll('.topic-link')];

  function setExpanded(id, expanded) {
    const panel = document.getElementById(id);
    const row = panel?.closest('.detail-row');
    if (!row) return null;
    row.hidden = !expanded;
    const link = links.find(item => item.getAttribute('href') === `#${id}`);
    if (link) {
      link.setAttribute('aria-expanded', String(expanded));
      const label = link.querySelector('.action');
      if (label) label.textContent = expanded ? '收起解读 −' : '展开解读 +';
    }
    return panel;
  }

  function revealHash() {
    let id;
    try { id = decodeURIComponent(location.hash.slice(1)); }
    catch { return; }
    const target = document.getElementById(id);
    if (!target) return;
    const panel = target.closest('.topic-detail');
    if (panel) setExpanded(panel.id, true);
    if (target.tagName === 'DETAILS') target.open = true;
    const scroll = target.closest('.overview-scroll');
    if (scroll) scroll.scrollLeft = 0;
    for (let parent = target.parentElement; parent; parent = parent.parentElement) {
      if (parent.tagName === 'DETAILS') parent.open = true;
    }
    requestAnimationFrame(() => {
      target.scrollIntoView({ block: 'start', behavior: 'instant' });
      if (panel === target) panel.focus({ preventScroll: true });
    });
  }

  // Static HTML remains readable without JavaScript. Collapse only after setup.
  rows.forEach(row => {
    row.hidden = true;
    const panel = row.querySelector('.topic-detail');
    if (panel) setExpanded(panel.id, false);
  });

  links.forEach(link => link.addEventListener('click', event => {
    if (event.button !== 0 || event.metaKey || event.ctrlKey || event.shiftKey || event.altKey) return;
    event.preventDefault();
    const id = link.getAttribute('href').slice(1);
    if (link.getAttribute('aria-expanded') === 'true') {
      setExpanded(id, false);
      if (location.hash === `#${id}`) history.replaceState(null, '', location.pathname + location.search);
      return;
    }
    if (location.hash !== `#${id}`) location.hash = id;
    else revealHash();
  }));

  document.querySelectorAll('.close-detail').forEach(button => {
    button.addEventListener('click', () => {
      const panel = button.closest('.topic-detail');
      if (!panel) return;
      setExpanded(panel.id, false);
      if (location.hash === `#${panel.id}`) history.replaceState(null, '', location.pathname + location.search);
      const link = links.find(item => item.getAttribute('href') === `#${panel.id}`);
      link?.focus();
    });
  });

  const horizontal = document.getElementById('rocket-horizontal');
  const vertical = document.getElementById('rocket-vertical');
  const result = document.getElementById('rocket-result');
  function updateRocket() {
    if (!horizontal || !vertical || !result) return;
    const h = Number(horizontal.value), v = Number(vertical.value);
    if (horizontal.value === '' || vertical.value === '' || !Number.isFinite(h) || !Number.isFinite(v)) {
      result.textContent = '请输入横向与纵向的示意评分。';
    } else if (h === v) {
      result.textContent = `横分 ${h} = 竖分 ${v}：进入 Next(0,2) 同分分支；1选竖，其余选横。`;
    } else {
      result.textContent = `横分 ${h} ${h > v ? '>' : '<'} 竖分 ${v}：选择${h > v ? '横向火箭（30）' : '纵向火箭（20）'}。`;
    }
  }
  horizontal?.addEventListener('input', updateRocket);
  vertical?.addEventListener('input', updateRocket);
  updateRocket();
  window.addEventListener('hashchange', revealHash);
  if (document.readyState === 'complete') revealHash();
  else window.addEventListener('load', revealHash, { once: true });
})();
