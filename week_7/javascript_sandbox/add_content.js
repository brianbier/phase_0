 // Creating a message that gives you a message greeting you.
 var today = new Date();
 var hourNow = today.getHours();
 var greeting;

 if (hourNow > 18){
    greeting = "Good evening!";
 }
 else if(hourNow > 12 ){
    greeting = "Good Afternoon!";
 }
 else if (hourNow > 0){
  greeting = "Good Morning";
 }
 else{
    greeting = "Welcome!";
 }

 var welcome = document.getElementById("welcome");
welcome.textContent = greeting;

// Creating a greeting message for users
var username = "Brian";
var message = "See you your next task";

var inStock = "Yes";
var shipping = "50%";

var elName = document.getElementById('name');
elName.textContent = username;
var elNote = document.getElementById("note");
elNote.textContent = message;


var elStock = document.getElementById("stock");
elStock.textContent = inStock;

var elShip = document.getElementById("ship");
elShip.textContent = shipping;

var msg = "Sign up to receive our newsletter for 10% off!";
function updateMessage(){
  var el = document.getElementById("message");
  el.textContent = msg;
}

updateMessage();


function Hotel(name,rooms,booked){
  this.name = name;
  this.rooms = rooms;
  this.booked = booked;
  this.checkAvailability = function(){
    return this.rooms - this.booked;
  }
}

var quayHotel = new Hotel("Quay",40,25);
var parkHotel = new Hotel("Park",100,77);

var details1 = quayHotel.name + " rooms: ";
// the line below is adding additional information to the line above. Check details 2 how I did it instead
  details1 += quayHotel.checkAvailability();
  var elhotel1 = document.getElementById("hotel1");
  elhotel1.textContent = details1;

var details2 = parkHotel.name + " rooms: " + parkHotel.checkAvailability();
var elhotel2 = document.getElementById("hotel2");
elhotel2.textContent =  details2;


// understanding how to get information about the window object for the browser object model
var msg = '<h2>browser window</h2><p>width: ' + window.innerWidth + '</p>'    
  msg += '<p>height: ' + window.innerHeight + '</p>';
  msg += '<h2>history</h2><p>items: ' + window.history.length+ '</p>' ;
  msg += '<h2>screen</h2><p>width: ' +window.screen.width+ '</p>';
  msg += '<p>height : ' + window.screen.height+ '</p>';
var el = document.getElementById('info');
el.innerHTML = msg;
// alert('current Page: ' + window.location);

// Document Object Model gettting information about the page

var message = "<p><b>page title: </b>" + document.title + "<br />";
    message += "<b>page address: </b>" + document.URL + "<br />";
    message += "<b>last modified: </b>" + document.lastModified + "</p>";

var el = document.getElementById('footer');
el.innerHTML = message;




var today = new Date();
var year = today.getFullYear();
var date = document.getElementById('copy_right');
date.innerHTML = "<p> copyright " + year + "</p>";
