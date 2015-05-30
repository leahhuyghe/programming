class Bone

  #for our use case we won't likely need to change the ize after we initialize so a reader is sufficient at this point
  attr_reader :size

  def initialize(size)
    @size = size
  end


end
