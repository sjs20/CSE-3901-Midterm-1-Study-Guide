# Reads in a list of names from stdin, then prints out the list in alphabetical order in all caps.

# Reads the names from stdin and puts them in an array
def read_names
  puts "Please enter a list of names (type 'done' when finished): "
  names = []
  while true
    name = gets.chomp                   # Read the keyboard input
    break if name.downcase == 'done'    # Exit loop if 'done' was entered
    names << name                       # Place each name in the array
  end
  return names
end

# Changes the names to all caps and sorts them alphabetically
def sort_names(names)
  names.map(&:upcase).sort              # Capitalizes each element in the array and sorts the values
end

names = read_names
sorted_names = sort_names(names)
puts "Sorted names in all caps: "
sorted_names.each { |name| puts name }  # Print each name in the array

