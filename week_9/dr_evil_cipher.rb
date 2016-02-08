# Cipher Challenge


# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

# def dr_evils_cipher(coded_message)
#   # The line below will split the string message into an array.
#    input = coded_message.downcase.split("") 
#   decoded_sentence = []
#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
#             "g" => "c",
#             "h" => "d",
#             "i" => "e",
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}
# # Iterating over the split array of decoded message
#   input.each do |x|
#     # Not sure what the false is for
#     found_match = false 
#     #The cipher is iterating through the hash only by its keys
#     cipher.each_key do |y|
#       #It is now comparing if the first letter in the input array is equal to the first key.
#       if x == y 
#         #IF its true then it sends the cipher letter into the empty array at the top.
#         decoded_sentence << cipher[y]
#         #This seems like it is a loop for some reason and it breaks to go to the next letter. It breaks to go back out to the next letter in the split array.
#         found_match = true
#         break  
#         #IF any of the letters in the array are the ones below it should return a space.
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" 
#         decoded_sentence << " "
#         found_match = true
#         break
#         #This is checking if there is a number from 0 - 9 in the code and if it does it send that number up to the array.
#       elsif (0..9).to_a.include?(x)
#         decoded_sentence << x
#         found_match = true
#         break
#       end
#     end

#     if not found_match  # What is this looking for?
#       decoded_sentence << x
#     end
#   end
#   decoded_sentence = decoded_sentence.join("")
#   #What is this method returning?
# end

# Your Refactored Solution

# def dr_evils_cipher(coded_message)
#   input = coded_message.downcase.split("") 
#   decoded_sentence = []
#   shift = 4
#   input.map do |letter|
#     new_letter = letter.ord - 4
#     if letter == "@" || letter == "#" || letter == "$" || letter == "%"|| letter == "^" || letter == "&"|| letter =="*"
#       decoded_sentence <<  " "
#     elsif new_letter >= 93 && new_letter <= 96
#       decoded_sentence << (new_letter + 26).chr 
#     elsif new_letter >= 97 && new_letter <= 122
#       decoded_sentence << new_letter.chr
#     else
#       decoded_sentence << letter
#     end
#   end
#  p decoded_sentence.join('')
# end
# Driver Test Code:

dr_evils_cipher("m^aer323x%e&gsoi!") #=>"i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
# p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
# &fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
# p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
# p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
# @m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
# p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")

# Reflection
# Keep your reflection limited to 10-15 minutes!
