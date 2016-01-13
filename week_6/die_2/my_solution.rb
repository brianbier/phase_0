# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


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
p test.roll
p test.sides
# Refactored Solution








# Reflection




