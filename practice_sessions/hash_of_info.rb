

puts "What's your first name?"
first_name = gets.chomp

puts "What's your last name?"
last_name = gets.chomp

puts "What city were you born in?"
city = gets.chomp

puts "How old are you?"
age = gets.chomp

info = {"First Name" => first_name, "Last Name" => last_name, "City of Birth" => city, "age" => age}

info.each do |k, v|
  puts "Your #{k} is #{v}"
end
