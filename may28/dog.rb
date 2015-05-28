class Dog

  def initialize(color, type)
    @color, @type = color, type
    @bones        = []
  end

  def give(bone)
    # ensuring that the dog has less than 3 bones in order to accept a new one
    if @bones.length < 3
      # add the bone to the bones array
      @bones << bone
    else puts "Too many bones!"
  end
end

  def eat
    if @bones.length == 0
      puts "There are no bones!"
    else
      #in this case, @bones.pop will give us back a "bone" object the "bone" object has a "size" attribute.
    puts "I ate #{@bones.pop.size} bone!"
   #.pop gives back and removes the last element in an array
  end
end


end
