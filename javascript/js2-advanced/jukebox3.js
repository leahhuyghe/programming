var parseNote = function (noteString) {

 var noteParts = noteString.split('*');

 var note = {
   pitch: noteParts[0],
   beats: 1
 };

 if (noteParts.length == 2) {
   note.beats = noteParts[1];
 }

 return note;
};

parseNote("C#*2"); //=> { pitch: 'C#', beats: 2 }
parseNote("D"); //=> { pitch: 'D', beats: 1 }

Crowe Mitch [9:25 AM]
// Example usage

var parseNote = function (noteString) {

 var noteParts = noteString.split('*');

 if (noteParts.length == 2) {
   var notePitch = noteParts[0];
   var noteBeats = parseInt(noteParts[1]);
   var note = {
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


parseNote("C#*2"); //=> { pitch: 'C#', beats: 2 }
parseNote("D"); //=> { pitch: 'D', beats: 1 }
