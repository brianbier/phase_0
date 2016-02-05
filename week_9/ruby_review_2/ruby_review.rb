# Reverse Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
# input: Take a sentence as a string
# output: reverse each word in the sentence and returns a string with reverse words
# create a method that takes one parameter
# take the string and split them into individual words
# Use a method to reverse each word in the array of words.
# Use a method to iterate through the array and reversing each word one at a time.
# return the array of words joined together into one.


# Initial Solution
def reverse_words(string)
  return string if string == ''
  words = string.split(" ")
  words.map! do |word|
    word.reverse
  end
  words.join(" ")
end

# p reverse_words("brian")
# p reverse_words("brian bier")
# p reverse_words("I love to eat")


# Refactored Solution
def reverse_words(word)
  word.split(" ").map!{|word| word.reverse}.join(" ")

end
p reverse_words("")
p reverse_words("brian")
p reverse_words("brian bier")
p reverse_words("I love to eat")


# Reflection
=begin 
What concepts did you review in this challenge?
I reviewed how to iterate through an array using the map! method. 
I remember what the destructive and none destructive methods do. 

What are you going to study to get more prepared for Phase 1?
I am going to review some information on enumerable so that 
I have a better idea of what type of methods are there and 
how they work with arrays and hashes.
=end
