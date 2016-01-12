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
# I dont have any particular tricks to understand the doc but I did take 1 hour to check and analyse where everything is. There is
# so much contact that it can be overwhelming. When I try to solve a problem. I go to the class I am working with then I look for every method 
# that sounds similar to what I am trying to do. So for the example in the top i look for a method that was deleting.



# Person 3
def my_array_sorting_method(source)
  return source.sort_by {|i| i.to_s }
  #=> [2, 3, "I", "but", "have", "only", "pets", "want"]
end

source = [["Annabelle", 0], ["Ditto", 2], ["Hoobie", 3], ["Bogart", 4], ["Poly", 5], ["Evi", 6], ["George", 12]]

def my_hash_sorting_method(source)
  return source.sort_by{|k,v| v}
end

# Identify and describe the Ruby method(s) you implemented.
# I used the sort_by method. In the block, I told the method how it should work.
#In the first method to sort thearray, we had to take each item in the array and make sure it was a string, otherwise we'd end up getting the error saying ' ArgumentError:comparison of String with 2 failed'. Making it sort_by instead of sort gets rid of that error because it treats everything as a string.
#

# In the second method, you have to specify that you're sorting the hash by its value, which is done in the block that gets executed by the sort_by method.




# Person 2
def my_array_modification_method!(array, number)
  array.map! do |x| 
    if x.is_a? Fixnum
      p x += number
    else
      p x
    end
  end
end

def my_hash_modification_method!(hash, number)
  hash.keys.each do |k|
    hash[k] += number
  end
  p hash
end

# Identify and describe the Ruby method(s) you implemented.
# .map! executes a given code block on each element in the array, just like .each 
# does, but .map returns an array with the values that the iteration returned, 
# while .each returns the results of the iteration along with the original array. 
# .is_a? is a boolean method that returns true if the object is whatever class you 
# pass it. By using Fixnum, we are checking if the object is an integer as opposed
# to a string. Using it in an if statement allowed us to run a block of code only
# on objects that are numbers, and use the else statement to return the string
# results unaltered.
# hash.keys.each is a series of methods strung together to create a command that
# will pass a code block to all of the keys in a hash. Since in this case all of
# the values are integers, pet ages, I was able to create a simple code block to
# increase all of the values 

# Teach others to use the methods
# For the array:
# .map! and .map are very straightforward as said above, they are just like .each
# but return a new array as opposed to the result and then the old array. By using
# a bang (!), we made it update the original array i_want_pets[] instead of
# creating a new object.
# I used .is_a? to determine if the value is a number or a string, since those are
# in the original array. If it's a number, then it is passed the block to increase
# the number by whatever argument was input. If it's not a number, we need to
# remember to return or p the object so that it is in the result, rather than just
# returning the increased numbers and nothing else. 

# For the hash:
# This was done in basically one statement. I could have done:
# hash.each do { |key, value| hash[key] += number }
# but since we're only updating values, I could append the key to the method and
# write a code block that only mentions what we care to change. 

# Tricks for Ruby Docs
# Like everyone else I don't consider myself to have any tricks yet. My general
# strategy is to skim the object page for any methods that look like they may be
# a solution to what I want. If I don't have any luck there, I'll go to google
# and try to do general searches for what I'm trying to do, as well as using find
# on the page to see if any keywords I come up with will appear in the descriptions.
# Once I find some suggestions there, I don't look into the full forum post - I
# go find that method in the docs and try to figure out how to use it myself. 

# Person 1's solution
def my_array_finding_method(array,letter)
  new_array = array.dup
  array_result = new_array.grep(/#{letter}/)
  p array_result
  

  end

def my_hash_finding_method(hash, value)
  new_array = []
  hash.each do |k,v|
    if v == value
      new_array << k
    end
    end
  p new_array
end
=begin
#Driver Code
i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}
my_array_finding_method(i_want_pets, "t")
p i_want_pets
my_hash_finding_method(my_family_pets_ages, 3)
p my_family_pets_ages
Identify and describe the Ruby method you implemented
.dup creates a duplicate of the element its being called on. I like using it for when I am making non-destructive methods.
.grep takes a pattern and returns every element that contains it. The syntax for it is what gave me a lot of trouble.
Teach your accountability group how to use the methods
.dup is used by adding it to the method you want it to duplicate. For example,  new_array = array.dup, makes a new array called new_array that is a duplciate of array.
.grep is used by adding it to the method you want it to iterate over and you put the pattern you want it to check for afterwards. For example, array_result = new_array.grep(/#{letter}/), this puts any elements in new_array that contain the pattern of "letter" into array_result. 
Share any tricks you used to find and decipher the Ruby Docs
I don't really have any tricks to deciper the ruby docs, I just read through them all and tried to find ones that make sense.
Even after reading them a few times I was having problems with syntax on grep and was trying new things over and over.
=end





