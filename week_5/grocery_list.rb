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

def create_list
  puts "what is the name of the list?"
  list_name = gets.chomp

  hash = {"name"=>list_name,"item"=> []}
end

def add_to_list
  puts "What items do you want to add to the list?"
  item_name = gets.chomp
  puts "How many do you want to add"
  total = gets.chomp.to_s
  return items_to_add = {"name"=>item_name,"quantity"=>total }

end

def print_list(name_of_list)
  puts ""
  puts "\t\t#{name_of_list["name"]}"
  puts ""
  name_of_list["item"].each do |key|
    puts "Item: #{key["name"]} \t\t\t" + "Quantity: #{key["quantity"]}"
  # puts "Item: #{list["item"]}"
  end
end


def remove(name_of_list)
  puts "what do you want to remove?"
  item_to_remove = gets.chomp
  name_of_list["item"].each do |key|
    if key["name"] == item_to_remove
      puts "will remove" 
      key["name"].delete!(item_to_remove)
    else
      puts "No item found. Enjoy your shopping!"
    end
  end

end

name_of_list = create_list
puts name_of_list
item_to_add = add_to_list
name_of_list["item"].push(item_to_add)
item_to_add = add_to_list
puts item_to_add.inspect
name_of_list["item"].push(item_to_add)
puts name_of_list
print_list(name_of_list)
remove(name_of_list)
print_list(name_of_list)










