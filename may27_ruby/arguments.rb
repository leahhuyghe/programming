def sum(a, b = 0)
  return  a + b

end

puts sum(2,3)
puts sum 5,6
puts sum 3


#greeting the user by name - write a method that takes one argument and then greets that name.

def greeting(name)
  puts "greetings, #{name}!"
end


puts "what is your name?  "
user_name = gets.chomp.capitalize
greeting(user_name)
