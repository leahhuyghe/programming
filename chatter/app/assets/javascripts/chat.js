$(document).ready(function() {


  var bodyField = $('textarea');

  var addMessage = function (body) {
    $('ul').prepend('<li>' + body + '</li>');
  };

  var isPresent = function (string) {
    return string.trim().length > 0; // trim takes away spaces from the beginning and the end
  };

  var refreshMessages = function () {
    $('ul').html('');
    $.get('/messages', function (data) {
      for (var i = 0; i < data.length; i += 1) {
        var msg = data[i];
        addMessage(msg.body);
      };
    });
  };

  var saveMessage = function (body) {
    $.post('/mesages', {body: body});
  };

  $('form').submit(function(event){
    event.preventDefault();
      var body = bodyField.val();

      bodyField.focus();

      if (isPresent(body)) { //if the body length is greater than 0,
        bodyField.val('');
        addMessage(body); //refocus the textarea
        refreshMessages(); //add messages to the page and remove existing msgs
        $.post('/messages', {body: body});

  };

      });
    refreshMessages();

// setInterval(refreshMessages, 2000);

});
