print "Which coffee shop would you like to go to? "

order = gets.chomp

case

when order = "Starbucks" then puts "Grande Latte"
  when order = "Tim Hortons" then puts "Double Double"
  when order = "Blenz" then puts "Medium Coffee"
    else puts "I don't know this shop"

end
