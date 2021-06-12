const capitalize = (word) => {
  const firstLetter = word[0].toUpperCase();
  console.log(firstLetter)
  const restOfTheWord = word.substring(1).toLowerCase();
  console.log(restOfTheWord)
  return `${firstLetter}${restOfTheWord}`;
};

console.log(capitalize('aleXandre'));

