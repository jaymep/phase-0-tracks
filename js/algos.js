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
  // the given integer is set as a variable for array length
  // create an empty data array variable
  // set alphabet as an array variable
  // loop as many times as array length
  //   generate a random number (1-10) for string length
  //     loop as many times as string length
  //       set string as empty array
  //       generate random number (0-25) for letter index
  //       add letter to string array
  //     add string to data array

// FUNCTION CODE
function maxLength(arr) {
  var newArr = [];
  for (var i = 0, len = arr.length; i < len; i++) {
    newArr.push(arr[i].length);
  }
  var maxLength = Math.max.apply(Math, newArr);
  var maxLengthIndex = newArr.indexOf(maxLength);
  return arr[maxLengthIndex];
}

function findMatch(obj1,obj2) {
  for (var i = 0; i < Object.keys(obj1).length; i++) {
    if (Object.keys(obj1)[i] === Object.keys(obj2)[i]) {
      if (obj1[Object.keys(obj1)[i]] === obj2[Object.keys(obj2)[i]]) {
       return true;
      } 
    }   
  }  return false;
}

function createData(setLength) {
  var dataSet = [];
  var alphabet = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'];
  // alphabetIndex = Math.floor(Math.random() * (25 - 0) + 0);
  // stringLength = Math.floor(Math.random() * (10 - 1) + 1);
  var dataString = '';
  for (var i = 0; i < setLength; i ++) {
    dataString = '';
    for (var j = 0; j < Math.floor(Math.random() * (10 - 1) + 1); j++) {
      dataString = dataString + alphabet[Math.floor(Math.random() * (25 - 0) + 0)];
      }    dataSet.push(dataString);
  } return dataSet;
}
// DRIVER CODE
// Release 0: Find the Longest Phrase
  // console.log(newArr); // captured values
  // console.log(maxLength); // length of longest string 
  // console.log(maxLengthIndex); // position of longest string
  // console.log(arr[maxLengthIndex]); //phrase at corresponding index

  // maxLength(["long phrase","longest phrase","longer phrase"]);
  // // return "longest phrase"
  // maxLength(["bibbidi bobbity boo","hakuna matata","jiminy cricket"]);
  // // return "bibbidi bobbity boo"
  // maxLength(["leonardo","raphael","donatello", "michaelangelo"]);
  // // return "michaelangelo"

// Release 1: Find a Key-Value Match
  // var obj1 = {name: "Steven", age: 54}; 
  // var obj2 = {name: "Tamir", age: 54};
  // console.log(Object.keys(obj1).length); // object size
  // console.log(Object.keys(obj1)[0]); // key
  // console.log(obj1[Object.keys(obj1)[0]]); // value
  // console.log(findMatch(obj1,obj2));

  // var obj3 = {name: "Ryan", age: 24}; 
  // var obj4 = {name: "Ryan", age: 37};
  // console.log(findMatch(obj3,obj4));

  // var obj5 = {color: "green", vehicle: "jeep", seats: 5}; 
  // var obj6 = {color: "yellow", vehicle: "submarine", seats: 8};
  // console.log(findMatch(obj5,obj6));

// Release 2: Generate Random Test Data
  // createData(7);
  // n10 times: generates an array, prints the array, feeds the array to your "longest word" function, and prints the result
  // for (var i = 0; i < 10; i ++) {
  //   arr = createData(3);
  //   console.log(arr);
  //   console.log(maxLength(arr));
  // }