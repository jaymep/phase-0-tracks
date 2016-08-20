class Santa

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(flavor)
    puts "That was a good #{flavor}!"
  end
  
  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @age = 0
    @ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    end

# Getter methods
  def age
    @age
  end

  def ethnicity
    @ethnicity
  end  

# Setter methods
  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer)
    reindeer_pos = @reindeer_ranking.index(reindeer)
    @reindeer_ranking.delete_at(reindeer_pos)
    @reindeer_ranking.push(reindeer)
  end

  def gender=(new_gender)
    @gender = new_gender
  end

end

# Driver code
nick = Santa.new("male", "Japanese")
# nick.speak
# nick.eat_milk_and_cookies("snickerdoodle")

# nick.get_mad_at("Prancer")
# nick.celebrate_birthday
nick.gender = "fluid"

# SantaCon Driver Code
# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

# Possible solution
# Array of genders and ethnicities, create array of santas by taking corresponding value from each array.
# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end
# santas

# Another solution
# Each santa is added as an array to an array and initialized from outer array.
# santas = []
# example_queue = [["agender", "black"], ["female", "Latino"], ["bigender", "white"], ["male", "Japanese"], ["female", "prefer not to say"], ["gender fluid", "Mystical Creature (unicorn)"], ["N/A", "N/A"]]
# example_queue.each { |gender, ethnicity| santas << Santa.new(gender, ethnicity) }
# santas
