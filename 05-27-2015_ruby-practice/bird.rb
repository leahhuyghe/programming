require "./animal.rb"

class Cat < animal
  def catch_and_eat
    rand >= 0.5 "Caught and ate bird" : "Failed to catch the bird"
  end
