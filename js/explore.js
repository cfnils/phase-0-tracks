// declare function reverse which takes a string parameter
// set a variable named 'reverseString' to equal an empty string
// for each letter in the string parameter
// 	add the letter to 'reverseString' 
// return 'reverseString'

function reverse(original) {
	var reverseString = "";
	for (var i = original.length-1; i >= 0; i--) {
		reverseString = reverseString + original[i];
	}
	return reverseString;
}

var reverseTest = reverse("someword");
if (1 == 1) {
	console.log(reverseTest);
}
