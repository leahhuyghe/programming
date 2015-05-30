car_year = gets.chomp.to_i

puts "future car"   unless car_year <= 2015
puts "new car"      unless car_year <= 2000 || car_year > 2014
puts "old car"      unless car_year <= 1980 || car_year > 2000
puts "super old" unless car_year > 1979

if car_year > 2014
  puts "Car is future"
elsif car_year > 2011
  puts "car is new"
elsif car_year > 2005
  puts ""
end
