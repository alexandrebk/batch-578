// PLAYER 1
// 1) utilisateur appuie sur le touche "Q"
// 2) quand la touche "Q" est pressée, la classe "active" est ajouté au td suivant, et retiré du td actuel
// 3) quand la td actuel n'a plus de soeur suivante (la dernière td), l'utilisateur a gagné, il reçoit un message (alerte).
// 4) le jeu est terminé : rafraichir la page === repartir à zéro.

const goForward = (player) => {
  const wagon = document.querySelector(`#player${player}-race .active`);
  if (wagon.nextElementSibling) {
    wagon.nextElementSibling.classList.add('active');
    wagon.classList.remove('active');
  } else {
    alert(`Player ${player} wins! Play again?`);
    window.location.reload();
  }
};


const moveWagons = (event) => {
  if (event.key === "q") {
    goForward(1);

  } else if (event.key === "p") {
    goForward(2);
  }
};

document.addEventListener("keyup", moveWagons);
