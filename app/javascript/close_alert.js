function closeAlert(element) {
  const parent = element.closest('[role="alert"]');
  parent.remove();
}
  