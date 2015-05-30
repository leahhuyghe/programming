puts "Feed me an integer "

num = gets.chomp.to_i


b = num
a = 0

while a <= num
  b.times { print " " }
  a.times { print "O "}
  puts " "
  b -= 1
  a = a+1
end
