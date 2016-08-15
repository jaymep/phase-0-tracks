class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    
  end

  def speak(x)
    x.times.each do puts "Woof!"
    end
  end

end

# Driver code

sparkles = Puppy.new

# sparkles.fetch("ball")
# sparkles.fetch("stick")

# sparkles.speak(3)