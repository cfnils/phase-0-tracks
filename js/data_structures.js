var color = ["blue", "purple", "green", "orange"];
var name = ["ed", "george", "fred", "jessica"];
color.push("yellow");
name.push("alex");
console.log(color);
console.log(name);

var horse = {}

//if (name.length = color.length){
  //for (var i = 0; i < name.length; i++){
    //horse.name[i] = color;
  
 // }
 
name.map( function( value, index ) {

    horse[ value ] = color[ index ];

});
console.log(horse);



function Car(color, make, year) {
  console.log("our car", this)
  this.color = color;
  this.make = make;
  this.year = year;
  this.speak = function(){
    console.log("vroom!");
  } ;
}

var firstCar = new Car ('black', 'porsche', 2013);
console.log(firstCar);
console.log(firstCar.year);
firstCar.speak();

var secondCar = new Car ('white', 'ford', 2017);
console.log(secondCar);
secondCar.speak();