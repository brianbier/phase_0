
#Attr Methods

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
  attr_reader :name
  
  def initialize
    @name = "Brian"
  end
end


class Greetings
  def initialize
    @greet = NameData.new
  end
  def print
    puts "Hello #{@greet.name}. It is great to meet you!"
  end
end

greeting = Greetings.new
puts greeting.print


# Reflection
=begin
# Release 1 

What are these methods doing?
These methods give the instance variables the ability to be displayed and be re-assigned.outside of the class.

How are they modifying or returning the value of instance variables?

They are modifying the variables with the methods that have the equal sign for example: change_my_name=(new_name) 
is the method that assigns the new value for name.

They are returning the instance variable names with the methods that do not take an argument and they only have the instance name within the method. 
  Example: 
  def what_is_name 
    @name
  end

# Release 2

What changed between the last release and this release?
They eliminated the method what_is_age for an attr_reader :age

What was replaced? 
They replace the the method for the attr_reader :age

Is this code simpler than the last?
It is not simpler but with practice you begin to remember what attr_reader will do
What I notice is that you write less code.

#Release 3

What changed between the last release and this release?
They eliminated the method that was assigning the new age when you changed it outside of the class.

What was replaced?
THey replace what_is_age=(new_age) method with an attr_writer : age

Is this code simpler than the last?
It is not simpler but with practice you begin to remember what attr_writer will do
What I notice is that you write less code.
=end

=begin
#Release 6

What is a reader method?
A reader method is attr_reader. Using a reader method you are allowing that particular instance 
variable to be accessed outside of the class but it cannot be changed. You are also written less code because it eliminates the method
  def name 
    @name
  end

What is a writer method?
A writer method is attr_writer. Using a writer method you are allowing that particular instance variable to be accessed outside of the 
class to be reassigned. You are also written less code because it eliminates the method 
  def name=(new_name)
    @name
  end

What do the attr methods do for you?
The attribute methods help you either read or write methods, which essentially saves you time writing unnecessary methods. 

Should you always use an accessor to cover your bases? Why or why not?
You shouldn’t always use an accessor because sometimes you want to keep things limited within your program so that they only have 
writing rights or reading rights. It helps keep your data secure and it prevents you from dealing with debugging problems.

What is confusing to you about these methods?
I did not find any of these methods confusing. The only problem I had a longer time wrapping my head around was release 5 when the first 
class was giving access to the second class. I was trying to figure out why this would be necessary when you can easily inherit a class to another?

=end