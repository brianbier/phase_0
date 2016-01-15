# A Nested Array to Model a Bingo Board SOLO CHALLENGE


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # create variable that will hold any random letter in the word bingo
  # Create a variable that will hold one random number

# Check the called column for the number called.
  # Iterate through the board game to find the number within the arrays

# If the number is in the column, replace with an 'x'
  #IF the the column has the random number it will replace it with an X

# Display the board to the console (prettily)
  #Create a method that will display the entire board game into the console

# Initial Solution

# class BingoBoard
#     attr_reader :number, :letter_position, :letters

#   def initialize(board)
#     @bingo_board = board
#   end

#   def call
#     @letters = ["B","I","N","G","O"]
#     random_letter = ["B","I","N","G","O"].sample
#     @letter_position = letters.index(random_letter)
#     @number = 75
#     @combination = "#{random_letter}:#{number.to_s}" 
#   end

#   def check
#     @bingo_board.each do |array|
#       if array.is_a?(Array)
#          if array[@letter_position] == @number
#           array[@letter_position] = " X"
#         else
#           array[@letter_position]
#         end
#     end
#   end
#  end

#   def print
#     puts "Lets Play Bingo!"
#     puts ""
#     p "First Set is " + @combination
#     puts ""
#     puts "#{@bingo_board[0].join("|")}\n#{@bingo_board[1].join("|")}\n#{@bingo_board[2].join("|")}\n#{@bingo_board[3].join("|")}\n#{@bingo_board[4].join("|")}"
#   end

# end

# Refactored Solution
class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

end



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

p new_game = BingoBoard.new(board)
# new_game.call
# new_game.check
# puts ""
# new_game.print



#Reflection


