#define first...
def palindrome(word)
  word.downcase!

  if word.reverse == word
    puts "#{word} is a palindrome!"
  else
    puts "#{word} is not a palindrome!"
  end
end

#then write the application...
puts "feed me a word"
word = gets.chomp


#remember to call the variable!
palindrome(word)
