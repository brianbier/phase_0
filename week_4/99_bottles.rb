
#Set Counter
number_of_beers = 99
#I will create a WHILE LOOP counting down the 99 bottles
while number_of_beers > 0
#First statement initiating total amount of beers
  puts "#{number_of_beers} bottles of beer on the wall, #{number_of_beers} bottles of beer."
#Reduce one bottle of beer from the total 
  number_of_beers -= 1
#IF total is equal to 0 bottles place new statement for the end of the song
  if number_of_beers == 0
    puts "Take one down and pass it around, no more bottles of beer on the wall."
    puts ""
    puts "No more bottles of beer on the wall, no more bottles of beer. \nGo to the store and buy some more, 99 bottles of beer on the wall."
#ELSE if not 0 continue with the song
else
  puts "Take one down and pass it around, #{number_of_beers} bottles of beer on the wall."
  puts ""
end
#END IF

end