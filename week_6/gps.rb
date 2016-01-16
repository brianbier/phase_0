# Your Names
# 1)
# 2)

# We spent [#] hours on this challenge.
# Create a feature that lets us know what to make with left over ingredients
# Raise an Argument error if the item to make is not in library
# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  menu = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  if menu.include?(item_to_make)
      serving_size = menu.values_at(item_to_make)[0]
      remaining_ingredients = num_of_ingredients % serving_size
  else
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
# Hash[menu.sort_by{|k,v|v}.reverse]

  puts "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"

    if remaining_ingredients == 0
    elsif remaining_ingredients % 5 == 0
     p "You have #{remaining_ingredients} leftover ingredients. Suggested baking items: #{remaining_ingredients/5} cakes"
    elsif remaining_ingredients % 7 == 0
      p "You have #{remaining_ingredients} leftover ingredients. Suggested baking items: #{remaining_ingredients/7} pies"
    else 
     p"You have #{remaining_ingredients} leftover ingredients. Suggested baking items: #{remaining_ingredients} cookies"
  end

end

 serving_size_calc("pie", 7)
serving_size_calc("pie", 8)
serving_size_calc("cake", 21)
serving_size_calc("cake", 7)
serving_size_calc("cookie", 1)
serving_size_calc("cookie", 10)
serving_size_calc("THIS IS AN ERROR", 5)
#  Reflection
=begin 
• What did you learn about making code readable by working on this challenge?
I learned that it takes longer to understand other people’s bad code before 
I could execute my idea. I also learned how to quickly pick up on code that does not look well and needs improvement.

• Did you learn any new methods? What did you learn about them?
I learned a new technique with a particular method. The values_at method will look for the value at a 
particular key and return the value but its output is an array of that value. If you want just the value itself you will include [0] to output the first value. Example
    array = { array: [1,2,4],contant: 33}
    array.values_at(:array)[0][0] #=> 1

• What did you learn about accessing data in hashes? 
I did not learn any other new features other than the one above.

• What concepts were solidified when working through this challenge?
I have to say that the use of the values_at was a method that I didn’t quite know how to use until this method.
=end
