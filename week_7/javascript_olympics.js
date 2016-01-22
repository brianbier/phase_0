 // JavaScript Olympics


// Warm Up
// counter can refer to; if there are  athletes[3] then counter = 4
// counter will decrese to 0 counter = counter -= 1 (athletes[counter])
// each loop adding .win property to each object in the array 
// athletes[counter].win = console.log(array.name + " won the " + array.event)

// Function Expression
// var f = function(a) {
//   console.log(a + 2);
// }

// functioin declaration
// function g(a, b) {
//   return a
// }

//Bulk Up
var athletes = [
  {name: "John", event:"basketball game"},
  {name: "Mike", event: "hockey game"}
];

function addwin(array){
  
for(var i= 0; i < array.length;i++ ){
      array[i].win = " won the ";
    console.log(array[i].name + array[i].win + array[i].event);
};
}

// Driver Code
console.log(addwin(athletes))
console.log(athletes);


// Jumble your words

function reverse(string) {
  var newString = string.split("").reverse().join("")
  console.log(newString)
}

// Driver Code
reverse("boooo")

// 2,4,6,8
function getEven(array) {
  var newArray = []
    for (var i = 0; i < array.length; i ++ ) {
      if (array[i] % 2 == 0){
        newArray.push(array[i])
      }
    }  
  console.log(newArray)
}
// Driver Code
getEven([1,2,3,4,5,6])

// "We built this city"

// Similar to RUBY Class
function Athlete(name,age,sport,quote){
  this.name = name,
  this.age = age,
  this.sport = sport,
  this.quote = quote
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")

// Driver Code
console.log(michaelPhelps.constructor === Athlete)

console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection

/*
• What JavaScript knowledge did you solidify in this challenge?
I now have a better understanding of the for loop and how to iterate through an array of objects.

• What are constructor functions?
Constructor function type notation is preferred if you need to do some initial work before the object 
is created or if it requires multiple instances of the object where each instance can be changed. 
The constructor object has its properties and methods defined with the keyword 'this' in front of it, 
whereas the literal version does not.

• How are constructors different from Ruby classes (in your research)?
The main difference with the constructor and ruby class is the syntax. The constructor objects are defined 
with the “this” keyword and in Ruby, you have to create instance variables. Another big difference is that if 
you create a class using Ruby you can create multiple methods inside that class that can initiate different actions. 
However, in the constructor function, you cannot do that, you will have to create an entirely separate function that 
is a prototype of the constructor function in order to test and initiate a concept.

Example below for Athlete constructor

Athlete.prototype.valid = function() {
    if(this.name.length == 10)
        return true;
    }
};


*/