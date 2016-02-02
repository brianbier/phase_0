# Method to create a list
# input: string of items separated by spaces ("example: carrots apples cereal pizza")
# steps: To create an empty hash that we can fill  keys and values
  #break list apart with spaces. ruby doc
  #write each word to the list as a key.
  # set default quantity
  #Then have default quantyties set as values
  # print the list to the console [can you use one of your other methods here?] Using Puts
# output: It should be an Hash.

def create_list(string_list)
  answer_hash = Hash.new(0)
  list_array = string_list.split(" ")
  list_array.each do |item|
    answer_hash[item] = 1
  end
  return answer_hash
end

# Method to add an item to a list
# input: item name, grocery list(as a hash), and optional quantity
# steps:
#
# IF optional quantity exists
#   add grocery item to list as a grocery item
#   add optional quantity to the list as a quantity
# ELSE
# => add grocery item to list as a grocery item
#   add 1 as a quantity
# output: return a hash you just added to
def add_item(item, grocery_list, quantity = 1)
  grocery_list[item] = quantity
  return grocery_list
end
# Method to update the quantity of an item
# input: item, grocery list, quantity
# steps:
# add item and quantity to the list - the hash will auto update
# return list
# output: grocery list with updated listing
def update_quantity(item, grocery_list, quantity)
  grocery_list[item] = quantity
  return grocery_list
  end
# Method to remove an item from the list
# input: A list and the name of an item
# steps: Search through our list for the item
# Find item on the list
# delete the item from the list.
# Return List
# output: Just the list
def remove_item(item, grocery_list)
  grocery_list.delete(item)
  return grocery_list
end
# Method to print a list and make it look pretty
# input: It should be a grocery list
# steps:
# Loop through the list pairing by pairing
# For each pairing on the hash print item and then the quantity
# output: It would output a seperate item and quantity as a string
def print_list(grocery_list)
  grocery_list.each do |item,quantity|
    puts "Buy: #{quantity} #{item}"
  end
end
grocery_list = create_list("carrots apples cereal pizza")
puts grocery_list
# add_item("Lemonade", grocery_list, 2)
# puts grocery_list
# add_item("Tomatoes", grocery_list, 3)
# puts grocery_list
# add_item("Onions", grocery_list, 1)
# puts grocery_list
# add_item("Ice Cream", grocery_list, 4)
# puts grocery_list
# remove_item("Lemonade", grocery_list)
# puts grocery_list
# update_quantity("Ice Cream", grocery_list, 1)
# puts grocery_list
# print_list(grocery_list)
# #REFACTORED CODE
# def create_list(string_list)
#   answer_hash = Hash.new
#   list_array = string_list.split(" ")
#   list_array.each do |item|
#     answer_hash[item] = 1
#   end
#   p answer_hash
# end

# def add_item(item, grocery_list, quantity = 1)
#   grocery_list[item] = quantity
# end

# def update_quantity(item, grocery_list, quantity)
#   grocery_list[item] = quantity
#   end

# def remove_item(item, grocery_list)
#   grocery_list.delete(item)
# end

# def print_list(grocery_list)
#   grocery_list.each do |item,quantity|
#     puts "Buy: #{quantity} #{item}"
#   end
# end
=begin
What did you learn about pseudocode from working on this challenge?
I learned that when you create detail and specific pseudocode can help you a long way.

What are the tradeoffs of using Arrays and Hashes for this challenge?
I decided to use a hash to store the grocery list because I was associating an item with a quantity. 
In a hash the order will not matter because I can call any item by just knowing the keys. An array would not work 
as easy because arrays are order list and they don’t have any association with one another.

What does a method return?
The return method will output any evaluation that you choose but it will not display it on the console. 
I prefer using the implicit return because it is less words to type and ruby already knows that it will output the last item in the method.

What kind of things can you pass into methods as arguments?
You pass any numbers or strings and other methods as arguments.

How can you pass information between methods?
You pass information by calling the method as an argument of another method.

What concepts were solidified in this challenge, and what concepts are still confusing?
Initially I had a hard time trying to wrap my head around this challenge because 
I thought we were going to ask the user for information rather than us manually providing driver code. 
The concepts that were solidified in this challenge was the storing and deleting of hashes and how to take an 
array and store each array item into a hash with a set value.
=end
