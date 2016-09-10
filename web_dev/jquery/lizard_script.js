console.log("The script is running!");

//Release1
// Change the background color of body to a new color
var body = document.getElementsByTagName("body");
mainbody = body[0];
mainbody.style.backgroundColor = "grey";



// Release 2
//Add a event listener
// Voting buttons make target bigger

var button = document.getElementsByTagName("button");
lizard = button[0];
iguana = button[1];
bobolink = button[2];

function votelizard(event) {
  var photoLizard = document.getElementById("lizard-photo");
  console.log("click happened! here's the click event:");
  console.log(event);
  photoLizard.style.height = "auto";
  photoLizard.style.width = "400px";
}

function voteiguana(event) {
  var photoIguana = document.getElementById("iguana-photo");
  console.log("click happened! here's the click event:");
  console.log(event);
  photoIguana.style.height = "auto";
  photoIguana.style.width = "400px";
}

function votebobolink(event) {
  var photoBobolink = document.getElementById("bobolink-photo");
  console.log("click happened! here's the click event:");
  console.log(event);
  photoBobolink.style.height = "auto";
  photoBobolink.style.width = "400px";
}
lizard.addEventListener("click", votelizard);
iguana.addEventListener("click", voteiguana);
bobolink.addEventListener("click", votebobolink);

// Make the lizard move

function myMove() {
  console.log("click happened! here's the click event:");
  var elem = document.getElementById("lizard-photo");
  var pos = 0;
  var id = setInterval(frame, 5);
  function frame() {
    if (pos == 350) {
      clearInterval(id);
    } else {
      pos++;
      elem.style.top = pos + 'px';
      elem.style.left = pos + 'px';
    }
  }
}

// move.addEventListener("click", myMove);