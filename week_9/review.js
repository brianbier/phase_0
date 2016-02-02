// //Method to create a list
// //input: string of items separated by spaces (example: "carrots apples cereal pizza")
// //steps: 
// // create a function that takes a string full of items in the list
// // create an object and assign it a default value of quantity to store your list of items
// // take the string and split it into individual items.(possible split method)
// // After you split the string you iterate through the array of items and store them into the empty hash
// // Last print the list to 
// //print the list to the console [can you use one of your other methods here?]
// //output: object full of items as properties and the default number as a value.

// function createList(items){
//   var list = {}
// var split_items = items.split(" ");
//   for(var i = 0; i < split_items.length;i++){
//     list[split_items[i]] = 0;
//   }
//   return list;

// }

// var groceryList = createList("carrots apples cereal pizza")


// //Method to add an item to a list
// //input: item name and optional quantity
// //create a function that takes 3 arguments one for name of item one for quantity of items and the list that it wants to add it to.
// // Take the name of the item and add it to the list using dot notation or bracket notation and assign it the quanity they input.
// //output:A list with the new item included
// function addItem(itemName,list,quantity){
//   list[itemName] = quantity;
// }

// addItem("milk",groceryList,2);



// //Method to remove an item from the list
// //input: Item name and list
// //steps: Create a function that takes in the item name 
// // find a delete method to remove the item from the list
// //output: new list with the excluded item

// function removeItem(itemName,list){
//   delete list[itemName];
  
// }

// removeItem("carrots",groceryList)




// //Method to update the quantity of an item
// //input: Item name && List && new quantity
// //steps:
// //Create a function that takes 3 parameter
// //Update the quantity using the dot notation or bracket notation for that item
// //output:list of properties with updated quantity

// function updateQuantity(itemName,list,quantity){
//  list[itemName] = quantity; 
// }

// updateQuantity("cereal",groceryList,3)
// console.log(groceryList);






//REFACTOR CONSTRUCT


function createList(items){
  this.items = items.split(" ");
  var list = {}
  for(var i = 0; i < this.items.length;i++){
    list[this.items[i]] = 0;
  }
  
  this.addItem = function(itemName,quantity){
    list[itemName] = quantity
  }
  this.removeItem = function(itemName){
    delete list[itemName]
  }
  this.updateQuantity = function(itemName,quantity){
    list[itemName] = quantity;
  }
  this.display = function(){
  console.log(list)
}

}


var groceryList = new createList("carrots apples cereal pizza")
groceryList.addItem("milk",2);
groceryList.display();
groceryList.addItem("sugar",3);
groceryList.display();
groceryList.removeItem("cereal");
groceryList.updateQuantity("carrots",4);
groceryList.display();
console.log(groceryList instanceof createList)

//REFLECTION
/*
What concepts did you solidify in working on this challenge? 
(reviewing the passing of information, objects, constructors, etc.)
I solidify my understanding of building a constructor and passing information within. 
I was constantly confused every time I used the "this" keyword. 
I now realize that it refers to the global object you are passing into an object

What was the most difficult part of this challenge?
Overall the challenge was fun. I did not have a hard time with the challenge but 
I did have a hard time trying to convert my solution from individual functions into one constructor. 
I just decided to make that my own challenge.

Did an array or object make more sense to use and why?
I decided to make an object because we were going to assign values to each property of items.
*/