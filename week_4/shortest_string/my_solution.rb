# Shortest String

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
  # Your code goes here!
#Need to iterate through each string in the the array and count the length
#Compare the first index of the array with the other index to determine if 
#the first index is lower or higher than the second index and so on.

#if there is nothing in the array it should return nil
#  if list_of_words == ['']
#   return ""
# elsif list_of_words.length == 1
#   return list_of_words[0]
# else
  shortest_word =list_of_words.sort { |a,z| a.length <=> z.length }
  return shortest_word[0]
# end
end
