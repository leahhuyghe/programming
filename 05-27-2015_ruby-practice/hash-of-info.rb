=begin
#Solution 1

users = []

personal_info = {}

print "What is your first name: "
first_name = gets.chomp
personal_info["first name"] = first_name

print "What is your last name: "
last_name = gets.chomp

print "What is your city: "
city = gets.chomp

print "What is your age: "
age = gets.chomp

personal_info = {"first name" => first_name, "last name" => last_name, "age" => age, "city" => city }

users << personal_info

personal_info.each do |key, value|
  puts "Your #{key} is #{value}"
end
=end

#Solution 2

names = {"first name" => "", "last name" => "", "city" => "", "age" => ""}

names.each do |k, v|
  print "Whats your #{i}? "
names[i] = gets.chomp.capitalize

names.each do |k, v|
  puts "Your #{k} is #{v}"
end
end
