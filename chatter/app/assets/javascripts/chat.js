$(document).ready(function() {

  var bodyField = $('textarea');

  var addMessage = function (body) {
    $('ul').prepend('<li>' + body + '</li>');
  }

  var isPresent = function (string) {
    return string.trim().length > 0; // trim takes away spaces from the beginning and the end
  }
  $('form').submit(function(event){
    event.preventDefault();
      var body = bodyField.val();

      bodyField.focus();

      if (isPresent(body)) { //if the body length is greater than 0,
        bodyField.val('');
        addMessage(body); //refocus the textarea
      }


            // $('ul').prepend('<li>' + body + '</li>'); is longform for:
          //  addMessage(body);
            // and it's being called through the var.

          //  bodyField.val(''); //sets the textarea to be empty (clear out)
        //    bodyField.focus(''); //focus the textarea

  });
});
