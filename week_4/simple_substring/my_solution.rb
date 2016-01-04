
def welcome(address)
#An if stament that  will return Welcome to california if the address includes "CA"
#In order to check the string. I need to use a method to find CA inside the string
if address.include?("CA")
return "Welcome to California"
#ELSE if the statemet does not include CA it should post "You should move to California"
else 
return "You should move to California"
end
end