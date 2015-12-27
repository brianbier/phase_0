# Analyze the Errors

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

=begin
1. What is the name of the file with the error?
Answer: The error is occurring in the error.rb file. 

2. What is the line number where the error occurs?
Answer: The error occurs on line 8.

3. What is the type of error message?
Answer: This is a syntax error.

4. What additional information does the interpreter provide about this type of error?
Answer: The interpreter says it did not expect an "=" sign, rather it expected an $end.

5. Where is the error in the code?
Answer: The interpreter did not expect an equals sign between "I'm going home" and cartmans_phrase.

6. Why did the interpreter give you this error?
Answer: Ruby does not allow variable assignment this way. Variables have to be the first thing identified, and operations occur after the equals sign. This error would not occur if the code was:
cartmans_phrase = "Screw you guys " + "I'm going home."
=end

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
# end

=begin 
1. What is the name of the file with the error?
Answer: The error is occurring in the error.rb file. 

2. What is the line number where the error occurs?
Answer: The error occurs on line 188.

3. What is the type of error message?
Answer: This is a syntax error.

4. What additional information does the interpreter provide about this type of error?
Answer: The interpreter says unexpected en-of-input,expecting keyword_end

5. Where is the error in the code?
Answer: The interpreter did expected an end of input somewhere in the last position of the file if possible.

6. Why did the interpreter give you this error?
Answer: Ruby always requires you to close any method creation or loops with either {} or end. Since you did not close the code above ruby does not know where to end it. 
This error would not occur if the code was:

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

=end 

# --- error -------------------------------------------------------

#south_park

=begin 
1. What is the name of the file with the error?
Answer: The error is occurring in the error.rb file. 

2. What is the line number where the error occurs?
Answer: The error occurs on line 66.

3. What is the type of error message?
Answer: This is a nameError

4. What additional information does the interpreter provide about this type of error?
Answer: The interpreter says undefined local variable or method `south_park for main:

5. Where is the error in the code?
Answer: The interpreter expeted this to either be a variable that was assigned or a defined method

6. Why did the interpreter give you this error?
Answer: Ruby does not know what this word means and it is not assign to anything nor it is a creation of a method.
This error would not occur if the code was:

south_park = "characters"

or 

def south_park

end

=end 

# --- error -------------------------------------------------------

#cartman()

=begin 
1. What is the name of the file with the error?
Answer: The error is occurring in the error.rb file. 

2. What is the line number where the error occurs?
Answer: The error occurs on line 100.

3. What is the type of error message?
Answer: This is a NoMethodError.

4. What additional information does the interpreter provide about this type of error?
Answer: The interpreter says undefined method `cartman'

5. Where is the error in the code?
Answer: The interpreter expeted to call on this method with the use of the parenthesis but it is not define.

6. Why did the interpreter give you this error?
Answer: Ruby does not know how to call this method because it is not defined anywhere in the file.
This error would not occur if the code was:

def cartman

end


cartman()

=end 

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

=begin 

1. What is the name of the file with the error?
Answer: The error is occurring in the error.rb file. 

2. What is the line number where the error occurs?
Answer: The error occurs on line 133 and 137.

3. What is the type of error message?
Answer: This is a ArgumentError.

4. What additional information does the interpreter provide about this type of error?
Answer: The interpreter says wrong number of arguments (1 for 0)

5. Where is the error in the code?
Answer: The interpreter found the error when they called an argument on the def cartmans_phrase method, when the method does not take any parameters.

6. Why did the interpreter give you this error?
Answer: Ruby does not allow any arguments for this method because the method define did not include any parameters.
This error would not occur if the code was:

def cartmans_phrase(str)
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')

=end 
# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says

=begin 

1. What is the name of the file with the error?
Answer: The error is occurring in the error.rb file. 

2. What is the line number where the error occurs?
Answer: The error occurs on line 169 and 173.

3. What is the type of error message?
Answer: This is a ArgumentError.

4. What additional information does the interpreter provide about this type of error?
Answer: The interpreter says wrong number of arguments (0 for 1)

