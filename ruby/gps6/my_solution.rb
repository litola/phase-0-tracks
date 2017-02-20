# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#It access the data from the file specified
#HOW DOES IT WORK?
#its a method that works like copy and paste the code to this file, just by declaring the path for 
#the required file.
#How does it differ from require?
#require relative calls a file in the same directory. 

# PSEUDOCODE
# Implement a new method on all of STATE_DATA
# input: hash (STATE_DATA)
# steps: 
  # iterate through the hash using #each
  # use #virus_effects on each state in the STATE_DATA hash
# output: dry report from virus predictor for all 50 states


require_relative 'state_data'

class VirusPredictor
  #sets the instance variables with parameters sent.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  #Calls each methods sending the attributes needed.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  #it uses population density to predict the number of deaths and
  #print a user friendly message as an output.
  def predicted_deaths
    # predicted deaths is solely based on population density
    #if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif (@population_density >= 50) && (@population_density < 200)
      death_rate = ((@population_density / 50).floor).to_f
      number_of_deaths = ((death_rate / 10) * @population).to_i
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  #Uses population density to select a time for spreading the virus.
  #Prints a user friendly message as an output.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    # if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    # end
    if @population_density > 200
      speed += 0.5
    elsif (@population_density >= 50) && (@population_density <= 200) 
      speed += 2.5 - ((@population_density / 100).floor + 0.5)
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

# STATE_DATA.each do |state, population_data|
#   s = VirusPredictor.new(state, population_data[:population_density], population_data[:population])
#   s.virus_effects
#   puts "--------------"
# end



#=======================================================================
# Reflection Section