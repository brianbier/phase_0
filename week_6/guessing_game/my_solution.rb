# Build a simple guessing game

# Pseudocode

# Input:Take an integer as the correct number
# Output: Needs to output either High || low || correct depending on the correct number

# Steps:
# Set up an Until Loop
# until the number guessed is equal to the correct number it should output :correct
#   IF the guess number is lower than the correct number it should output :high
#   ElSE it should output :low
# If solve the :correct number has to equal the the guess number


# Initial Solution
class GuessingGame
  def initialize(answer)
    # Your initialization code goes here
    @answer = answer
  end

  def guess(guess)
    @guess = guess
    until @guess == @answer
      if @guess > @answer
        return :high
      else
        return :low
      end
    end
  return :correct
  end

  def solved?
      @guess.eql? @answer #=> REFACTOR 
  end
end
# game = GuessingGame.new(6)
# p guess_returns = game.guess(3) #=> :low
# p game.solved? #=> false
# p guess_returns = game.guess(7) #=> :high
# p game.solved? #=> false
# p guess_returns = game.guess(6) #=> :correct
# p game.solved? #=> true



# YOU CAN PLAY THE GUESSING GAME WITH SOMEONE ELSE

puts "What number do you want your friend to guess?"
number = gets.chomp.to_i
game1 = GuessingGame.new(number)
until false
puts "What do you think the number is?"
guest_number = gets.chomp.to_i
if number == guest_number
  true  
  puts "Great job your number is #{game1.guess(guest_number)}"
  break
else
 puts "Your number is to #{game1.guess(guest_number)}"
end
end




# Reflection
=begin
 •How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
   It represents the real world similar to the video that we watch. The easiest way to compare is that the class is the blueprint, 
   which in this case could be a simple ball, and within that ball there are methods that give the ball specific abilities. 
   The instance variable is the set number we want the wall to bounce. Since instance variables can be accessed by any method in 
   the class you can pass the variable to a bounce method which will cause the ball to bounce x number of time.
 
 •When should you use instance variables? What do they do for you?
   Instance variables should be used when you are going to use the variable within multiple methods. 
   Creating instance variables allow you to have access to that particular variable outside of its own original scope.
 
 •Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
   Flow control allows you to manipulate the path you want your program to take. I did not struggle with flow control but I did 
   continue receiving errors and it was because of the implicit return. My loop continues the entire time so I had to manually 
   type the return keyword.
 
 •Why do you think this code requires you to return symbols? What are the benefits of using symbols?
   To my understanding using symbols saves memory in your program and that symbols are used every time you need internal 
   identifiers. Symbols are immutable which means they will never have their value changed.Try playing the game with someone. I was 
   able to get the program to work on its own. There is still more room for improvement. Let me know if you have any ideas.
=end