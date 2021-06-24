const clock = document.querySelector('#clock');
const renderTime = () => {
  const time = new Date;
  clock.innerText = time.toLocaleString('en-US', {year: 'numeric', month: 'long', day: 'numeric', hour: 'numeric', minute: 'numeric', second: 'numeric', hour12: true});
};

renderTime();
setInterval(renderTime, 1000);
