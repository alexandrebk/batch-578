// const button = document.querySelector("#click-me");


// button.addEventListener("click", (event) => {
//   event.currentTarget.innerText = "hold still...";
//   // event.currentTarget.setAttribute("disabled", "");
//   event.currentTarget.disabled = true;
// });

// const apiUrl = "http://www.omdbapi.com/?s=harry potter&apikey=adf1f2d7"
const list = document.querySelector("#list-movies");

const form = document.querySelector('#search-movies');


const searchMovies = (query) => {
  fetch(`http://www.omdbapi.com/?s=${query}&apikey=adf1f2d7`)
    .then(response => response.json())
    .then((data) => {
      data.Search.forEach((result) => {
        const movie = `<li class="list-inline-item">
          <img src="${result.Poster}" alt="">
          <p>${result.Title}</p>
        </li>`;
        console.log(result);
        list.insertAdjacentHTML("beforeend", movie);
      });
    });
};

form.addEventListener('submit', (event) => {
  event.preventDefault();
  const input = event.currentTarget.querySelector('.form-control');
  list.innerHTML = '';
  searchMovies(input.value);
});

// fetch(apiUrl)
//   .then(response => response.json())
//   .then((data) => {
//     data.Search.forEach((result) => {
//       const movieTag = `<li>
//         <img src="${result.Poster}" alt="">
//         <p>${result.Title}</p>
//       </li>`;
//     listMovies.insertAdjacentHTML("beforeend", movieTag);
//     });
//     console.log(data.Search);
//   });
