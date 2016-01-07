def groups(list_of_names)
  group_list = { "group1"=> [], "group2" => [],"group3" =>[],"group4"=>[]}

  list_of_names.shuffle.each do |name|

    if group_list["group1"].length < 5
      group_list["group1"].push(name)
    elsif group_list["group2"].length < 5
      group_list["group2"].push(name)
    elsif group_list["group3"].length < 5
      group_list["group3"].push(name)
    else
      group_list["group4"].push(name)
        
    end
  end
  puts group_list['group1']
  puts ""
  puts group_list['group2']
  puts ""
  puts group_list['group3']
  puts ""
  puts group_list['group4']
end

names = ["Brian Bier","Angela Flaquer","Genesis Bier","John Schwarts","Ana Garcia","Justin Bias","Alex Rodriguez","German Bier","Danelly Torres","David Woodruff","Jimmy Duraku","Scott black","Walter white","Brendan Smith","Frank Delpideo",]


groups(names)
