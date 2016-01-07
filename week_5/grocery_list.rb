# def create_list
#   puts "what is the name of the list?"
#   list_name = gets.chomp

#   hash = {"name"=>list_name,"item" =>{}}
# end

# def add_to_list
#   puts "What items do you want to add to the list?"
#   item_name = gets.chomp

# end

# def print_list(list)
#   puts ""
#   puts "\t#{list["name"]}"
#   puts ""
#   puts "Item: #{list["item"]}"
# end


# def remove(list)
#  puts "What Item do you want to remove?"
#  remove_name = gets.chomp
#   if remove_name == list["item"]
#     list["item"].delete!(remove_name)
#   end
#   puts list.inspect
# end



# list = create_list
# puts list
# list["item"]=add_to_list
# puts list
# print_list(list)
# remove(list)
# print_list(list)