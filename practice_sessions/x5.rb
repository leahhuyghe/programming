#ask the user for a number, then multiply that number by 5. Now add that new number to itself.

print "Please enter a number: "

number = gets.chomp.to_i

x = number * 5
y = x + x

print y
