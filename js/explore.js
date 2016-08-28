// PSEUDOCODE
// set original string as variable
// set new string as variable (start with empty string)
// set counter to start at end (index would be string length -1)
// add letter at position of counter number to new string
// decrease counter by 1 for each loop until counter is 0
// print new string (keep print outside of loop)

function reverse(str) {
  var newStr = "";

  for (i = str.length - 1; i >= 0; i-=1) {
    newStr += str[i];
  }
  console.log(newStr);
}

// DRIVER CODE
// reverse("backwards test");
// reverse("abracadabra");

var backwards = reverse("supercalifragilisticexpialidocious");

if (1 == 1) {
  console.log(backwards);
}