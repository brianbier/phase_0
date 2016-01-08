#Pseudocode
# What is the input? Array of numbers or strings
# What is the output?  Array of the most frequent values ("mode")
# What are the steps needed to solve the problem?
# Define a method
# Create a hash and assign each key a default value of 0
# Iterate through the array and save each item in the array # to the hash
# IF the number in the array is equal to the key, it should increment that key by 1.
# Then iterate through the hash 
# IF the value  
# which number occurs most frequently in the array.
# 1. Initial Solution
def mode(array)
  hash = Hash.new{|key, value| key[value] = 0}
    array.each do |number|
    hash[number] += 1
    end
  array = []
    hash.each do |key, value| 
      if value == hash.values.max
        array.push(key)
      end
    end
    p hash
  p array
end

mode(['apple', 'orange', 'banana', 'apple',"orange"])






# 3. Refactored Solution
# 4. Reflection
=begin
Which data structure did you and your pair decide to implement
and why?
Were you more successful breaking this problem down into 
implementable pseudocode than the last with a pair? 
What issues/successes did you run into when translating your
pseudocode to code?
What methods did you use to iterate through the content? Did
you find any good ones when you were refactoring? Were they 
difficult to implement?
=end