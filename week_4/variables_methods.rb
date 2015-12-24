puts "Hello Stranger? What is your first name?"
first_name = gets.chomp.capitalize
puts "What is your middle name?"
middle_name = gets.chomp.capitalize
puts "What is your last name?"
last_name = gets.chomp.capitalize
puts ""
puts "Great! It is a pleasure to meet you #{first_name} #{middle_name} #{last_name}."

puts "What is your favorite number?"
number = gets.chomp.to_i
bigger_number = number + 1
puts "A bigger and better favorite number is: #{bigger_number}"

=begin
1. How do you define a local variable?

Local variables begin with lowercase letters, underscores, or digits. Ex. X, string, abc, start_value, are all valid local variables. 
Then they are followed by an equal sign declaring what content they are going to store.
Example: my_local_variable = “I enjoy local variables”

2. How do you define a method?

In my own words I would have to say that a method is a particular action that can be called on using ruby built in methods. 
However, you can choose to create your own methods by starting with the word def, which stands for define. 
Followed by any lowercase word that you will be naming your particular method. 
When you create a method it gives you more flexibility as to what you are looking to do in your program. 
Check out the example below:

def my_own_method # This is how you create your own methods
  puts “My name is brian bier”.upcase # This is how you call a method on that particular string
end


3. What is the difference between a local variable and a method?

The difference between a local variable and a method is that a local variable will store a particular solution or string of information in which you can use later on in time. 
The method will do a particular action in which you can call on to a particular local variable as many times as you want. Example below

local_variable = “Ruby is awesome”  #This will hold a string inside the variable called local_variable
local_variable.length  #The method length is called on the local variable which will provide the length of the string 

4. How do you run a ruby program from the command line?

In order to execute your ruby program you must type in your command line: Ruby file_name.rb 

5. How do you run an RSpec file from the command line?

In order to test your work in ruby you must use the RSpec file. 
You execute it in the command line by typing: rspec file_name_rspec.rb

6. What was confusing about this material? What made sense?

I had a pretty good understanding of the entire material so far. 
The only questions I have is further down the line how will I know what methods to create or use in order to solve a problem. 
I am particularly confused on that. For example in the videos that we watch they were looking for palindromes. 
My question is why did they decide to do it in that particular way. What was their thought process?

4.3.1 Solution
https://github.com/brianbier/phase_0/blob/master/week_4/address/my_solution.rb


4.3.2 Solution
https://github.com/brianbier/phase_0/blob/master/week_4/math/my_solution.rb

=end