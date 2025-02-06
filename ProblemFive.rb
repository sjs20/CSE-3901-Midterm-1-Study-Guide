# Given an array of integers, produce the array that includes only the even elements, each squared.

def even_squared(int_array)
  result = []
  index = 0
  while index < int_array.length do                                                     # Iterate through the length of the array
    result << (int_array[index] * int_array[index]) if int_array[index] % 2 == 0        # Push the squared number into the array if it is divisible by 2
    index += 1
  end
  result
end

int_array = [1,2,3,7,7,1,4,5,6,2]
puts "Array given: #{int_array}"
result = even_squared(int_array)
puts "Array after: #{result}"

