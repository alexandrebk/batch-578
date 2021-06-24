const list = document.querySelector('#results');

const updateListMovies = (event) => {
  event.preventDefault();
  list.innerHTML = '';
  const input = document.querySelector('#search-input');
  fetchMovies(input.value);
}

const insertMovies = (data) => {
  data.Search.forEach((result) => {
    const movieTag = `<li>
      <img src="${result.Poster}" alt="" height="200"/>
    </li>`;
    list.insertAdjacentHTML('beforeend', movieTag);
  });
};

const fetchMovies = (query) => {
  fetch(`http://www.omdbapi.com/?s=${query}&apikey=adf1f2d7`)
    .then(response => response.json())
    .then(insertMovies);
};

export { fetchMovies, updateListMovies };
