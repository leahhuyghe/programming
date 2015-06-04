for (var i = 100; i > 0; i -= 1) {

  console.log(i + " bottles of beer on the wall");
  console.log(i + " bottles of beer");
  console.log("Take one down, pass it around");

  if (i == 1) {
    console.log("No bottles of beer on the wall");
  } else {
    console.log((i-1) + " bottles of beer on the wall");
  }

}
