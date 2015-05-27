def multiply (a *b)
  result = a
  b.each {|x| result *=x}
  result
end

multiply(4,5,6,7,3)
multiply(4,5,6,7,3)

def largest(*nums)
#  nums.sort.last
  nums.max
end

puts largest 3,6,21,65,9,25,674
puts largest 3,6,21,65,9,25,674
