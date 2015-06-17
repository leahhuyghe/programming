  $(document).on('ready', function() {

  // Your Code Here
  $('.shape').on('click', function () {
    // this is the handler, in here.
    console.log('Shape clicked!');
  });

  $('.shape.blue.circle').on('mouseenter', function () {
    console.log('Blue circle go away');
  });

  $('.shape.blue.circle').on('mouseleave', function () {
    console.log('Blue circle, goodbye!');
  });

  $('.tr').on('mouseenter', function () {
    $(this).attr('class', 'highlight');
  });

  $('#button1').on('click', function () {
    $('.shape').remove();
  });

  $('#button2').on('click', function () {
    $('#button2').attr('disabled', true)
  });

  $('#button').on('click', function () {
    console.log('Button 3 was clicked!');
  });

  // more exercises

  $('#link').on('mouseenter', function () {
    console.log('Your mouse entered a link area to: ' + .href);
  });

  $('#button').on('click', function () {
    $('#button').attr('Button ' + '#button' ' was clicked!')
  })



});
