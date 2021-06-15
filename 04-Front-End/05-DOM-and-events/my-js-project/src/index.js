// const list = document.querySelector("#players");
// console.log(list);
// list.insertAdjacentHTML("beforeend", "<li>Luke</li>");
// list.insertAdjacentHTML("beforeend", "<li>Anakin</li>");

// const countries = document.querySelectorAll("#fifa-wins li");
// const element = list.querySelector(".red");
// console.log(element.innerText);
// console.log(countries)
// countries.forEach((item) => {
//   console.log(item.innerText);
// });

// const list = document.querySelector('#fifa-wins');
// list.insertAdjacentHTML('beforeend', '<li>France (2 wins)</li>');
// list.classList.toggle("red");

// const home = document.getElementById("home");
// console.log(home.innerText);

// const romain = document.getElementById("romain");
// romain.addEventListener("click", (event) => {
//   event.currentTarget.classList.toggle('img-circle');
// });

document.querySelectorAll("img").forEach((img) => {
  img.addEventListener("click", (event) => {
    event.currentTarget.classList.toggle("img-circle");
  });
});
