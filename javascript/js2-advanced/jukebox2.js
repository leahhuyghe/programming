// Example usage

var parseNote = function (noteString) {
  var noteParts = noteString.split('*');

  if (noteParts.length == 2){
    var notePitch = noteParts[0];
    var noteBeats = parseInt(noteParts[1]);
    return note = {
      pitch: notePitch,
      beats: noteBeats
    };
    return note;
  } else {
    var notePitch = noteParts[0];
    var noteBeats = 1;
    var note = {
      pitch: notePitch,
      beats: noteBeats
    };
    return note;
  }
};

parseNote("C#*2"); //=> {pitch: 'C#', beats: 2}
