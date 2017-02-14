//Reverse function 
//reverse(string)
//get length 
//for loop to print last then 
//decrease counter by 1
//print next letter or char 

function reverse(string){
	total = 0;
	var reverseString = "";
	for(var i = string.length - 1; i >= 0; i--){
	 reverseString = reverseString + string[i];
	}
	return reverseString;
};

//var string = 'hello' //works!
var string = "asfaefgdvdsfs" // sorry to long!
var reverseHello = reverse(string);

if (string.length < 10){
	console.log(reverseHello);
}
else{
	console.log("Sorry to long!");
}