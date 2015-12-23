##What does puts do?

Puts mean put string to the console. It is very useful when returning and outputting.  If you use Puts in your code it will return nil and print the output to the console in a new line. What puts does is create a new blank line right after the output. 

See the Example below:

```Ruby
def num
counter = 0
while counter < 10
puts counter
counter += 1
end
end
num 
0
1
2
3
4
5
6
7
8
9
⇨ nil
```

##What is an integer? What is a float?

An Integer is any number that is a whole number.  
Example:

```Ruby
1,2,3,4,5,6,7,8
```
A float is any number that has a decimal.
Example:

```Ruby
1.2, 2.1, 3.1, 4.1, 5.1, 6.1, 7.1
```

##What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

The difference between a float and an integer division is that integers will always return a whole number and if it cannot divide that number it will round down. When you divide using floats you will get a decimal number but it does not make any sense to divide with decimals, so you will never use them. An example of using an integer to divide would be by saying that you have 2 kidneys and there are 3 people that need one. 3/2 = 1.5 you are not going to give someone half of your other kidney. So it makes sense to give your kidney to one lucky person only and keep the other for yourself.

[Check out the section for 2.5 mini challanges here](calc.rb)

---
#Exercises

[4.2.1 Defining Variables Link](defining_variables.rb)

[4.2.2 Simple Strings Link](simple_string.rb)

[4.2.3 Local Variables and Basic Arithmetical Operations Link](basic-math.rb)


##How does Ruby handle addition, subtraction, multiplication, and division of numbers?

Ruby handles arithmetic operations very well in the sense that it is very similar to the eye. The only difference is the use of the **Modulus %.** Modulus will divide the numbers and provide you with the remainder of the numbers if any.
|Operators| Description|
| + | Addition - Adds values on either side of the operatora
| - | Subtraction - Subtracts right hand operand from left hand operator
| * | Multiplication - Multiplies values on either side of the operator |
| / | Division - Divides left hand operand by right hand operand |
| % | Modulus - Divides left hand operand by right hand operand and returns remainder |
| ** |Exponent - Performs exponential (power) calculation on operators |

##What is the difference between integers and floats?

An Integer is any number that is a whole number.  
Example:

```Ruby
1,2,3,4,5,6,7,8
```
A float is any number that has a decimal.
Example:

```Ruby
1.2, 2.1, 3.1, 4.1, 5.1, 6.1, 7.1
```

##What is the difference between integer and float division?

The difference between a float and an integer division is that integers will always return a whole number and if it cannot divide that number it will round down. When you divide using floats you will get a decimal number but it does not make any sense to divide with decimals, so you will never use them. 

##What are strings? Why and when would you use them?

Strings are just groups of letters and numbers that you put together to write something out. They must be between single or double quotes. You typically use a string to output some text to the console so that the user can see it and answer it. You can also combine strings with other strings. 

```Ruby
puts “This is a string and I will be making 2”

puts “Here is the 2nd string. “ + “ Strings can be really useful to display text or capture text”
```

##What are local variables? Why and when would you use them?

Local variables are variables that are created in your text file in which store a particular text, formula, or integer. They can only be access within that text file and  take up memory in your file. We would use local variables when we do not want to either continue writing the same formula over and over or typing the same text over and over. Using local variables can save you time in your code makes your code look cleaner. 

```Ruby
puts “This is a string and below are local variable”

first_name = “Brian”

puts “welcome #{name}, How are you today?”

```
 
##How was this challenge? Did you get a good review of some of the basics?

This challenge was a good review on the basic tasks that ruby can do. Looking forward to what comes up in the next challenges.
