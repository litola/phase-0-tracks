//Define a function longestString(array), receives an array of strings
//sort the array based on length  (longests first.)
//print the array[0] to have the longest string
function longestString(arrayOfStrings){
	a = arrayOfStrings.sort(function(a,b){return b.length - a.length});
	// console.log(a[0]);
	return a[0]
};
//Define a function that gets 2 objects
//loop to get key and values of object 1
//loop to get key and values of object 2
//compare keys if equal compare values are the same 
//if any one is true return true
function equalKeyAndValue(object1,object2) {
	for(var key1 in object1){
		for(var key2 in object2){
		if (key1 == key2 && object1[key1] == object2[key2]){
			// console.log(object1[key1]  + "," + object2[key2]);
			// console.log(key1 + "," +  key2 );
			 return true
			};
		};	
	};
	return false
	// var keys2 = []
	// for(var key in object2){
	// 	keys1.push(key);
	// 	console.log(key);
	// 	//console.log(value)
	// };
	// //console.log(object1[keys1[0]]);
};
//define a function randomArrayStrings(length)
//creates an array of this length -1
function createArray(length){
	stringArray = []
	for(var i=0; i<length; i++){
		stringArray[i] = "";
	};
	return stringArray;
};
//define function randomWordGenerator
//choose length of word from 1 -10 letters
//pick random from alphabet 1-25 letters
//print word
function randomWordGenerator(){
	var abc = "abcdefghijklmnopqrstuvwxyz";
	var wordLength = Math.floor((Math.random()*10)+1);
	var randomWord = ""
  for(var i = 0; i < wordLength; i++ ){
  	var randomLetter = Math.floor((Math.random()*25)+1);
  	randomWord +=  abc.charAt(randomLetter);
  };
  return randomWord;
};

//DRIVER CODE 
var longest = longestString(["long phrase","longest phrase","longer phrase"]);
//longest phrase
console.log("longest string: " + longest); 
var longest = longestString(["sadfasdfa","bafsdfceqwaxsdcxqeasdc","asdfcq34ewaxdscsadzfcsxaza"]);
//asdfcq34ewaxdscsadzfcsxaza
console.log("longest string: " + longest);
var equality = equalKeyAndValue({name: "Steven", age: 54}, {name: "Tamir", age: 54});
//true 
console.log("same key and value: " + equality); 
var equality = equalKeyAndValue({name: "Steven", age: 54}, {nickname: "Tamir", age: 53});
 //false
console.log("same key and value: " + equality);
//creates a random word of 1-10 characters and prints
x = randomWordGenerator();
console.log("random word: " + x);
//creates an array of N and then creates N random words
//get the first longest array if multiple with same length
emptyArray = createArray(2);
randomStrings = emptyArray.map(randomWordGenerator);
console.log("random strings: " + randomStrings);
longest = longestString(randomStrings);
console.log("longest or first: " + longest);
// CREATE 10 times:
// generate array
// print array
// feeds array into longestString
// print result
for (var i = 1; i<=10;i++){
	console.log(i +". --------------------------------")
	emptyArray = createArray(5);
	randomStrings = emptyArray.map(randomWordGenerator);
	console.log("random strings: " + randomStrings);
	longest = longestString(randomStrings);
	console.log("longest or first: " + longest);
	console.log("--------------------------------")
}

	