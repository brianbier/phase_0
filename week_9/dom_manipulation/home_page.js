// DOM Manipulation Challenge

// Add your JavaScript calls to this page:

// Release 1:
// ADD A CLASS NAME WITH VALUE
document.getElementById('release-0').className += 'done';


// Release 2:
// STYLE AN ID
document.getElementById('release-1').style.display = 'none';


// Release 3:
// INCLUDE TEXT INSIDE AN HTML ELEMENT [0] IS TARGETING THE FIRST
document.getElementsByTagName('h1')[0].innerHTML = 'I completed release 2.';


// Release 4:
//STYLE THE ELEMENT ID
document.getElementById('release-3').style.background = '#955251';


// Release 5:
//ITERATE IN ORDER TO TARGET EVERY CLASS AND STYLE IT 
var changeFontSize = document.getElementsByClassName('release-4');
for(var i = 0;i < changeFontSize.length; i++){
  changeFontSize[i].style.fontSize = '2em'
}

// Release 6:

var template = document.getElementById('hidden');
//ACTIVATE THE TEMPLATE AND CLONE IT SO THAT IT CAN BE DISPLAY INTO BODY USING APPEND CHILD
document.body.appendChild(template.content.cloneNode(true));








