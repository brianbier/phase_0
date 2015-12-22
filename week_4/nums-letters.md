##What does puts do?

Puts mean put string to the console. It is very useful when returning and outputting.  If you use Puts in your code it will return nil and print the output to the console in a new line. What puts does is create a new blank line right after the output. 

See the Example below:

```Ruby
def num
counter = 0
while counter < 10
puts counter
counter += 1
end
end
num 
0
1
2
3
4
5
6
7
8
9
⇨ nil
```

##What is an integer? What is a float?

An Integer is any number that is a whole number.  
Example:

```Ruby
1,2,3,4,5,6,7,8
```
A float is any number that has a decimal.
Example:

```Ruby
1.2, 2.1, 3.1, 4.1, 5.1, 6.1, 7.1
```

##What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

The difference between a float and an integer division is that integers will always return a whole number and if it cannot divide that number it will round down. When you divide using floats you will get a decimal number but it does not make any sense to divide with decimals, so you will never use them. An example of using an integer to divide would be by saying that you have 2 kidneys and there are 3 people that need one. 3/2 = 1.5 you are not going to give someone half of your other kidney. So it makes sense to give your kidney to one lucky person only and keep the other for yourself.

[Check out the section for 2.5 mini challanges here](calc.rb)

