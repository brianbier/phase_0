# # 0. Pseudocode

# # What is the input? The input is an array with a minimum-size and value
# # What is the output? The output was the same array with  the included value
#if any that totals the minimum-size
# # What are the steps needed to solve the problem?


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
=begin
• Were you successful in breaking the problem down into small steps?
 Yes breaking the program down into small steps was easy but it turns 
 out that the small steps for us did not have enough details when applying 
 the concept in ruby and deciding how to do specific things with ruby.

• Once you had written your pseudocode, were you able to easily translate it into code? 
 What difficulties and successes did you have?
 Writing the pseudocode in paper rather than your computer helps analyze
 the process better. The problem is since I don’t know the ruby language
 very well. It takes longer for me to find specific methods or task that
 I will essentially use in the program.

• Was your initial solution successful at passing the tests? 
 If so, why do you think that is? If not, what were the errors 
 you encountered and what did you do to resolve them?
 It definitely did not pass the first 40 times! It took us a few tries
 and even a second day to look back at the problem and figure out why 
 it fails. The error message we were having was for the non destructive 
 and the object id. We didn’t quite understand the error message until we 
 tried looking for ways to change the object id number. I never thought 
 the concept of object id would be so important. Turns out the use of the 
 method. clone will take one item and create a different object id of that item.

• When you refactored, did you find any existing methods in Ruby to clean up your code?
 I did not find any methods that could make the program simpler.
 I did however, remove unnecessary conditions from the program and 
 created a single if statement and a loop.

• How readable is your solution? Did you and your pair choose descriptive variable names?
 Our program is very readable and simple to understand. We tried to create
 all the variable names as descriptive to what we were trying to do.

• What is the difference between destructive and non-destructive methods in your own words?
 In my own words the difference with destructive and non-destructive is that
 destructive methods will change the specific element structure similar to 
 using the special methods that end with a bang (!). The non-destructive 
 methods will not change the elements data structure.
 Ex destructive. .map! .reverse! .replace 
 Ex non-destructive. .map .reverse .length
=end