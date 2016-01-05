def old_roman_numeral(number)
  i = "I"
  v = "V"
  x = "X"
 if number < 5
  p "I" * number
elsif number <= 9
  p "V" + ("I" *( number- 5))
elsif number >= 15
  p "X" + ("V" *( number- 10)).to_s
elsif number
end

end





# I =1 V=5 X=10 L=50 C=100 D=500 M=1000
old_roman_numeral(1)
old_roman_numeral(2)
old_roman_numeral(4)
old_roman_numeral(5)
old_roman_numeral(6)
old_roman_numeral(8)
old_roman_numeral(9)
old_roman_numeral(10)
old_roman_numeral(15)
old_roman_numeral(20)
# I need to convert every number into a roman numberal
# IF number is less than 4 convert to I * 4

# Elsif number is >= 5 convert to V + 