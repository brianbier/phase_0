#PROGRAM WILL CONTINUE TO LOOP UNTIL THE LETTERS ARE CAPITALIZE ALSO THE YEAR CHANGES EVERYTIME ITS TRUE.

#Then Create a while loop that will iterate until the statement is true
while true 
  #create a statement asking user for what they want to tell grandma
#get the information entered and store it in a variable
  puts "Grandma is Deaf. Please shout!"
  puts "What do you want to tell grandma?"
  response = gets.chomp
#Now inside the while look create an 
#IF statement to determine what the user enter is capitalize.
  #true say no, not since 1938!
  if response == response.upcase
    random_year =  rand(1930..1950)
    puts "NO, NOT SINCE #{random_year}"
    break
#ELSE if not capitalize say say Huh?! SPEAK UP, SONNY!
  else
  puts "HUH?! SPEAK UP, SONNY!"
#END IF
  end
#END WHILE LOOP
end

###################
#HERE IS THE GRANDMA THAT DOES NOT ACCEPT ONE BYE
###################
# #Then Create a while loop that will iterate until the statement is true
# while true 
#   #create a statement asking user for what they want to tell grandma
# #get the information entered and store it in a variable
#   puts "Grandma is Deaf. Please shout!"
#   puts "Say BYE to grandma three times?"
#   response = gets.chomp.to_s
# #Now inside the while look create an 
# #IF statement to determine what the user enter is capitalize.
#   #true say no, not since 1938!
#   new_response = "BYEBYEBYE"
#   if response.upcase == new_response
#     random_year =  rand(1930..1950)
#     puts "NO, NOT SINCE #{random_year}"
#     break
# #ELSE if not capitalize say say Huh?! SPEAK UP, SONNY!
#   else
#   puts "HUH?! SPEAK UP, SONNY!"
# #END IF
#   end
# #END WHILE LOOP
# end