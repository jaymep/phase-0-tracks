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
  for (var i = 0; i < Object.keys(obj1).length; i++) {
    for (var n = 0; n < Object.keys(obj2).length; i++) {
      // if (Object.keys(obj1)[i] == Object.keys(obj2)[n]) {
        // match = true
      };
    };
  };
}

// function createData(set) {

// }

// DRIVER CODE
// Release 0: Find the Longest Phrase
// console.log(newArr); // captured values
// console.log(maxLength); // length of longest string 
// console.log(maxLengthIndex); // position of longest string
// console.log(arr[maxLengthIndex]); //phrase at correspinding striggred
maxLength(["long phrase","longest phrase","longer phrase"]);
// return "longest phrase"
maxLength(["bibbidi bobbity boo","hakuna matata","jiminy cricket"]);
// return "bibbidi bobbity boo"
maxLength(["leonardo","raphael","donatello", "michaelangelo"]);
//  return "michaelangelo"


// Release 1: Find a Key-Value Match
console.log(Object.keys(obj1)[0]); // key

// Release 2: Generate Random Test Data