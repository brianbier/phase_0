# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


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
game = GuessingGame.new(6)
p guess_returns = game.guess(3) #=> :low
p game.solved? #=> false
p guess_returns = game.guess(7) #=> :high
p game.solved? #=> false
p guess_returns = game.guess(6) #=> :correct
p game.solved? #=> true





# Reflection
