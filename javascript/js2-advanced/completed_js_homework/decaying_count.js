// I got help with this.

var run = function(start, stop){// Start is 1 and stop is 10
  var currentPos = start;
  var loop = function(){
    setTimeout(function(){
      document.write(currentPos + "<br/>");
      if(++currentPos <= stop)
        loop();
    }, (currentPos - 1) * 1000);
  }
  loop();
}
run(1, 10);
