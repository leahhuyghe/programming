class String
  puts "Give me a sentence"
  reversed = gets.chomp

  puts reversed.split(' ').reverse.join(' ')
end
