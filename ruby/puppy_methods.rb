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
  
end

# Driver code

# sparkles = Puppy.new

# sparkles.fetch("ball")
# sparkles.fetch("stick")
# sparkles.speak(3)
# sparkles.roll_over
# sparkles.dog_years(13)
# sparkles.high_five(5)