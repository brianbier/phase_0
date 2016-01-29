# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode
=begin
input: An Array
output: An array substituted by the words fizz || buzz || fizzbuzz
Steps
create a method that takes an array as an argument
Create an new empty array

Iterate through the argument array (Use a method)
  IF element inside array divided by 3  and 5 has a remainder of 0 
      substitute that element with the word FizzBuzz AND SEND IT to the empty array
  ELSIF element divided by 3 has remainder 0
      Substitue that element with the word Fizz and send to empty array
  ELSIF element divided by 5 has remainder 0
      Substitue that element with the word Buzz and send to empty array
  ELSE
      just send the element into empty array
  END
=end



# Initial Solution

# def super_fizzbuzz(array)
# new_array = []

#   array.each do |number|
#     if number % 3 == 0 && number % 5 == 0
#       new_array.push("FizzBuzz")
#     elsif number % 3 == 0
#       new_array.push("Fizz")
#     elsif number % 5 == 0
#       new_array.push("Buzz")
#     else
#       new_array.push(number)
#     end
#   end

# return new_array
# end

# super_fizzbuzz([3,4,15,5,7,8,1100])


# Refactored Solution
def super_fizzbuzz(array)

  array.each_with_index do |number, index|
      if number % 15 == 0
         array[index] = "FizzBuzz"
       elsif number % 5 == 0
         array[index] = "Buzz"
       elsif number % 3 == 0
         array[index] = "Fizz"
       else
         array[index] = number
       end
  end

return array

end

# super_fizzbuzz([3,4,15,5,7,8,1100])







# Reflection