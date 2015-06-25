var ask = function() {
  var string = prompt("Give me a string")
};

for (var i = 0; i < string.length; i +=1) {
  if (string[i] == "a") {
    count += 1
  };
  alert(count + "a's")
};


var number = function(number) {
  var ask = prompt("Give me a  number")
  return 0
};


var wordLengths = function (sentence) {
  var words = sentence.split(' ');

  var result = {};

  for (var i=0; i < words.length; i+=1) {
    var word = words[i];
    result[word] = word.length;

  }
  return result;
};

wordLengths('A big dog ate my lunch my')
