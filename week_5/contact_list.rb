#Method that ask questions.
def ask(question,kind="string")
  print question + " "
  answer = gets.chomp
  answer = answer.to_i if kind == "number"
  return answer
end
#Method that adds contact name and phone numbers into a hash
def add_contact
  contact = {"name" => "", "phone_numbers" =>[]}
  contact["name"] = ask("what is the person's name? ")
  answer = ""
  while answer != "no"
    answer = ask("Do you want to add a phone number? (yes/no)")
    if answer == "yes"
      phone = ask("Enter a phone number:")
      contact["phone_numbers"].push(phone)
      end
    end
  return contact
end
#Container for contact list
contact_list = []
#Loop that will continue asking to add contacts until the condition is no.
answer = ""
until answer == "no"
  contact_list.push(add_contact())
  answer = ask("add another? (yes/no)")
end

puts "____________"
#Iterate through the contact list array and display the names and phone numbers.
contact_list.each do |contact|
   puts "name: #{contact["name"]}"
  if contact["phone_numbers"].size > 0
      contact["phone_numbers"].each  do |phone_number|
      puts "Phone: #{phone_number}"
     end
   end
puts "___________\n"
end

