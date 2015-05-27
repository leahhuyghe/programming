puts "Hello! Please enter a language: "
language = gets.chomp

# add your case statement

case language
when "English" then puts "Hello"
when "French" then puts "Bonjour"
when "Spanish" then puts "Hola!"
else puts "What was that? "

end

#languages are case-sensitive. if the user enters 'english', it would give the error message. best to include .capitalize on the responses.
