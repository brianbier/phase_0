
def group_names(array_of_names)
group_1=Array.new
group_2=Array.new
group_3=Array.new

array_of_names.each do |name|
  if group_1.length < 5
    group_1.push(name)
  elsif group_2.length < 5 
    group_2.push(name)
  else
    group_3.push(name)
  end

  
end
puts "Here is group 1: #{group_1}"
puts ""
puts "Here is group 2: #{group_2}"
puts ""
puts "Here is group 2: #{group_3}"
puts ""
end

list_of_names = ["Brian Bier","Angela Flaquer","Genesis Bier","John Schwarts","Ana Garcia","Justin Bias","Alex Rodriguez","German Bier","Danelly Torres","David Woodruff","Jimmy Duraku","Scott black","Walter white"]

group_names(list_of_names)