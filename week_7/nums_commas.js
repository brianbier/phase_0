// Separate Numbers with Commas in JavaScript **Pairing Challenge**

/* Pseudocode

input:an integer of numbers
output:a string separated by commas 
steps:
- convert integer numbers into string and put each digit in an array
- Then find the length of the array and substract three
-IF the length is less than 4, print the integer into the console
-create new index variable that reduces the original index by three.
-create while loop that adds comma every thrird index values starting from last array object
-join array into string
-print string

*/
 //Initial Solution
// function separateComma(number) {
//   var numberArray = number.toString().split('');
//   var index = number.toString().length;
//   console.log(index);
//   if (index < 4) {
//   }
  
//   var numIndex = index - 3
//   // numIndex -= 3;
  
//   while (numIndex > 0) {
//   numberArray.splice(numIndex, 0, ",");
//     numIndex -= 3;
//   }
//   numberArray = numberArray.join('');
//   console.log(numberArray);

// }


// console.log(separateComma(274456819));
// console.log(separateComma(2193));


//Refactored Solution
function separateComma(number) {
  var numberArray = number.toString().split('');
  var arrayLength = (numberArray.length) - 3;
  while (arrayLength > 0) {
  numberArray.splice(arrayLength, 0, ",");
    arrayLength -= 3;
  }
  return numberArray = numberArray.join('');
}

console.log(separateComma(1234567891))
console.log(separateComma(123))

// //MY OWN TEST

// Your Own Tests (OPTIONAL)
// function assert(test, message, test_number) {
//   if (!test) {
//     console.log(test_number + "false");
//     throw "ERROR: " + message;
//   }
//   console.log(test_number + "true");
//   return true;
// }

// assert(
//   (typeof numberArray === 'number'),
//   "The input must be a number.",
//   "1. "
// )


// // Reflection