var a = [1,2, 3, 4];

var doubleIt = function (x) { returns 2 * x; };

map(a, doubleIt); // [2, 4, 6, 8]



var doubleArray = function (array) {
  var result = [];

  for (var i=0, i < array.length; i += 1) {
    result.push(array[i] *2)
  }

  return result;
};


var map = function (array, transform) {
 var result = [];

 for (var i = 0; i < array.length; i += 1) {
   var item = array[i];
   var transformedItem = transform(item);
   result.push(transformedItem);
 }

 var numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9;]
 var roots = numbers.map(Math.sqrt);

 return result;
 return roots;
};
var x = 5;

var doSomeWork = function() {
  var b = 100 * 1000;
  var c = b * x;
  return c;
};

doSomeWork();


var count = 0;
setInterval(function () {
    console.log(count);
    count += 1;

}, 1000);

var x = 5;

var doSomeWork = function() {
  var b = 100 * 1000;
  var c = b * x;
  return c;
};

doSomeWork();
