=begin
Given an array of (a mix of) integers and array of integers, where the (top level) integers are unique,
remove from the contained arrays all occurences of the top level integers.
=end

def remove_ints(list)
  numbers = list.select {|item|item.is_a?Integer}     # Select all the top level integers from list and copy them to nubmers array
  result = list.each do |array|                       # Iterate through each element in list as the variable array
    if array.is_a?Array then                          # If the element is an array, then iterate through that array
        array.delete_if do |element|                  # delete_if is an enumerator method that iterates over each element in an array
            numbers.include?element                   # If numbers contains the element in the array, it is deleted
        end
    end
end
  return result
end

list = [3, 5, [4,5,9], 1, [1,2,3,8,9]]
puts "The given array: #{list}"
result = remove_ints(list)
puts "The array after: #{result}"

