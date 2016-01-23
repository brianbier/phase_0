# Virus Predictor

# EXPLANATION OF require_relative
# require_relative is how you link another file in order for your code to work
# The difference is that require is a longer way of writing it because you have to be specific with the path
# of the file.
require_relative 'state_data'

class VirusPredictor
#Every new instance of this class will be initalized with these instance variables
  attr_reader :population, :population_density
  def initialize(state)
    @state = state
    @population = STATE_DATA[state][:population]
    @population_density = STATE_DATA[state][:population_density]
  end
#Calls instance methods: predicted_deaths and speed_of_spread. Uses all th instance variables to assign values to arguments
 # private
  def virus_effects
    # number_of_deaths = predicted_deaths
    # speed = speed_of_spread
    print "#{@state} will lose #{predicted_deaths} people in this outbreak and will spread across the state in #{speed_of_spread} months.\n\n"
  end

  private
#The greater the popoulation density, the larger the number of deaths. Uses the instance variables to make calculations
  def predicted_deaths
    # predicted deaths is solely based on population density
    if population_density >= 200
      (population * 0.4).floor
    elsif population_density >= 150
      (population * 0.3).floor
    elsif population_density >= 100
      (population * 0.2).floor
    elsif population_density >= 50
      (population * 0.1).floor
    else
      (population * 0.05).floor
    end
  end
#The speed of spread is faster for less dense populations.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    # speed = 0.0

    if population_density >= 200
      0.5
    elsif population_density >= 150
      1
    elsif population_density >= 100
      1.5
    elsif population_density >= 50
      2
    else
      2.5
    end  

  end

end
# Calling the class on every hash in the STATE DATA
STATE_DATA.each do |state,value|
  VirusPredictor.new(state).virus_effects  
end



#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects




#=======================================================================
# Reflection Section

=begin
  
What are the differences between the two different hash syntaxes shown in the state_data file?
The STATE_DATA is a hash that consists of  keys with values of hashes. 
The values for each key consists of a symbol as a key and an integer as the value.


What does require_relative do? How is it different from require?
 require_relative is how you link another file in order for your code to work. 
 In this example, we use require_relative 'state_data' in order to link the ruby file with the data hash. 
 The difference with require is a the way the file is linked because you have to be specific with the path of the file. 
 For example: required /state_data.rb


What are some ways to iterate through a hash?
You can iterate through a hash using the each method in ruby

When refactoring virus_effects, what stood out to you about the variables, if anything?
I realize that the variables were not quite necessary because the arguments being passed where not doing anything. 
I decided it to eliminate it completely and create the attr_reader so that the predicted deaths and speed of spread would work without it.

What concept did you most solidify in this challenge?

The concept that stood out to me the most was refactoring code that I did not work on. 
Refactoring my own code seems to be very difficult but when I see other people's code it is easier to notice flaws.  
I solidify my understanding of thinking outside the box and being very open to other possibilities. 
My guide suggested creating an instance variable assigned to the State data population, which is something I had no idea was possible. 

  
=end