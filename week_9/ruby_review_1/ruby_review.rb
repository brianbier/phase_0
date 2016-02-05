# 2. Review the simple assert statement

# def assert
#   raise "Assertion failed!" unless yield
# end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
# method is created
#   within the body of the method, an error message is defined
#   if the statement is false, raise the error

#  the first time the assert method is called, it passes a block testing what name is equal to
  # if the string that is being tested is equal to the string assigned to name, it will return nil
  # if the string that is being tested is not equal to the string assigned to name, it will raise the assertion, returning the error message


# 3. Copy your selected challenge here
# require_relative 'my_solution'
# 1. Initial Solution
class Die
  
  def initialize(sides) # creates the object 
   unless sides > 1
      raise ArgumentError.new("That argument is less than 1")
   else
     @sides = sides 
    end
  end
  

  def sides # produce the input number 
    @sides
  end

  def roll # p random number; random method goes here 
    rand(1..@sides)
  end
end 
 
def assert
  raise "Assertion failed!" unless yield
end

# def assert_side actual,expected,message
#   puts message
#   puts actual == expected
# end

# def assert_roll actual,expected, message
#   puts message
#   puts actual == expected
# end
# side = Die.new(4) # Die is name of class
# assert_side side.sides,4, "Side of the dice is true"
# assert_side side.sides,8, "Side of the dice is false"
# sides = side.roll 
# assert_roll sides,sides,"Dice roll number is true"

# assert_roll side.roll,side.roll,"Dice roll number random so its false"

assert{side.roll == sides}
assert{side.roll == side.roll}

side = Die.new(4) # Die is name of class
assert{ side.sides == 4}  #=> true
assert{ side.sides == 8} #=> false
sides = side.roll 
assert{sides == sides} #=> true
assert{side.roll == side.roll} #=> false

# 4. Convert your driver test code from that challenge into Assert Statements
=begin
What concepts did you review in this challenge?
I review the concept of creating assert statements and how they function exactly as a 
test for your code. It helps you keep a good idea of what your methods are doing and also find bugs faster
What is still confusing to you about Ruby?
I am not too confuse so far with ruby but I think the concept of the rspec is something that 
looks very confusing when I look at it. It helps me solve a problem but I have a hard time trying 
to understand why they wrote the test that particular way. I know we have not touched on the rspec 
but it is something I'm looking forward to learning during phase 1.
What are you going to study to get more prepared for Phase 1?
I am going to review classes to get more prepared and pseudocoding challenges in order to break them down. 
It will help me analyse and write better code.
=end

