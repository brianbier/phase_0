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
#     @number = rand(1..100)
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
  def call
    bingo_letters = ["B","I","N","G","O"]
    @letter = bingo_letters.sample
    @column_index = bingo_letters.index(@letter)
    @rand_number = rand(1..100)
  end

  def check_board
    @bingo_board.each do |array|
      if array.is_a?(Array)
        array[@column_index] == @rand_number ? array[@column_index] = " X" : array[@column_index]
      end
    end
  end

  def display_board
    puts "First set:\n#{@letter}:#{@rand_number}"
    puts ""
    puts "B "+ ""+ " I"+ " " +" N" + " " + " G" + " " + " O"
      @bingo_board.each do |array|
          puts array.join("|")
      end
  end

end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.call
new_game.check_board
new_game.display_board

#Reflection
=begin 
•How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
I think my pseudocoding needs improvement in regards to best practices. 
When I pseudocode I keep the code separate and it helps me understand the 
problem logically. When I read my pseudocode It gives me a better idea of what methods I can use. 
My only concern right now is how would this pseudo code look to  someone else. 
Will they be able to read my pseudocode and know what I am trying to build? Please leave me feedback on my pseudocode.

•What are the benefits of using a class for this challenge?
The benefit of using a class for this challenge is that I can create multiple board games 
and calling the methods within the class in order for the board game to operate correctly. This saves plenty of time.

•How can you access coordinates in a nested array?
You can access coordinates in a nested array by calling the array name with the appropriate 
index numbers for example:
    array = [1,2,3,4,5,[6,7,8,9],[10,11,12,13,14]] 
      
    array[6][2] #=> 7

•What methods did you use to access and modify the array?
I use the each method and then to access the inner arrays I used the .is_a? method to determine if the elements in 
the outer array are arrays. This gives me a better chance in iterating through each inner array.

•Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
I learned about the .index method which will display the index of the particular element in the array.
Also, the .each_with_index which will take an array and  create a hash with the element in the array 
as the key and the value as the index of each element in the array.

•How did you determine what should be an instance variable versus a local variable?
I determined what should be an instance variable base on what was going to be accessed in other methods within the class

•What do you feel is most improved in your refactored solution?
I try refactoring each method slightly. I try to make my methods easier to read rather than making single line methods. 
I do find myself having a hard time trying to refactor a solution. I don’t know why but I can’t find methods that can cut specific task in half. 
If you have any tips on trying to refactor please let me know.

=end

