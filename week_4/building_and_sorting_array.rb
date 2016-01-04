#Create a program that takes in as many words that we want a
# and when we leave it blank and hit enter it will return all
# all the words in alphabetical order

#Ask how many words we want to type into array
# puts "How many words do you want to include in the array?"
# counter = gets.chomp.to_i
# words_array = []
# puts ""
# until counter == 0
# puts "Type the desired word:"
# word = gets.chomp
# words_array.push(word)
# counter -= 1
# end
# #THEN sort the words in the array in alphabetical order
# puts 
# puts words_array.sort

 words_array = []
while true

 puts "Type the desired word"
 word = gets.chomp.downcase
 if word == ""
 break
 else
 words_array.push(word)
 end
end
puts words_array.sort