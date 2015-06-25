$(document).ready(function () {
  $('ul').sortable({
    update: function() {
      console.log('updated');

      var data = $('ul').sortable('serialize');
      console.log(data);
    };
  });
});
