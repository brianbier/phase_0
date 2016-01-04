# puts "What\'s your full name?"
# name = gets.chomp

# puts "Great that is a very cool name. Welcome #{name}"

# puts "What is your favorite number"
# answer = gets.chomp.to_i
# new_number = answer + 1
# puts " Now you have a bigger and better favorite number: #{new_number}."

# puts "Hello Boss?"
# puts "Boss: What do you want?"
# answer = gets.chomp

# puts "what do you mean '#{answer}'! You are fired!!".upcase
content = ["chapter1: Getting Started","page 1","Chapter2: Numbers","page 9","Chapter3: Letters","page 13"]
puts content[0] + content[1].rjust(20)
puts content[2] + content[3].rjust(28)
puts content[4] + content[5].rjust(29)