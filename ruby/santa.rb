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
  end

  def reindeer_ranking
    ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end

  def age
    @age = 0
  end

end






# Driver code
# nick = Santa.new
# nick.speak
# nick.eat_milk_and_cookies("snickerdoodle")

