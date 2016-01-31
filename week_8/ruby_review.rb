
def in_words(number)
container = {
  1000 => "thousand",
  100 => "hundred",
  90 => "ninety",
  80 => "eighty",
  70 => "seventy",
  60 => "sixty",
  50 => "fifty",
  40 => "forty",
  30 => "thirty",
  20 => "twenty",
  19 => "nineteen",
  18 => "eighteen",
  17 => "seventeen",
  16 => "sixteen",
  15 => "fifteen",
  14 => "fourteen",
  13 => "thirteen",
  12 => "twelve",
  11 => "eleven",
  10 => "ten",
  9 => "nine",
  8 => "eight",
  7 => "seven",
  6 => "six",
  5 => "five",
  4 => "four",
  3 => "three",
  2 => "two",
  1 => "one"

}


word = ""
container.each do |num,value|
  return word if number == 0
    if number.to_s.length == 1 
       return word = container[number]
    elsif number < 100 && number/num > 0
      if number%num == 0
        return word = value
      end
      return word = value + " "+ in_words(number%num)
    elsif number/num > 0
      return word = in_words(number/num) +" "+  value + " " +in_words(number%num)
    end



end
word
end


p in_words(7)
p in_words(12)
p in_words(99)
p in_words(142)
p in_words(2044)
