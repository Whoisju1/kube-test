(async () => {
  const data = await fetch('/api');
  const response = await data.json();
  document.querySelector('#content').textContent = response.hostname;
  console.log({ response });
})();
