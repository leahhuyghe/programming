=begin

1
my_array = [1,4,5,23,14,"Hello there", false, nil]
Should return:
[23,14]
=end


my_array = []

puts "Give me some numbers and letters/words"

my_array = gets.chomp

if my_array.include? "1" || "2"
  puts "" 
