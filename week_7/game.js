
 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Escape the house.
// Goals:You have to choose one direction to move and if you find the exit you will win
// Characters:You are your own character
// Objects: There are no objects
// Functions: There are two functions. One to check for your move and one to compare the move 
// to the exit and see if you escape the house.

// Pseudocode
//Create an object that contains properties of either directions forward,back,left,right.
//to each property assign a container with different possibility of rooms.
//Create a container that will generate a random number from 0 total amount of possibilities
//Create a function that takes the players move 
//  IF the users input is forward || back || left||right it will generate a random possibility.
//Create another function that checks the users move with the correct move.
//  IF exit move is equal to correct move it will return the users move and a congradulations message
//  ELSE It will return the users move and a message letting you know you are still in the house.
// The game ends when the correct move is equal to users move.

// Initial Code
//Welcome to the maze runner JS edition. 

//In this game your goal is to try and exit the house that 
//you are trapped inside.
//The house is a maze which changes with every move that you make.
//There are multiple rooms but only one exit. After every move you will get a 
//story of where you are located and then you will decide where you want to move.

//The only possible moves you can make are forward, back, left, right.


var player = {
  exit: "You came accross an exhaust fan that was big enough for you to fit.",

  forward: ["You walk into a room full of chairs. The chairs are blocking a door straight ahead but you are strong enough to move it.", "Now you are in a garden full of roses. There is no sound in the garden only the noise of your foot steps.", "You move forward into a bathroom, the shower is running and there is message in the medicine cabinet that says 'you are almost there choose wisely'.","You move to the kitchen where pots are boiling. It looks like someone was recently cooking."],

  back: ["You walk back and now you are in a bedroom full of spiders. They are harmless but creepy.","Now you walked back into a basement. It is very dark and shallow. There are windows all around but screwed in from the outside","You walk into a bedroom that has a bed. The bed is clean and it smells like roses.","You came accross an exhaust fan that was big enough for you to fit."],

  left: ["You walk left and you end up in the attic. Which is to dark for you to see inside", "Now you take the stairs on the left and you end up in the roof. There is no way to jump or slide down becuase there is an electrical fence.", "You walk into the master bedroom and there is a broken mirror. The broken pieces are telling you to go back as much as you can", "You open a closet door and inside you find old furniture."],

  right:["You walk back and now you are in a bedroom full of spiders. They are harmless but creepy.", "Now you walked back into a basement. It is very dark and shallow. There are windows all around but screwed in from the outside", "You walk into a bedroom that has a bed. The bed is clean and it smells like roses.", "You came accross an exhaust fan that was big enough for you to fit."],

  move: function direction(move){
    if(move === "forward"){
      return player.forward[randomStep];
    }
    else if(move === "back"){
      return player.back[randomStep];
    }
    else if(move === "left"){
      return player.left[randomStep];
    }
    else if(move === "right"){
      return player.right[randomStep];
    }
    else{
      return "That is not a direction."
    };
  },

  comparison: function compare(choice){
    if(player.exit === choice){
      console.log(player.exit + "\nThis is your perfect escape. Congradulations you found your way out.")
      console.log("Great job")
    }else{
      console.log(choice + "\n(You are still inside the house. What is your next move?) ");
    };

  }
}

var randomStep = Math.floor(Math.random()* (4-0)+0);

//Driver Code
var playerChoice = player.move("forward");
player.comparison(playerChoice)






// Reflection
//
//
//
//
//
//
//
//
