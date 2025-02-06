# Generate a random sequence of 8 lower case letters, without repetition

=begin
('a'..'z') is an end-inclusive range of lowercase letters
to_a converts the range into an array
sample(8) selects 8 unique random elements from the array
join converts the array into a single string
=end
def generate_random_sequence
  ('a'..'z').to_a.sample(8).join
end

puts "A random sequence of 8 lowercase letters: #{generate_random_sequence}"

