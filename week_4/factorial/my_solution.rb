# # Factorial

# #Your Solution Below
# def factorial(number)
#   # satisfy condition where 0! = 1
#   if number == 0
#     1
#   # satisfy condition where number > 0
#   else
#     # make an array to store all numbers from 1 --> number
#     # array = (1..number)
#     # start = 0
#     # while start < number do
#     #   start = start + 1
#     #   array.push(start)
#     # end

#     # make a new array to store products
    

#     # initialize product at 1
#     product = 1

#     # for each number in array, store the product as (product * number)
#     # and push the new product to new_array
#     (1..number).each do |num|
#       product = product * num
      
#     end

#     # return the integer stored in the last index of new_array
#     product
#   end
# end
#REFACTOR

def factorial(number)
#Return 1 for any number that is 0
return 1 if number == 0 
# This is where the new number will be store
total = 1
# Create a range and iterate through each number and then assign that number to total
(1..number).each do |num|
  total = total * num
end
# return total so it can display the last number.
total
end






















