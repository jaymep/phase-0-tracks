// PSEUDOCODE
// Release 0: Find the Longest Phrase
//   set array as a variable
//   set length of array values as a variable
//   determine the length of each value in the array
//   add length values to second array
//   find max value in array
//   find position of max value
//   use max value index to find phrase

// Release 1: Find a Key-Value Match
//   compare key from first object to second object
//   if keys match, check if values match return true and stop
//   otherwise repeat until match is found or no more keys to compare
//   if no keys match, return false

// Release 2: Generate Random Test Data


// FUNCTION CODE
// function maxLength(arr) {
//   var newArr = [];
//   for (var i = 0, len = arr.length; i < len; i++) {
//     newArr.push(arr[i].length);
//   }
//   var maxLength = Math.max.apply(Math, newArr);
//   var maxLengthIndex = newArr.indexOf(maxLength);
//   console.log(arr[maxLengthIndex]);
// }

function findMatch(obj1,obj2) {
  if (Object.keys(obj1)[1] == Object.keys(obj2)[1]) {
    if (obj1[Object.keys(obj1)[1]] == obj2[Object.keys(obj2)[1]]) {
      return true;
    }
  } else {return false;}
}



// function createData(set) {

// }

// DRIVER CODE
// Release 0: Find the Longest Phrase
// console.log(newArr); // captured values
// console.log(maxLength); // length of longest string 
// console.log(maxLengthIndex); // position of longest string
// console.log(arr[maxLengthIndex]); //phrase at correspinding striggred
// maxLength(["long phrase","longest phrase","longer phrase"]);
//   return "longest phrase"
// maxLength(["bibbidi bobbity boo","hakuna matata","jiminy cricket"]);
//   return "bibbidi bobbity boo"
// maxLength(["leonardo","raphael","donatello", "michaelangelo"]);
//   return "michaelangelo"


// Release 1: Find a Key-Value Match
var obj1 = {name: "Steven", age: 54}; 
var obj2 = {name: "Tamir", age: 54};
console.log(Object.keys(obj1)[0]); // key
console.log(obj1[Object.keys(obj1)[0]]); // value


// Release 2: Generate Random Test Data