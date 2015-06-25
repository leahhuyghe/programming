var sayAShout = function(x) {
  console.log("ajsdjakshd")

};

var me = {
  name: 'Leah',
  age: '23',
  shout: sayAShout

};

me.shout();

var football = {
  color: 'brown',
  shape: 'ovally',
  inflationPercentage: 0.53,
  toss: function () {
    console.log('woooosh...');
  }
};

var car = {
    speed: 'fast',
    name: 'toyota',
    drive: function() {
        console.log("scree33eEeeeech");
    },
    stop: function() {
    console.log(this.speed);
    }
};

console.log("the car is going " + car.speed(), car.drive());

a = [1, 2, 3, 4]
a.map { |item| item > 2}
