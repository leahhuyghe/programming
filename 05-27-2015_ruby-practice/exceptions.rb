#exceptions.rb

begin
  10 / 0
rescue => e
  puts e.message
  puts "you can't divide by 0!!"
end
