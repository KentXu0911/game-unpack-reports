(() => {
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
})();
