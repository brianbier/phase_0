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

p separate_comma(10000000)



# 2. Refactored Solution




# 3. Reflection

# • What was your process for breaking the problem down? What different approaches did you consider?
# I use my pseudocode when deciding how I was going to approach this problem. I decided to split the number into an array and count how big the array was. If the array had more than 3 and less than 4 I would consider that number in the thousands place and I will print the first number in index 0 adding a comma to it and the rest of the numbers in the array will be joined.
# • Was your pseudocode effective in helping you build a successful initial solution?
# Yes My pseudocode was very helpful in building this solution.
# • What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
# I had a hard time trying to refactor this solution. I know my solution is not as dynamic because if someone enters a extremely large number for what ever reason my code will not function at all.
# • How did you initially iterate through the data structure?
# I did not iterate through the number. I use flow control to print what I needed.

