// define function that takes an array of strings as an arguement
// initialize 'longest' variable to 0
// for each of the array elements calculate the length of the element
// 	if the length is higher than 'longest'
// 		set longIndex to index of the elements
// 		set longest to length of the elements
// 	return the value at the longIndex for the array

function longestElement(array) {
	longest = 0;
	for (var i = 0; i < array.length; i++) {
		if (array[i].length > longest) {
			longIndex = i;
			longest = array[i].length;
		}
	}
	return array[longIndex];
}

console.log(longestElement(["long phrase", "longest phrase", "longer phrase"]));
console.log(longest);
console.log(longestElement(["i don't know", "oh ok", "what"]));
console.log(longest);