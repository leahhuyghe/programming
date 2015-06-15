hash = {'key1' => 'value1', 'key2' => 'value2'}

def values(x)
values = Array.new()
x.each { |key, value| values << value }
values
end

def keys(x)
keys = Array.new()
x.each { |key, value| keys << key }
keys
end

print keys(hash)
print values(hash)
