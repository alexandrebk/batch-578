// Lecture

// équivalent du puts, p
console.log("Hello Le Wagon");


// Type
console.log(typeof("Boris"));
console.log(typeof(42.24));
console.log(typeof(42));

// Casting types

console.log(Number.parseInt(' 0xF', 16));

// Nil/Null

let name = null;
console.log(name);

let age;
console.log(age);


console.log('      ')
// Variables

let counter = 1;
console.log(counter);

counter = counter + 1;
console.log(counter);


const firstNameJohn = "John";
console.log(firstNameJohn);

// firstName = "Paul"; // TypeError: Assignment to constant variable.


// Naming convention

let firstName = "Ringo";
// lowerCamelCase

// String

// Print all characters starting at index 1
console.log(firstName.substring(1));
console.log(firstName.toUpperCase());


// Arrays

const beatles = ["paul", "john", "ringo", "george"];
beatles.forEach((beatle) => {
  console.log(beatle.toUpperCase());
});


// Control flow

age = 20;

if (age >= 18) {
  console.log("You can vote");
} else {
  console.log("You can't vote");
}


console.log('');
// Objects

const student = {
  firstName: "Boris",
  lastName: "Paillard"
};

console.log(typeof student);
// => "object"

console.log(student);

console.log(student.firstName);

// functions

const square = (x) => {
  return x * x;
};

console.log(square(3))


















