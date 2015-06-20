




//The vault

var correctPassword = "opensesame";
var secret = '712';

var willPlay = confirm("Welcome to the safe. Do you want to open it?")

if (willPlay) {
  var guessedPassword = prompt("Welcome to the Safe. What is the password?");

  if (guessedPassword === correctPassword) {
   alert("The secret is " + secret);
  } else {
   alert("Wrong! Stop trying to hack me!");
  }
} else {
    alert("OK, fine, don't play then...");
  }

// Password Checker

var password = prompt("Enter a password no longer than 12 characters and no shorter than 8 characters.")
  if (password.length > 12 ) {
  alert("Too long!")
} else if (password.length < 8) {
  alert("Too short!")
} else {
  alert("Mmm, Just Right!")
}


// Correct number

var correctNumber = 23;

var guess = parseInt(prompt("Guess a number: "));
if (guess > correctNumber) {
  alert("Your guess is too big.");
}  else if (guess < correctNumber) {
    alert("Your guess is too small.")
}  else {
  alert("Great job!")
  break;
}
