// THIS IS STILL BROKEN
// define the old person, their attributes + their greeting style
var person_old = {
    age: 70,
    name: 'Mr. Rogers';
    greet: function() {
      console.log("Hello, [name]. I am [person_young.name]. Pleased to meet you.")
    }
};

// define the young person, their attributes + their greeting style

var person_young = {
  age: 8,
  name: 'Timmy';
  greet: function() {
    console.log("Yo [person_old.name]! Wassup?")
  }
};

// print both greeting styles...
console.log(person_old.greet(), person_young.greet());
