# I worked on this challenge [by myself, with: ].


# Your Solution Below
def valid_triangle?(integer1,integer2,integer3)
#first I need to understand what is an equilateral triangle which is all sides are the same
#IF all sides are equal then its an Equilateral
if integer1 == integer2 && integer3 == integer1
  return true
  
#ELSE IF two sides of a triangle are equal lenghts than its an isosceles triangle
elsif integer1 == integer2 && integer1 = integer3
  return true
  
#ELSE IF it is pythagorean theorem the square of both the first side and the second side must equal the total of the square of the third side
else
  return false
end
end




