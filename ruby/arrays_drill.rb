def build_array(x,y,z)
  my_array = [x,y,z]
end

p build_array(1,2,3)

def add_to_array(array1, x)
  array1 << x
end

p add_to_array([1,2], "a")
p add_to_array([],"a")
p add_to_array([1,2,3,4,5,6], 7)


one_array = []
p one_array

one_array = one_array + ["string",2,3,4,5]
p one_array

one_array.delete_at(2)
p one_array

one_array.insert(2, 100)
p one_array

one_array.shift
p one_array

puts "The array includes 100: #{one_array.include? 100}"

another_array = ["string1", "string2"]

my_array = one_array + another_array
p my_array
