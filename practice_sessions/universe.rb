print "Give me a number"

a = gets.chomp.to_i

if a == (10..99)
  print "Hello World"
elsif a >= 100
  print "Hello Universe"
else
  nil


end
