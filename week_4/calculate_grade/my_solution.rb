# Calculate a Grade
def get_grade(average)
 case average

  when (90..100) then return "A"
  when (80..89) then return "B"
  when (70..79) then return "C"
  when (60..69) then return "D"
  when (50..59) then return "F"
  else
    "That is not a grade"
 end

end
 
# Your Solution Below