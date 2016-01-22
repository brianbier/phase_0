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

// //Your Own Tests (OPTIONAL)
// function assert(test, message, test_number) {
//   if (!test) {
//     console.log(test_number + "false");
//     throw "ERROR: " + message;
//   }
//   console.log(test_number + "true");
//   return true;
// }

// assert(
//   (typeof number === 8),
//   "The input must be a number.",
//   "1. "
// )


// // Reflection

/*
What was it like to approach the problem from the perspective of JavaScript? 
Did you approach the problem differently?

I tried approaching the problem thinking in a similar way as to how I solve my solution in ruby but it turns out that it
wasn't the best choice. A big problem is that I a wasn't too familiar with the JavaScript methods so we had to pick a different 
approach. We decided to use a loop and use the splice method which will add/remove anything you want in a specific location inside an array.

What did you learn about iterating over arrays in JavaScript?

We did not iterate over the array in Javascript, what we did was count what the length of the array and subtract three from the
length. Whatever the number was, we included a comma in that position of the array and then we repeated the process again.

What was different about solving this problem in JavaScript?

I couldn't find any methods that could iterate directly inside an array like Ruby and the syntax 
is a bit confusing especially when you constantly need to use parenthesis and curly braces. The Mozilla developer network
is great but can be intimidating at first. The definitions are very complicated and the examples are very long and confusing.

What built-in methods did you find to incorporate in your refactored solution?

After realizing how the splice method works, we took advantage of it.

*/