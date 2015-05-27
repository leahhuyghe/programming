class Cookie

  #this method will be called when a new object is instantiated
  #ex. you will call:
  #Cookie.new

  def initialize(sugar_amount, flour_amount)
    @sugar_amount = sugar_amount
    @flour_amount = flour_amount
    @@color = "brown"
    puts "creating the cookie object..."
  end

  def sugar_amount
    @sugar_amount
  end

  attr_reader :flour_amount
  #this is equivalent to:
  # def flour_amount
  #   @flour_amount
  # end

  attr_writer :flour_amount
  #this is equivalent to:
  #def flour_amount
  #  @flour_amount
  #end

  attr_accessor :chip_count
  #this is equivalent to
  #attr_reader :chip_count
  #attr_writer :chip_count

  #this method is used to get the @sugar_amount variable value. This mthod is called a "getter" method.
  def sugar_amount=(new_amount)
    @sugar_amount = new_amount
  end

  #this method is used to set the @sugar_amount variable value
  #this method is called "setter" method
  def change_color(new_color)
    @@color = new_color
  end

  def color
    @@color #displays the color
  end

  def details
    puts "This cookie has #{sugar_amount}g of sugar and #{flour_amount}g of flour."
  #defining a method like this will make it an "instance" or "object" method
  #which means we can call this method on an instance(object) of the class
  #for instance we can do:
  # c = Cookie.new
  # c.bake
  end

  def self.info
    puts "I'm a Cookie class"
  end
  #this defines a class method, this method can be called directly on the class without having to instantiate an object. For instance we can call it: Cookie.info

  def bake
    "Baking..."
  end

def bake_and_eat
  bake
  eat #calling private method eat
end

#in this case every method that is defined after the 'private' keyword until the 'end' keyword will be treated as a private method. Other private and public methods in this class can call private methods, but not from outside this class.


private

  def eat
    "Nomming..."
  end


end
