puts "Give me a book name"

books = gets.chomp.downcase

my_array = []
until books == "exit"
  my_array << books
  books = gets.chomp.downcase
end

puts my_array
