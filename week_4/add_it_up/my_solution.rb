# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: Is an ARRAY of integers or floats
# Output: Sum of all the numbers
# Steps to solve the problem.
#Create a method call Total taht takes a single argument
#Return the sum of all integers in the array

def total(array)
if array.length < 1
  return 0
end
sum = 0
new_array = []
array.each do |number|
  sum += number
  new_array.push(sum)
end
return new_array[-1]
end
 # total([2,3,4,5])



# 1. total initial solution



# 3. total refactored solution



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: A string off arrays
# Output:A single string
# Steps to solve the problem.


# 5. sentence_maker initial solution

def sentence_maker(string_array)
new_string = ""
new_array = []
string_array.each do |string|
  if string != string_array[-1]
    new_string += string.to_s + " "
  else
    new_string += string.to_s
  end
  
  new_array.push(new_string)
end
return new_array[-1].capitalize + "."
end
#puts sentence_maker(["hello", "how", "are", "you"])

# 6. sentence_maker refactored solution
