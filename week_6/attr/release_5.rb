class NameData
  attr_reader :name
  
  def initialize
    @name = "Brian"
  end
end


class Greetings
  def initialize
    @greet = NameData.new
  end
  def print
    puts "Hello #{@greet.name}. It is great to meet you!"
  end
end

greeting = Greetings.new
puts greeting.print