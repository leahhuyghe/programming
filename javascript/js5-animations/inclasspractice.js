// Write an array that takes a number and then doubles it and pushes it into another array.

var doubleIt = function(array) {
    var result = [];
    for ( var i = 0, i < array.length, i += 1 ) {
        result.push( array[i] * 2);
    }
    return result;
};

doubleIt([1,2,3,4]);

var multiply = function (a, b) {

}
