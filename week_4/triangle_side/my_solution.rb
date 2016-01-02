# I worked on this challenge [by myself, with: ].
#WHEN PSUEDO CODING TRY AND WRITE THE PROBLEM YOU ARE TRYING TO SOLVE AND NOT THE CODE YOU NEED TO USE TO SOLVE THE PROBLEM.

def valid_triangle?(int1,int2,int3)
  #first I need to understand what is an equilateral triangle which is all sides are the same
  # IF any sides are zero length, it is not a valid triangle
  if int1 == 0 || int2 == 0 || int3 == 0
    return false
  #IF all sides are equal then its an valid Equilateral triangle
  elsif int1 == int2   && int3 == int1
    return true
    #ELSE IF two sides of a triangle are equal lengths than its an valid isosceles triangle
  elsif int1 == int2 || int1 == int3 || int2 == int3 
  # #ELSE IF it is pythagorean theorem the square of both the first side and the second side must equal the total of the square of the third side
    return true
  elsif int1 ** 2 + int2 ** 2 == int3 ** 2 ||
          int2 ** 2 + int3 ** 2 == int1 ** 2 ||
          int3 ** 2 + int1 ** 2 == int2 ** 2
    return true
  end
end

# # zero-length tests
# p valid_triangle?(0,0,0) == false # => false, because a triangle can't have 0-length sides
# p valid_triangle?(0,1,2) == false

# # equilateral tests
# p valid_triangle?(1,1,1) == true # => true, an equilateral triangle

# # isoceless tests
# p valid_triangle?(2,2,3) == true
# p valid_triangle?(2,3,2) == true

# # right angle tests
# p valid_triangle?(3,4,5) == true # => true, a right triangle
# p valid_triangle?(4,3,5) == true # => true, the same right triangle
# p valid_triangle?(5,3,4) == true # => true, the same right triangle

# # straight up bullshit test
# p valid_triangle?(10, 10, 100) == false #=> false, no such triangle exists
