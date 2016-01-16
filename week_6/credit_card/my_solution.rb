# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: A number (should be 16 digits)
# Output: A boolean, true or false

# Steps:
# Test if the number has less or more than 16 digits
# => IF SO, raise an error message
# IF NOT, initialize it as an instance variable (store it as a variable in the class)
# 
#create an empty container/list object
# iterate through each number in turn, adding it to the list object
# Iterate through the list, stopping at every other digit
#   create empty counter object, of the object at the index
#   double index 0
# => add 2 to counter
# => repeat for 2, 4, etc. Leave 1, 3, 5, etc, alone
# iterate through each number on the list
# => test if it's a one or two digit number
# => IF a two digit number
# =>    break apart the digits (like a word instead of a number)
# =>    return the sum of the two broken digits
# => IF a one digit number
# =>    No operations, keep going
# create an empty counter, set at 0
# iterate through the list
# => Add each number to the counter
#   return the sum of every number on the list
# test if the sum of every number divides by 10
# => IF yes
# =>   return true
#   IF no
#       return false

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard

  def initialize(card_number)
    split_card = card_number.to_s.split("")
    if split_card.length != 16 
      raise ArgumentError.new("Not a valid credit card")
    end
     @card_number = split_card.map(&:to_i)
  end

  def check_card
   new_array = []
    for index in (0...@card_number.length)
      if index.even? 
      new_array.push(@card_number[index] *= 2)
    # puts "At position #{index}: #{reverse[index]}"
      else
      new_array.push(@card_number[index])
      end
    end
     individual_card = new_array.join("").split('').map(&:to_i)

      sum = 0
      individual_card.each do |i|
        sum += i
      end

    if  sum % 10  == 0 
       true
    else
      false
    end

  end

end

new_card = CreditCard.new(4408041234567901)
new_card.check_card



#REFACTOR

class CreditCard

  def initialize(card_number)
    @card_number = card_number.to_s.split("").map(&:to_i)
    if @card_number.length != 16 
      raise ArgumentError.new("Incorrect digit count for #{card_number}")      
    end
  end

# http://ruby-doc.org/core-2.2.0/Enumerable.html#method-i-each_with_index
  def check_card
    formatted_cc_numbers = []
    @card_number.each_with_index do |item,index|
      if index.even?
        formatted_cc_numbers.push(item * 2)
      else
        formatted_cc_numbers.push(item)
      end
    end
    
    individual_card = formatted_cc_numbers.join("").split('').map(&:to_i)

   # sum = individual_card.inject{|sum,num| sum + num}
    sum = individual_card.inject(&:+)
    sum % 10  == 0 
  end
end

new_card = CreditCard.new(4408041234567901)
p new_card.check_card

#REFLECTION

=begin 
•What was the most difficult part of this challenge for you and your pair?
  The most difficult part was trying to get every other number in the array. 
  We continue to look at ways that could work only with a range but then we came across a for 
  loop that works although I was hesitant to use it because the for loop is not ruby convention.  
  I figure in the refactoring process I can swap it for an each iterator.

•What new methods did you find to help you when you refactored?
  I found a lot of methods that help me with refactoring. The first method was
  the .each_with_index, which iterates through an array and it increments or checks the index as well. 
  This worked perfect for my solution. I also learned about the inject method which will do a 
  particular action like add every number in order to find the total. Finally I started using the 
  short hand (&:to_i) and (&:+) which substitute the longer version of {|n| n.to_i} and {|n| n + n}

•What concepts or learning were you able to solidify in this challenge?
  I was able to solidify the concept of the each with index method. I couldn’t figure out how it actually 
  works since in the ruby doc they explain it well for a hash.  I have a better understanding of using Classes 
  and making programs work. I actually enjoy using classes to create small programs. Using classes seems natural 
  to me then when we first started last week.
=end