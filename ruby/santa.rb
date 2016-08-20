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

  # def age

  #   # age
  # end

  # def ethnicity

  # end  

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer)
    reindeer_pos = @reindeer_ranking.index(reindeer)
    @reindeer_ranking.delete_at(reindeer_pos)
    @reindeer_ranking.push(reindeer)
  end
end

# Driver code
nick = Santa.new("male", "Japanese")
# nick.speak
# nick.eat_milk_and_cookies("snickerdoodle")

nick.get_mad_at("Prancer")

# SantaCon Driver Code
# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end
