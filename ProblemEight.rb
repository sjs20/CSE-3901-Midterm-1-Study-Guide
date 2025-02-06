# Checks if a phone number is in valid format.

def is_valid?(phone_number)
  format = /^\d{3}-\d{3}-\d{4}$/    # Regular expression for phone number format
=begin
^ asserts the position at the start of the string
\d{3} matches exactly any 3 digits
- matches the literal hyphen character
$ asserts the position at the end of the string
=end
  if phone_number.match(format)     # If the phone number matches the regular expression, return true
    return true
  else
    return false                    # If the number does not match, return false
  end
end

phone_numbers = ["740-516-7737", "7405167737", "74-516-7737"]
puts "Phone Numbers to test: #{phone_numbers}"

phone_numbers.each do |number|
  if is_valid?(number)
    puts "#{number} is a valid phone number"
  else
    puts "#{number} is NOT a valid phone number"
  end
end

