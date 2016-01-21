// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var number = 1

for(var i = 0; i < 10;i++){
    number = number * 2
} 
console.log(number)

// //Program that uses Prompt

prompt("What is your favorite food");
console.log("Hey! That's my favorite too!");

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

//Looping a Triangle
counter = 1
pound = "#"
while(counter < 7){
  console.log(pound);
  pound = pound + "#"
  counter += 1
};
// // FizzBuzz
for(var i =0; i <= 100; i++){
  if(i % 3 == 0 && i % 5 == 0){
   console.log("FizzBuzz");
  }
  else if(i % 3 == 0){
    console.log("Fuzz");
  }
  else if(i % 5 == 0){
    console.log("Buzz");
  }
  else{
    console.log(i);
  };
};

// Functions

// Complete the `minimum` exercise.
function min(min,max){
   return Math.min(min,max)
}
console.log(min(0, 10));
// → 0
console.log(min(0, -10));
// → -10


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "Brian",
  age: 25,
  favoriteFood: "Pizza",
  quirk: "My last name is Bier which stands for Beer in German and I dont like beer"
}

console.log(me)
// var me = {};
// function about(name,value){
//   me[name] = value;
// };

// about("name", "Brian");
// about("age", 25);
// about("quirk", "My last name is Bier which stands for Beer in German and I dont like beer");

// console.log(me)




