def my_method
  x = rand(100)
  yield(x)if block_given?
end

my_method do |x|
  puts "the random number is #{x}"
end

my_method do |x|
  if x > 50
    puts "You Win!"
  else
    puts "You lose!"
  end
end

 
