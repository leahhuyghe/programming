$(document).ready(function() {

  var UPDATE_INTERVAL = 2000; // ms between updates.

  var bodyField = $('textarea');


  var renderMessage = function (msg) {
    var html = '<li data-message-id="' + msg.id + '">' + msg.body + '<i>x</i></li>';
    return html;
  };

  var addMessage = function (msg) {
    var html = renderMessage(msg);
    $('ul').prepend(html);
  };

  var isPresent = function (string) {
    return string.trim().length > 0;
  };

  var refreshMessages = function () {
    $.get('/messages', function (messages) {
      $('ul').html('');

      for (var i = 0; i < messages.length; i += 1) {
        addMessage(messages[i]);
      }
    });
  };

  var saveMessage = function (body) {
    $.post('/messages', {body: body}, refreshMessages);
  };

  $('form').submit(function(event) {
    event.preventDefault();
    var body = bodyField.val();

    bodyField.focus();

    if (isPresent(body)) {
      bodyField.val('');
      saveMessage(body);
    }

  });

  refreshMessages();

  setInterval(refreshMessages, UPDATE_INTERVAL);

  $(document).on('click', 'i', function() {
    var listItem = $(this).parent();

    listItem.slideUp();

    var id = listItem.data('message-id');

    $.ajax({
      url: '/messages/' + id,
      method: 'DELETE'
    });

  });


  // TODO: Submit when the enter key is pressed.


});
