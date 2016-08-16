class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    
  end

  def speak(x)
    x.times.each do puts "Woof!"
    end
  end

  def roll_over
    puts "*rolls over*"
  end
  
  def dog_years(y) # Google says 1 dog year = 4 human years
    dog_age = y / 4
    puts "Puppy is #{dog_age} puppy-years old."
  end
  
  def high_five(z)
    z.times.each do puts "*high-fives*"
    end
  end
  
  def initialize
    puts "Initializing new puppy instance ..."
  end
  
end

# Driver code

# sparkles = Puppy.new

# sparkles.fetch("ball")
# sparkles.fetch("stick")
# sparkles.speak(3)
# sparkles.roll_over
# sparkles.dog_years(13)
# sparkles.high_five(5)

class Cookie
  
  def initialize
    puts "Behold -- a new cookie!"
  end

  def bake(x)
    if x < 10
      puts "Your cookie is not yet ready."
    elsif x > 10 && x < 15
      puts "Yay, fresh cookies!"
    else
      puts "Darn! Burnt cookies!"
    end
  end

  def decorate(toppings)
    puts "Now you have cookies with #{toppings}!"
  end

end

# chocolate = Cookie.new
# chocolate.bake(8)
# chocolate.decorate("macadamia nuts")

batch = Array.new
50.times.each do
  chocolate = Cookie.new

  batch << chocolate
end
p batch.length

batch.each do |snack|
  snack.bake(8)
  snack.decorate("sprinkles")
end 