# Virus Predictor

# I worked on this challenge [with: pair Travix, guide Helin].
# We spent [2.5] hours on this challenge.

# EXPLANATION OF require_relative
# Require_relative points to an external file to be used relative to the directory 
# you are currently working in. 'Require' would serve the same purpose but requires
# full path in order to be used.

require_relative 'state_data'

class VirusPredictor

  # creating a new instance of VirusPredictor accepting three arguments and assigns
  # them to instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  
  # combines the printed results of predicted_deaths and speed_of_spread.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

# In class, above private section, class method to take any data hash (from study session)
# def self.report(hash)
#   hash.each do |state, data|
#     x = VirusPredictor.new(state, data[:population_density], data[:population])
#     x.virus_effects
#   end
# end


  private

=begin
# calculates the predicted deaths by population density and population of the state.
def predicted_deaths
  # predicted deaths is solely based on population density
  if @population_density >= 200
    number_of_deaths = (@population * 0.4).floor
  elsif @population_density >= 150
    number_of_deaths = (@population * 0.3).floor
  elsif @population_density >= 100
    number_of_deaths = (@population * 0.2).floor
  elsif @population_density >= 50
    number_of_deaths = (@population * 0.1).floor
  else
    number_of_deaths = (@population * 0.05).floor
  end
  print "#{@state} will lose #{number_of_deaths} people in this outbreak"
end
=end

  def predicted_deaths
    # predicted deaths is solely based on population density
    density = [200, 150, 100, 50, 0]
    multiplyer = [0.4, 0.3, 0.2, 0.1, 0.05]
    density.length.times do |x|
      if @population_density >= density[x]
        @number_of_deaths = (@population * multiplyer[x]).floor
        break
      end
    end
     print "#{@state} will lose #{@number_of_deaths} people in this outbreak"
  end

=begin
  # calculates the speed of spread based on population density.
  def speed_of_spread  #(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end
    puts " and will spread across the state in #{speed} months.\n\n"
  end
=end

  def speed_of_spread #in months
    speed = 0.5
    density = 200
    until @population_density >= density
      speed += 0.5
      density -= 50
    end
    puts " and will spread across the state in #{speed} months.\n\n"
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


STATE_DATA.each do |state, data|
  x = VirusPredictor.new(state, data[:population_density], data[:population])
  x.virus_effects
end

# # In class, above private section (from study session)
# def self.report(hash)
#   hash.each do |state, data|
#     x = VirusPredictor.new(state, data[:population_density], data[:population])
#     x.virus_effects
#   end
# end

# VirusPredictor.report(STATE_DATA) (from study session)

=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects
jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects
california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects
alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end

#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
# -- The outer hash uses the hash rocket to assign values (smaller hash) to keys (strings).
# -- Inner hash uses symbols with colons as keys and lists their values (floats & integers) after.

# What are some ways to iterate through a hash?
# -- Each, map, times methods

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# -- The methods inside the methods all pass instance variables as parameters. If those remain instance variables, we don't have to pass them as arguments in the methods virus_effects, predicted_deaths & speed_of_spread since they can be called from within the method.

# What concept did you most solidify in this challenge?
# -- How to retrieve values from a hash/nested data structures

