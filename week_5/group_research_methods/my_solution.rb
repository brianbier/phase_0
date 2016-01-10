i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 4
def my_array_deletion_method!(source, thing_to_delete)
    source.delete_if {|array| array.to_s.include? thing_to_delete}
end

def my_hash_deletion_method!(source, thing_to_delete)
    source.delete_if {|key,value| key.include? thing_to_delete}
end

# Identify and describe the Ruby method(s) you implemented.
# .delete_if will iterate through an array or hash and delete the element depending on the condition you assign within the {}.
# .include? check every character in the element and return a boolean of true or false.
# .to_s wil convert something to a string.


#Teach your accountability group how to use the methods
# I use the a new method called delete_if to iterate through the array and hash elements.
# Then for the array I had to use the .to_s because the letter cant be compare to a number example [2,"a"].include? ["a"] will return an error for number 2.
# The include? method check every character in the element and returns a boolean of true or false. 
# So it will delete the element in the array if it includes the letter. IF true it gets deleted, if false it goes to the next
# element until there is no more elements. 
# IMPORTANT: Include? will check every character in the element to find that specific letter.
#



# Share any tricks you used to find and decipher the Ruby Docs
