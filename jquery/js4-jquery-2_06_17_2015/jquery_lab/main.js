$(document).on('ready', function() {


  $('a').click(function (e) {
    e.preventDefault
    var url = $(this).attr('href');
    console.log('clicked link to: ' + url)
  })

  //Shrink Ray!!

   $('.shape').on('click', function() {

     var shape = $(this);

     if (shape.hasClass('large')) {
       // Remove large class and add medium class
       shape.removeClass('large');
       shape.addClass('medium');
     } else if (shape.hasClass('medium')) {
       // Remove medium class and add small class
       shape.removeClass('medium');
       shape.addClass('small');
     } else {
       // The shape is small
       // Hide the shape
       shape.hide();
     }

   });





   $('#orange-container').on('click', function () {
     console.log('black square was clicked');
   })


   $(document).on('keypress', function(e) {
    if (e.which == 32) {
      // Spacebar was pressed.
      var html = '<div class="small blue circle shape"></div>';
      $('#green-container').append(html);
    }
  });

  $(document).on('keypress', function (keypress) {
    if (keypress == keypress) {
      $('.shape').toggle();

    }
  })

});