5. Where is the error in the code?
Answer: The interpreter found the error when they called on the def cartmans_says method without a argument, when the method takes one parameter.

6. Why did the interpreter give you this error?
Answer: Ruby requires that you include an arguments for this method because the method define includes one parameter.
This error would not occur if the code was:

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("I hate the color red")
=end 



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

=begin 

1. What is the name of the file with the error?
Answer: The error is occurring in the error.rb file. 

2. What is the line number where the error occurs?
Answer: The error occurs on line 207 and 211.

3. What is the type of error message?
Answer: This is a ArgumentError.

4. What additional information does the interpreter provide about this type of error?
Answer: The interpreter says wrong number of arguments (1 for 2)

5. Where is the error in the code?
Answer: The interpreter found the error when they called on the def cartmans_lie method with only 1 argument, when the method takes two parameter.

6. Why did the interpreter give you this error?
Answer: Ruby requires that you include the same number of arguments for this method because the method define includes two parameter.
This error would not occur if the code was:

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!','Thats never going to happen.')

=end 

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

=begin 

1. What is the name of the file with the error?
Answer: The error is occurring in the error.rb file. 

2. What is the line number where the error occurs?
Answer: The error occurs on line 244.

3. What is the type of error message?
Answer: This is a TypeError.

4. What additional information does the interpreter provide about this type of error?
Answer: The interpreter says String can't be coerced into fixnum

5. Where is the error in the code?
Answer: The interpreter found the error when it multiply the number into the string.

6. Why did the interpreter give you this error?
Answer: Ruby does not allow multiplication of a number and a string.
This error would not occur if the code was:

5 * "Respect my authoritay!".length

=end 

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0

=begin 

1. What is the name of the file with the error?
Answer: The error is occurring in the error.rb file. 

2. What is the line number where the error occurs?
Answer: The error occurs on line 273

3. What is the type of error message?
Answer: This is a zerodivisionError.

4. What additional information does the interpreter provide about this type of error?
Answer: The interpreter says divide by 0.

5. Where is the error in the code?
Answer: The interpreter found the error when you divide a number by 0

6. Why did the interpreter give you this error?
Answer: Ruby does not allow any division by 0 because it does not make any sense.
This error would not occur if the code was:

amount_of_kfc_left = 0/20 which still does not make sense.

=end 

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

=begin 

1. What is the name of the file with the error?
Answer: The error is occurring in the error.rb file. 

2. What is the line number where the error occurs?
Answer: The error occurs on line 302

3. What is the type of error message?
Answer: This is a LoadError.

4. What additional information does the interpreter provide about this type of error?
Answer: The interpreter says cannot load such file.

5. Where is the error in the code?
Answer: The interpreter found the error because it did not find the file name cartman_essay.md in my directories

6. Why did the interpreter give you this error?
Answer: Ruby couldnt find this file anywhere in my directory so it had to push the error.
This error would not occur if the code was:

I had created a simple file in the same directory called cartmas_essay.md

=end 


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin
Which error was the most difficult to read?

I found the third error messages difficult to read because they were backwards. 
I think is probably because of the version of ruby that’s on my computer. 
The type of error message was display after what had occurred. 
Below is exactly what I saw on my terminal and see how the type of error is after the issue not like the example in canvas:

error.rb:244:in `*': String can't be coerced into Fixnum (TypeError) from error.rb:244:in `<main>'

How did you figure out what the issue with the error was?

I figure all of the error messages because of the error description and the line it was located. 
What I found most interesting was the divisionbyzero error message. I did not expect that Ruby would point that out. 

Were you able to determine why each error message happened based on the code? 

Yes it was pretty straightforward as to what the problems where in those questions.

When you encounter errors in your future code, what process will you follow to help you debug?

I will definitely read the error message clearly rather than being afraid of them. 
I will also pay close attention to simple errors that I make constantly like creating a method with out an end of input, 
not declaring the variable correctly or capitalizing a method. This will help me avoid errors but if they happen I can understand 
what those error messages mean. I will also go to the ruby documentation to define any error message that I don’t understand.
=end