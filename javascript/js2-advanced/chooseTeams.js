var chooseTeams = function (players, numberOfTeams) {
  var randomizedPlayers = _.shuffle(players);

  var teams = []
  for (var i = 0; i < numberOfTeams; i += 1)

  for (var i = 0; i < randomizedPlayer.length; i+= 1) {
    var teamIndex = i % numberOfTeams;
    teams[teamIndex].push(randomizedPlayer[i]);

  }
  return teams;
};

chooseTeams(['Mitch', 'Zac', 'Leah', 'Sandra', 'Tien', 'Thomas', 'Jenny', 'Murphy', 'Michael', 'Eric', 'Hannah']);
