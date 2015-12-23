puts "Hello Stranger? What is your first name?"
first_name = gets.chomp.capitalize
puts "What is your middle name?"
middle_name = gets.chomp.capitalize
puts "What is your last name?"
last_name = gets.chomp.capitalize
puts ""
puts "Great! It is a pleasure to meet you #{first_name} #{middle_name} #{last_name}."

puts "What is your favorite number?"
number = gets.chomp.to_i
bigger_number = number + 1
puts "A bigger and better favorite number is: #{bigger_number}"