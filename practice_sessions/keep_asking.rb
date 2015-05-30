my_array = []

print "Feed me wordbits "

answer = gets.chomp.downcase

while answer != "exit"
  my_array << answer
  puts "Feed me more wordbits "
  answer = gets.chomp.downcase
end


if
  answer == "exit"
  puts "you've entered #{answer.count} inputs."
end
