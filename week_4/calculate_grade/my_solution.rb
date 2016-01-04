# # Calculate a Grade
# def get_grade(average)
#  case average

#   when (90..100) then return "A"
#   when (80..89) then return "B"
#   when (70..79) then return "C"
#   when (60..69) then return "D"
#   when (50..59) then return "F"
#   else
#     "That is not a grade"
#  end

# end
 
# Your Solution Below REFACTOR

def get_grade(letter_grade)
  return "A" if letter_grade >= 90
  return "B" if letter_grade >= 80
  return "C" if letter_grade >= 70
  return "D" if letter_grade >= 60
  return "F" if letter_grade < 60
end