
# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
#PSUEDO CODE

#Need to identify the smallest integer inside an array
#I will have to sort the array from smallest to greatest
#THEN I will input the first idex of the array

def smallest_integer(number)
  # return nil if number == []
  # if number.join().to_i == 0
  #   return 0
  # else
  #   lowest_number = number.sort
  #   return lowest_number[0]
  # end
#REFACTOR
    lowest_number = number.sort
    return lowest_number[0]
end


# smallest_integer([-10, 0, 10])

















