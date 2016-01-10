

# Person 4
def my_array_deletion_method!(source, thing_to_delete)
    source.delete_if {|array| array.to_s.include? thing_to_delete}
end

def my_hash_deletion_method!(source, thing_to_delete)
    source.delete_if {|key,value| key.include? thing_to_delete}
end

# Identify and describe the Ruby method(s) you implemented.
# I use the a new method called delete_if which iterates through each element in the array or hash
# and then I use the include? method which returns a boolean of true or false. 
# So if you read the method solution this is whats happening
# delete the element in the array if it includes the letter. IF true it gets deleted, if false it goes to the next
# element until there is no more elements. 
# IMPORTANT: Include? will check every character in the element to find that specific letter.
#
#
