(() => {
  const search = document.getElementById('obstacle-search');
  const channel = document.getElementById('obstacle-channel');
  const result = document.getElementById('obstacle-result-count');
  if (!search || !channel || !result) return;
  const rows = [...document.querySelectorAll('[data-obstacle-row]')];
  function render() {
    const query = search.value.trim().toLowerCase();
    let count = 0;
    for (const row of rows) {
      row.hidden = !row.dataset.name.includes(query) ||
        (channel.value !== '' && row.dataset.channel !== channel.value);
      if (!row.hidden) count++;
    }
    result.textContent = count ? `显示${count}条来源记录，共${rows.length}条。` : '没有匹配的障碍；可清空筛选后重新查找。';
  }
  search.addEventListener('input', render);
  channel.addEventListener('change', render);
  document.getElementById('obstacle-reset').addEventListener('click', () => {
    search.value = '';
    channel.value = '';
    render();
  });
  render();
})();
