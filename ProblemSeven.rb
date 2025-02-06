# Given an array of strings, compute the frequency of the occurences of each word

def count_occurences(strings)
  frequency = Hash.new(0)   # Creates a hash with a default value of zero for each key
  strings.each do |word|    # Iterate over each item in strings as variable word
    frequency[word] += 1    # Increment the word's hash if it appears
  end
  return frequency
end

strings = ["car", "van", "car", "car"]
puts "The given array: #{strings}"
result = count_occurences(strings)
puts "The result: #{result}"

