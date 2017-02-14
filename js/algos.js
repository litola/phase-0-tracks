//Define a function longest_string(array), receives an array of strings
//loop through each string and get the length
//make an if to save the largest string index
//print the array[index] of the largest string
function longestString(arrayOfStrings){
	a = arrayOfStrings.sort(function(a,b){return b.length - a.length});
	console.log(a[0]);
};

longestString(["long phrase","longest phrase","longer phrase"]);
//longestString(["sadfasdfa","bafsdfceqwaxsdcxqeasdc","asdfcq34ewaxdscsadzfcsxaza"]);