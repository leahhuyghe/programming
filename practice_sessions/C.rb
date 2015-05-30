print "Feed me some letters, bake me some words: "

string = gets.chomp.upcase
if string.slice("C") == nil
  puts "There is no C"
else
  puts "Yes it has C"
end
  
