#blocks.rb
def greetings
  puts "hello"
  yield
  puts "hi"
end

greetings do
puts "hey"
end

=begin

the result:
hello
hey
hi
 this is as if I altered the greetings method to become like:
 puts "hello"
 puts "hey"
 puts "hi"

 =end
