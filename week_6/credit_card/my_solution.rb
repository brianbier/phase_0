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
    p individual_card = @card_number.join("").split('').map(&:to_i)

    sum = 0
      individual_card.each do |i|
        sum += i
      end
       p sum

    if  sum % 10  == 0 
      p true
    else
      p false
    end

  end

end

new_card = CreditCard.new(4408041234567901)
new_card.check_card


#array.inject{|sum,num| sum + num}

# array = [1, 0, 9, 7, 6, 5, 4, 3, 2, 1, 4, 0, 8, 0, 4, 4] 
# p reverse = array.reverse

# new_array = []
# for index in (0...reverse.length)
#   if index.even? 
#   new_array.push(reverse[index] *= 2)
#   # puts "At position #{index}: #{reverse[index]}"
# else
#   new_array.push(reverse[index])
# end
# end
# p yes = reverse


# sum = 0
# reverse.each do |i|
#   sum += i
# end
# p sum
# puts sum /10  # 6 



# p yes.inject{|sum,num| sum + num}





# Reflection

farm_animals = ['cow','pig','horse','dog','sheep']

# current_index = 0
# farm_animals.each do |animal|
#   p animal
#   p current_index
#   current_index += 1
# end

# http://ruby-doc.org/core-2.2.0/Enumerable.html#method-i-each_with_index

# farm_animals.each_with_index do |animal, index|
#   p animal
#   p index
# end




class CreditCard

  def initialize(card_number)
    @card_number = card_number.to_s.split("").map(&:to_i)
    if @card_number.length != 16 
      raise ArgumentError.new("Incorrect digit count for #{card_number}")      
    end
  end

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

    
    #inject method
    # sum = 0
    # individual_card.each do |i|
    #   sum += i
    # end
    sum = individual_card.inject{|sum,num| sum + num}
    sum = individual_card.inject(&:+)
    sum % 10  == 0 
  end
end

new_card = CreditCard.new(4408041234567901)
p new_card.check_card

