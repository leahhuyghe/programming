
names = ["tien", "leah", "luke","josh","steve","karen","bran"]

group_size = 9

if group_size > names.length
puts "fail"
end

arrays = Array.new(group_size) { [] }
names.shuffle.each_with_index do |name, i|
	n = i % group_size
	arrays[n] << name

end

puts arrays.inspect
