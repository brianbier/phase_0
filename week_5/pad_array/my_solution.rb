# # 0. Pseudocode

# # What is the input? The input is an array with a minimum-size and value
# # What is the output? The output was the same array with  the included value
#if any that totals the minimum-size
# # What are the steps needed to solve the problem?



# 1. Initial Solution


# # 3. Refactored Solution


# # 4. Reflection


# # # 1. Initial Solution
# def pad!(array, min_size, value = nil) #destructive
# # Your code here

# if array.length == min_size || min_size == 0
#   return array
# end

# if min_size > array.length
#   until array.length == min_size
#     array.push(value)
# #we are pushing to the same array
#   end
#  end
#  array
# end
# my_array = [1,2,3]
# array = [1,2,3,4,5]
# p pad!(my_array,  3)
# p pad!(array, 4)
# p pad!(my_array,  5, 'apples')


#REFACTOR DESTRUCTIVE

def pad!(array, min_size, value = nil) #destructive
# Your code here

if min_size > array.length
  until array.length == min_size
    array.push(value)
    #we are pushing to the same array
  end
 end
 array
end
my_array = [1,2,3]
array = [1,2,3,4,5]
p pad!(my_array,  3)
p pad!(array, 4)
p pad!(my_array,  5, 'apples')


######################################################

# def pad(array, min_size, value=nil) #non-destructive
# # Your code here

#  new_array = array.clone #sets the new array the same value of array but with a different object id essentially not affecting the original array

#  if array.length == min_size || min_size == 0
#    return new_array
#  end

# if min_size > array.length
#   until new_array.length == min_size
#     new_array.push(value)
#     #we are pushing to the new_array
#   end
# end

#  new_array
# end
# my_array = [1,2,3]
# array = [1,2,3,4,5]
# p pad(my_array,  3)
# p pad(array, 4)
# p pad(my_array,  5, 'apples')
# p my_array


#REFACTOR NON-DESTRUCTIVE
def pad(array, min_size, value=nil) #non-destructive
# Your code here

 new_array = array.clone #sets the new array the same value of array but with a different object id essentially not affecting the original array

if min_size > array.length
  until new_array.length == min_size
    new_array.push(value)
    #we are pushing to the new_array
  end
end

 new_array
end
my_array = [1,2,3]
array = [1,2,3,4,5]
p pad(my_array,  3)
p pad(array, 4)
p pad(my_array,  5, 'apples')
p my_array


# 4. Reflection
