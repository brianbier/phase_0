# Leap Years

# def leap_year?(integer)

# #IF a year is divisable by 4 and has no remainders it is a leap year
# if integer % 4 == 0 && integer % 100 != 0
#   return true
# #ELSE IF a year is divisable by 400 then it is a leap year
# elsif integer % 400 == 0
#   return true
# #ELSE IF a year is divisable by 4 and 100 but not by 400
# elsif integer % 4 == 0 && integer % 100  == 0 && integer % 400 != 0
#   return false

# #ELSE IF a year is not divisable my 4
# elsif integer % 4 != 0
#   return false

# end
# end

def leap_year?(year)
  return true if year % 4 == 0 && year % 100 != 0
  return true if year % 400 == 0
  return false if year % 4 == 0 || year % 100 == 0 || year % 400 != 0
end












