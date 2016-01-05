# Add it up!

# Input: Array with integers
# Output: Sum of all integers in the array

#Create a method call Total that takes a single argument
#Return the sum of all integers in the array

# def total(array)
# if array.length < 1
#   return 0
# end
# sum = 0
# new_array = []
# array.each do |number|
#   sum += number
#   new_array.push(sum)
# end
# return new_array[-1]
# end
 # total([2,3,4,5])


#REFACTOR PSUEDOCODE
#I would take one number at a time and assign it to a variable.
#THEN I will add that variable with the next number inline and now the new number will be store in that variable
# continue this process until the last number is added and return the last number which is the total

def total(array)

array_total = 0

array.each do |num|
  array_total = array_total + num
end

array_total
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: A string off arrays
# Output:A single string
# Steps to solve the problem.

# def sentence_maker(string_array)
# new_string = ""
# new_array = []
# string_array.each do |string|
#   if string != string_array[-1]
#     new_string += string.to_s + " "
#   else
#     new_string += string.to_s
#   end
  
#   new_array.push(new_string)
# end
# return new_array[-1].capitalize + "."
# end
#puts sentence_maker(["hello", "how", "are", "you"])

#REFACTOR PSEUDOCODE
# Input: An array full of strings
# Output:A single string sentence out of the array

#FIRST I will take out all the string from the array and add them to a new variable. I will do this by using an iterator
#Then I will return the variable holding the strings and capitalize it and add a period to the end.

def sentence_maker(array)
  join_string = array.join(" ")
  join_string.capitalize + "."
end

