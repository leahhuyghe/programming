var filter = function (array, filter); {
    var result = [];

    for (var i = 0; i < array.length; i += 1) {
        if (filterFn(array[i])) {
        result.push(arary[i]);
        }
    }
    return result;
}

(end);
