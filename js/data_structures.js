// Release: Horse
var colors = ['purple', 'green', 'orange', 'cyan']
var names = ['John', 'Paul', 'George', 'Ringo']

var horse = {}

// loop is while condition is true
for (var i = 0; i < names.length; i++) {
  horse[names[i]] = colors[i];
}

console.log(horse)

// Release: Car
function Car(make, model, color) {
  this.make = make;
  this.model = model;
  this.color = color;
  this.honk = function() {console.log('Honk!');};
}

var car1 = new Car('Ford','Focus','yellow');
console.log(car1);

var car2 = new Car('Toyota','Camry','green');
console.log(car2);
car2.honk();

var car3 = new Car('Porche','Carrera','red');
console.log(car3);

