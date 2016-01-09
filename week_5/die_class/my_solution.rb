# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: create an object and assign it a number
# Output: random number between 1..input_number
# Steps: 
# Create a class Then create an initialize method that create an instance variable 
# Then pass an flow crontrol statement that will raise an argument if number is less than 1
# Finally I will display the number and will generate a random number using the method rand
# 

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
 
side = Die.new(4) # Die is name of class
p side.inspect
p side.sides
p side.roll

# 4. Reflection
=begin

• What is an ArgumentError and why would you use one?
An ArgumentError occurs when the arguments entered are wrong from what it expected.

• What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
The only ruby I implemented in the code was the use of rand. In order to create a random number from 1 and the side.

• What is a Ruby class?
A class in ruby is a blueprint that can then help with the creation of individual objects. 
When you create a class you can create different methods inside that class. After you can create your object from 
that class and use all those methods with the object you just created. For example 12345 is an object and the class 
of those numbers is a fixnum. Now you can use all the methods allowed within the fixnum class on the 12345.

• Why would you use a Ruby class?
I would use a class to create specific objects in ruby that I want them to behave in a specific way.

• What is the difference between a local variable and an instance variable?
A local variable  an only be access within a scope where it was defined and an instance variable can be 
access out of the scope where it was defined but within the entire class only.

• Where can an instance variable be used?
An instance variable can be access anywhere within the class that it was defined. 

=end