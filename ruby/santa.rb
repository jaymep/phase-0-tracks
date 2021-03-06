class Santa
  #attr_reader :ethnicity
  attr_accessor :gender #, :age

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(flavor)
    puts "That was a good #{flavor}!"
  end
  
  def initialize(age, gender, ethnicity)
    puts "Initializing Santa instance ..."
    @gender = gender # Add attr_accessor to allow gender change
    @ethnicity = ethnicity
    @age = age # changed from 0 for release 4
    @ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end

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
# nick = Santa.new("male", "Japanese")
# nick.speak
# nick.eat_milk_and_cookies("snickerdoodle")

# nick.get_mad_at("Prancer")
# nick.celebrate_birthday
# nick.gender = "fluid"


# SantaCon initial driver code
# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")


# Possible refactor solution
# Array of genders and ethnicities, create array of santas by taking corresponding value from each array.
# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end
# santas


# Another refactor solution
# Each santa is added as an array to an array and initialized from outer array.
# santas = []
# example_queue = [["agender", "black"], ["female", "Latino"], ["bigender", "white"], ["male", "Japanese"], ["female", "prefer not to say"], ["gender fluid", "Mystical Creature (unicorn)"], ["N/A", "N/A"]]
# example_queue.each { |gender, ethnicity| santas << Santa.new(gender, ethnicity) }
# santas


# Create all the Santas
# Create new Santa with randomly selected gender and ethnicity from sample arrays
# Set Santa's age to random number from 0 to 140
# Print Santa attributes

# while i is less than (# iterations + 1)
# Find other way to insert line break
# Put info printout into method if time for refactor

genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# age = (0..140).to_a
santas =[]
i = 1

while i < 5 do 
  gender = genders.sample
  ethnicity = ethnicities.sample
  # age = age.sample
  age = (0..140).to_a.sample
  
  Santa.new(age, gender, ethnicity)

  puts "Santa No: " + i.to_s  
  puts "Age: #{age}"
  puts "Gender: #{gender}"
  puts "Ethnicity: #{ethnicity}"
  puts 

  i += 1
end

# Comments:
# Hi Jayme, I think there's a little confusion in regards to instance variables and accessing class attributes. To start, adding an @ in front of a variable name declares an instance variable, which is only used within the class declaration. On line 90, 91, 92, you use @gender, @ethnicity, @age. Did you mean to just declare a normal variable? Or did you mean to access an attribute in the class via setter method? In addition, in your driver code on line 42, you properly access the gender attribute to reassign gender a new value of fluid. However, you don't access any of the other attributes to demonstrate the usage of a getter method like `puts nick.ethnicity` or `puts nick.age`. Please message me on slack @jwmendio if you have any questions.