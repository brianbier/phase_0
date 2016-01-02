#Create a program that takes in as many words that we want a
# and when we leave it blank and hit enter it will return all
# all the words in alphabetical order

#Ask how many words we want to type into array
puts "How many words do you want to include in the array?"
counter = gets.chomp.to_i
array = Array.new
puts ""
while counter > 0
puts "Enter desired word:"
word = gets.chomp
array.push(word)
counter -= 1
end
#THEN sort the words in the array in alphabetical order
puts 
puts array.sort



