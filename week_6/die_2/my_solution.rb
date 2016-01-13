# Die Class 2: Arbitrary Symbols


# Pseudocode

# Input: Array of strings as input
# Output: One element in the array.
# Steps: 
#Shuffle the array and call any element in the array using the index. Refactor using sample


# Initial Solution

class Die
  def initialize(labels)
    if labels == []
      raise ArgumentError.new("Empty array")
    else
      @labels = labels
    end
  end

  def sides
    @labels.size
  end

  def roll
    #ran = rand(0...sides)
    #@labels[ran]
     # @labels.shuffle!
     # @labels[0]
     @labels.sample
  end
end

test = Die.new(['a','b','c','d'])
p test.roll #=> 'a'||'b'||'c'
p test.sides #=> 5





# Reflection
=begin 
What were the main differences between this die class and the last one you created in terms of implementation? 
Did you need to change much logic to get this to work?
The main difference with this die challenge was the use of an array. 
The idea was identical but the challenging part was trying to get a random letter from the array. 
I had to change a little bit of the roll logic to make the number to work. 
What I ended up doing is getting a random number from the 0 all the way to the end but excluding the array length. 
Then I would call on an array and apply that random number to it.

What does this exercise teach you about making code that is easily changeable or modifiable? 
It teaches me to keep my code as simple as possible. If I realize that I am having a hard time understanding my own code 
it’s probably too difficult for someone else to understand it. The simpler it is the easier it is to modify later. 
I also realize that sometimes its best to just use the methods directly and skip the refactoring portion.

What new methods did you learn when working on this challenge, if any?
I learned about two methods. One is the sample method and the other is the shuffle! Method. 
The sample method will display a random element form the array and the shuffle! 
Method is a destructive method and it will shuffle the array.

What concepts about classes were you able to solidify in this challenge?
I was able to solidify the concept of instance variables and how they can be called anything you like.
It is just common convention to name it after the arguments. I also solidify the concept of creating new objects using the classes


=end



