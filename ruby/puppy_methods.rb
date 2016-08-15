class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    # removed "toy" and now method works
  end

end

# Driver code
sparkles = Puppy.new
sparkles.fetch("ball")
sparkles.fetch("stick")
