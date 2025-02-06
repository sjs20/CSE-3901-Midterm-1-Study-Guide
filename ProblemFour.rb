# Given a string, produces an array of indices where ‘#’ occurs in the string.

# This is method one:
text = 'a#asg#sdfg#d##'                     # Assign text a random string
print "String = #{text}\n"                  # Print the given string
result = []                                 # Initialize result, this will be the array of indices where '#' occurs
index = 0                                   # Start index at first array index
while index < text.length do                # Loops through the entire string
  result << index if text[index] == '#'     # Push the index number into the array if the character is '#'
  index += 1                                # Increment the index each loop to travserse the string
end
print "Result = #{result}\n"                # Print the array of indices

puts"-------------------------------"       # Prints a line of dashes

# This is method two:
text = 'a#asg#sdfg#d#'                      # Assign text a random string
print "String = #{text}\n"                  # Print the given string
result = []                                 # Initialize result, tis will be the array of indices where '#' occurs
text.chars.each_with_index do |char, index| # Converts text into array of chars, and iterates over that array
  result << index if char == '#'            # Pushes the index of each char that is a '#'
end
print "Result = #{result}\n"                # Print the array of indices

