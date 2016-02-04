// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.
// Adding the https link to the head of the html page pulls all jquery resources when there is jquery calls in the html page
$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM


//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
$("body > h1").css({"color":'red','border':'1px solid black','visability':'none'})
$("h1").first().html("Fiddle Crabs")
//RELEASE 4: Event Listener
  // Add the code for the event listener here

$("img").on('mouseover',function(e){
  e.preventDefault()
  $(this).attr('src','fiddler-crab.jpg')
})
$('img').on('mouseleave',function(d){
  d.preventDefault()
  $(this).attr('src','devbootcamp-logo-new.png')
})

//RELEASE 5: Experiment on your own
$('h1').click(function(){
  $('body > h1').animate({
    width: "70%",
    marginLeft: "0.6in",
    fontSize: "3em",
    borderWidth: "10px",
  });
});






})  // end of the document.ready function: do not remove or write DOM manipulation below this.