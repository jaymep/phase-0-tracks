# Pseudocode

# class Bellydancer

# attributes
#   name ==> string
#   age ==> integer
#   hometown ==> string
#   dance_style ==> string
#   outfit_color ==> string
#   routine_length ==> integer
#   veil ==> boolean
#   zills ==> boolean

# methods
#   hip_drop ==> number of times
#   shimmy ==> area & duration
#   turn ==> number of times
#   entrance ==> entrance message
#   exit ==> exit message

class Bellydancer
  attr_reader :age, :hometown
  attr_accessor :name

  def initialize(name, age, hometown)
    @name = name
    @age = age
    @hometown = hometown
  end

  def introduce
    puts "Please welcome #{@name}, #{@age}, from #{@hometown}!"
  end

  def entrance
    puts "The music builds and here comes the dancer..."
  end

  def exit
    puts "The dancer curtsies to stage left and right before leaving the stage."
  end

  def hip_drop(x)
    x.times {puts "Hip Drop "}
  end

  def turn(direction, x)
    x.times {puts "Turn #{direction}"}
  end

  def shimmy(area, x)
    x.time {puts "#{area} shimmy "}
  end

end