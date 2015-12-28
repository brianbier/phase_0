#I need to ask the user for two different years to determine leap years
puts "Please enter a starting year and an ending year so that I can find the leap years in between"
puts "Year 1:"
year_1 = gets.chomp.to_i
puts "Year 2:"
year_2 = gets.chomp.to_i
#create a loop that iterates through each each year year 
counter = year_1
while year_1 <= year_2


#IF year is divisible by 4 remainder 0 then its a leap year 
if year_1 % 400 == 0 || year_1 % 100 == 0
  puts "#{year_1}"
#ELSIF year is not divisable by 100 but divisable by 400 it is a leap year
elsif year_1 % 4 == 0 
#ELSE nothing happens
puts "#{year_1}"
#END IF
end
#END IF
year_1 += 1
#END WHILE LOOP
end