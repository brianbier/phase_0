# Numbers to Commas Solo Challenge

# I spent [1.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? Integer or number
# What is the output? A string of that integer with commas
#ex in. = 1000
#ex out.= "1,000"
# What are the steps needed to solve the problem?
#first step is to seperate every digit by itself into and store it in a variable
# IF the variable is one single digit count 
  #return that number as a string
#ELSE IF the variable count is less than or equal to 3
  #return the 3 digits join into string
#ELSE IF the variable count has more than 3 digits but also less than 3 digits 
  #return variable[0] plus "," plus variable index from [1..3] join into a complete string.
  #ex in. 1000
  #ex out. 1,000
#ELSE IF variable count has more than 3 but also less than 6 digets
  #Return variable index[0..2] plus "," and variable index[3-5] and join as a string
# continue this until all test pass.


# 1. Initial Solution
def separate_comma(number)
  new_number = number.to_s.split("")
  new_number
  if new_number.count >= 1 && new_number.count <= 3
    new_number.join()
  elsif new_number.count > 3 && new_number.count <=4
    new_number[0] + "," + new_number[1..3].join()
  elsif new_number.count > 4 && new_number.count <=5
    new_number[0..1].join+ "," + new_number[2..4].join()
  elsif new_number.count > 5 && new_number.count <=6
    new_number[0..2].join+ "," + new_number[3..6].join()
  elsif new_number.count > 6 && new_number.count <=7
    new_number[0]+ "," +new_number[1..3].join()+ "," + new_number[4..6].join()
  elsif new_number.count > 6 && new_number.count <=7
    new_number[0]+ "," +new_number[1..3].join()+ "," + new_number[4..6].join()
  elsif new_number.count > 7 && new_number.count <=8
    new_number[0..1].join()+ "," +new_number[2..4].join()+ "," + new_number[5..7].join()
  end

end

separate_comma(19999999)










# 2. Refactored Solution




# 3. Reflection
