# def groups(list_of_names)
#   group_list = { "group1"=> [], "group2" => [],"group3" =>[],"group4"=>[]}

#   list_of_names.shuffle.each do |name|

#     if group_list["group1"].length < 5
#       group_list["group1"].push(name)
#     elsif group_list["group2"].length < 5
#       group_list["group2"].push(name)
#     elsif group_list["group3"].length < 5
#       group_list["group3"].push(name)
#     else
#       group_list["group4"].push(name)
        
#     end
#   end
#   puts group_list['group1']
#   puts ""
#   puts group_list['group2']
#   puts ""
#   puts group_list['group3']
#   puts ""
#   puts group_list['group4']
# end

# names = ["Brian Bier","Angela Flaquer","Genesis Bier","John Schwarts","Ana Garcia","Justin Bias","Alex Rodriguez","German Bier","Danelly Torres","David Woodruff","Jimmy Duraku","Scott black","Walter white","Brendan Smith","Frank Delpideo",]


# groups(names)

#REFACTOR SOLUTION

def groups(list_of_names)
  puts list_of_names.length
  if list_of_names.length < 3 || list_of_names.length % 5 == 0
     group_list = list_of_names.shuffle.each_slice(5).to_a
     number = 1
     group_list.each do |name|
      puts "Group #{number}"
      puts name
      puts "-------------"
      number += 1
    end
  else
     puts "That is not an even number."
  end

end

names = ["Brian Bier","Angela Flaquer","Genesis Bier","John Schwarts","Ana Garcia","Justin Bias","Alex Rodriguez","German Bier","Danelly Torres","David Woodruff","Jimmy Duraku","Scott black","Walter white","Brendan Smith","Frank Delpideo"]

groups(names)


#REFLECTION
=begin
What was the most interesting and most difficult part of this challenge?
The most interesting part of this challenge was that I was able to create it on my own without 
following any test given. The most difficult part of the challenge was trying to get the names of 
people into different groups. The most difficult part of the challenge was not having any guidance at all. 
I typically rely on the rspec to guide me as to what I am trying to solve.

Do you feel you are improving in your ability to write pseudocode and break the problem down?
My pseudocode is improving and I realize that I enjoy pseudocoding on my notepad rather than on the computer. 
It helps me keep both ruby code and pseudocoding separate. I think most importantly is that I am getting better 
in thinking logically through a problem. That has been one of my challenges so far. 

Was your approach for automating this task a good solution? What could have made it even better?
My first approach was very manual and I realize that it wouldn’t work if someone includes a group of 100 names. 
I then came across an enumerable method .each_slice which use the same array and creates the groups that I need 
within the array. What could make my program better is if two people are left on its own they can be included in any other 
group without creating an additional group of two.

What data structure did you decide to store the accountability groups in and why?
I use an array to store the names because they are random individual names that are not representing anything within their order. It wouldnt
make sense to use a hash because I am not associating any data together.
In my initial solution I use a hash to create the multiple groups and inside the hash I had invidual empty arrays.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
During refactoring I learned about the .each_slice method which slices the elements inside the array by a given argument. 
This saved me a whole lot of time because I don’t have to create multiple empty groups.
=end