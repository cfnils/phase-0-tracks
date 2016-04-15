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

//define function that takes 2 objects as arguements
// for every property in the first object, see if there is the same one in the second object
	//if there is, return true

function samePair(object1, object2) {
	var match = false;
	for (var i in object1) {
		if (object1[i] == object2[i]) {
			match = true;
		}
	}
	return match;
}

//define funtion that takes an integer as an arguement
//for as many times as the integer
	//for as many times as a random number between 1 and 10
		//generate a random letter and add it to a string
	//store the strings in an array


function generator(int){
	var arrizay = [];
	for (var i = 0; i < int; i++) {
		var possible = "abcdefghijklmnopqrstuvwxyz"
		var stringLength = Math.floor((Math.random() * 10) + 1);
		var stringle = '';
		for (var x = 0; x < stringLength; x++) {
			
			stringle += possible.charAt(Math.random() * 26);
		}
		arrizay.push(stringle);
	}
	return arrizay;
}



// Driver Code
console.log(longestElement(["long phrase", "longest phrase", "longer phrase"]));
console.log(longestElement(["i don't know", "oh ok", "what"]));

console.log(samePair({name: "Steven", age: 54}, {name: "Tamir", age: 54}));
console.log(samePair({name: "Kevin", age: 99}, {name: "John", age: 44, weight: 110}));

for (var i = 0; i < 10; i++) {
	var genArray = generator(4);
	console.log(genArray);
	console.log(longestElement(genArray));
}

