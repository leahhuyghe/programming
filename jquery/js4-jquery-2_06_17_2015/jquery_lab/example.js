$('button').html('playing...');
playSong(notes, 400);

setTimeout(function() {
  $('button').html('Play');
}, 300);
