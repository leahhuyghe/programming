print "Give me a number"

a = gets.chomp.to_i

b = a ** 3

c = a ** 2

if b % 3
  print b
elsif c % 2
  print c
else
  print a

end
