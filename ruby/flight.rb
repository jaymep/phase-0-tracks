# Mixin module doesn't require self
module Flight
  def take_off(altitude)
    puts "Taking off and ascending until reaching #{altitude} ..."
  end
end

class Bird
end

class Plane
end

bird = Bird.new
bird.take_off(800)

plane = Plane.new
plane.take_off(30000)