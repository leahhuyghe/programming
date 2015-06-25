$(document).ready(function() {

  $('#song-form').submit(function(e){
    var songString = $('input[name=notes]').val();
    var songName = $('input[name=name]').val();
    $('#song-queue').append('<li>'+ songName + '</li>');
    $('#song-queue').append('<li>'+ songString +'</li>');
    e.preventDefault();
    $('input[name=notes]').val("");
    $('input[name=name]').val("");
  });


  $('#play-button').click(function() {
    var topSong = function() {
      var currentName = $('li:first-child').html();
      var nowPlaying = $('#now-playing').html('Now Playing:' + currentName);
      nowPlaying;
      var stringSong = $('li').eq(1).html();
      var songCurrent = parseSong(stringSong);
      playSong(songCurrent, 1000, function(){
        $('li:first-child').remove();
        $('li:first-child').remove();
        $('#now-playing').remove();
        if ($('li').eq(0).length > 0) {
          topSong();
        } else {
          $('#play-button').slideDown();
          $('#now-playing').html('Enter a song to play!')
        };
      });
    };
    topSong();
    $('#play-button').slideUp();
  });
});
