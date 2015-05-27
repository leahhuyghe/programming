class User

  attr_accessor :first_name
  attr_accessor :last_name

  def initialize(first_name, last_name)
    @first_name, @last_name = "first name", "last name"
  end

  def full_name
    @first_name, @last_name
    puts "your full name is #{first_name} #{last_name}."
  end

end
