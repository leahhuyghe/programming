require "./catbird.rb"

attr_accessor :caught_bird


class Cat < Animal

  def catch(bird)
    if rand >= 0.5
      @caught_bird          = bird
      @caught_bird.alive    = false
      puts "Caught the bird"
    else
      puts "Missed the bird"
    end


    def eat
      if @caught_bird
        puts "eating bird #{caught_bird.name}"
        @caught_bird = nil

      else
        puts "still hungry"
  end
