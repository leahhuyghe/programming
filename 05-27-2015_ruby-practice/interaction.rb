require "./cat.rb"
require "./bird.rb"

bird = Bird.new("Tweetie")
cat = Cat.new("Timmy")

cat.catch bird
cat.eat
