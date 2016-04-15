// define function that takes an array of strings as an arguement
// initialize 'longest' variable to 0
// for each of the array elements calculate the length of the element
// 	if the length is higher than 'longest'
// 		set longIndex to index of the elements
// 		set longest to length of the elements
// 	return the value at the longIndex for the array

function longestElement(array) {
	var longest = 0;
	for (var i = 0; i < array.length; i++) {
		if (array[i].length > longest) {
			var longIndex = i;
			longest = array[i].length;
		}
	}
	console.log(longest);
	return array[longIndex];
}


function samePair(object1, object2) {
	var match = false;
	for (var i in object1) {
		if (object1[i] == object2[i]) {
			match = true;
		}
	}
	return match;
}


// Driver Code
console.log(longestElement(["long phrase", "longest phrase", "longer phrase"]));
console.log(longestElement(["i don't know", "oh ok", "what"]));

console.log(samePair({name: "Steven", age: 54}, {name: "Tamir", age: 54}));
console.log(samePair({name: "Kevin", age: 99}, {name: "John", age: 44, weight: 110}));

