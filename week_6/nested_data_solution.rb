# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array =[5, 
              [10, 15], 
              [20,25,30], 
               35]
number_array.each do |array|
  if array.is_a?(Array)
    array.each do |num|
      p num + 5
    end
  else  
    puts array + 5
  end
end


# Bonus:

startup_names = ["bit", 
                ["find", "fast",["optimize", "scope"]]]

startup_names.each do |array|
  if array.is_a?(Array)       #=> "bitly"
      array.each do |inner_array|     #=> "find","fast"
        if inner_array.is_a?(Array)
            inner_array.each do |deeper_array|  #=> "optimize","scope"
              p deeper_array + "ly"
            end
        else
            p inner_array + "ly"
        end
      end
  else
    p array + "ly"
  end
end
puts "

REFACTOR

"
#REFACTOR

startup_names.flatten.each {|word| p word + "ly"}



# REFLECTION

=begin
•What are some general rules you can apply to nested arrays?
A few general rules for nested arrays is to place the nested array in individual lines if it is extremely difficult to see them. 
Then you can see it as a tree like diagram in which you are targeting individual elements by calling them either using array index or hash keys. 
Also, when you have to perform the same task to each element in every element in the array including the nested elements you can use an if statement 
with the special method is_a? or kind_of? Inside the each statement. For example if array.is_a?(Array) then do the following.  
For a hash, you use the same methods but you use hash.is_a?(Hash).

•What are some ways you can iterate over nested arrays?
You can iterate over nested arrays using the information above and you can iterate using the each method or any enumerable that fits your task. 
Using if statements help you iterate through the nested arrays or hashes without a problem.

Example:
      Hash.each do |key,value|
        If key.is_a?(Hash)
          key.each do |k,v|
            puts k
          end
        else
          puts value
        end
      end

•Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
I use the methods that I as familiar with when iterating through the array/hash but I did use the is_a? method rather than the kind_of? method because it 
reads better when writing the code since they both do the same thing. When I refactor the problem I used the flatten method. 
I know it is not useful for more complex problems but for this particular problem it was. Flatten will take the array and convert it into one. 
It's great because it is not a destructive method aswell. 


=end
