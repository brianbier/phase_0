#Pseudocode
# What is the input? Array of numbers or strings
# What is the output?  Array of the most frequent values ("mode")
# What are the steps needed to solve the problem?
# Define a method
# Create a hash and assign each key a default value of 0
# Iterate through the array and save each item in the array # to the hash
# IF the number in the array is equal to the key, it should increment that key by 1.
# Then iterate through the hash 
# IF the value  
# which number occurs most frequently in the array.
# 1. Initial Solution
def mode(array)
  hash = Hash.new{|key, value| key[value] = 0}

    array.each do |number|
    hash[number] += 1
    end
  array = []
    hash.each do |key, value| 
      if value == hash.values.max
        array.push(key)
      end
    end
    p hash
  p array
end

mode(['apple', 'orange', 'banana', 'apple',"orange"])

# 4. Reflection
=begin
Which data structure did you and your pair decide to implement
and why?
We decided to use a hash in order to store the keys which in this case 
was the item in the array and the value which was the count of how many 
times the item was inside the array. I think that made more logical sense 
using less code. If I would have used an array it did not seem possible to 
find the solution unless I had created multiple arrays.

Were you more successful breaking this problem down into 
implementable pseudocode than the last with a pair? 
This pairing session was great and very challenging. 
It was more difficult trying to break the problem down using pseudocode. 
I think my pair and I took about 1 hour trying to psuedocode the problem as 
detail as possbile and then broke the problem in tiny steps when we started 
to code.

What issues/successes did you run into when translating your
pseudocode to code?
I belive the biggest issue we came up with during the code was deciding what 
we were going to use either an array or a hash. In our psuedocode we were very 
successful in pointing every logic step that needs to happen however, 
we did not know exactly what would work best trying to build the program. 
This is when we decided to start small and build on that small program. 
For example first we decided how can we assign keys to a hash that has a default 
alue and store it after I call that hash again. We had a hard time trying to 
figure this out until I came up with the solution in chapter 9 on 
The well grounded rubyist (Hashes). Then we decided to iterate through numbers 
and push to a hash that already had a default value and this is how we continue 
slowly. IRB became a really good friend.


What methods did you use to iterate through the content? Did
you find any good ones when you were refactoring? Were they 
difficult to implement?
We did not use any fancy methods. We try looking in the enumerals documentation 
and we ended up using the .max when determine which value was the highest 
in the hash. That was the only method we use that was out of our scope. 
We did not find the necessity to use any other fancy methods. What I can say is 
that we did try multiple enumerals such as .select , sort_by , find_all but they were not 
returning what we expected. They sound like they would do what we wanted but did not. 
I think thats the tricky thing about methods.


=end