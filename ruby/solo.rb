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
#   shimmy ==> area & times
#   turn ==> direction & times
#   entrance ==> entrance message
#   exit ==> exit message

# can combine attributes & methods for 
# choreography/dance output
# program/lineup/stage manager notes

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

lineup = Array.new
puts "How many dancers are performing?"
dancer_count = gets.to_i 



dancer_count.times do |dancer_id|
  puts "Who is dancing?"
  name = gets.chomp
  puts "How old is the dancer?"
  age = gets.to_i
  puts "What is the dancer's hometown?"
  hometown = gets.chomp
  dancer_id = Bellydancer.new(name, age, hometown)
  lineup << dancer_id
end
lineup






# Driver code
# dancer1 = Bellydancer.new("Shira", 35, "Chicago")
# dancer1.entrance
# dancer1.shimmy("Shoulder", 4)
# dancer1.turn("Left", 4)
# dancer1.turn("Right", 4)
# dancer1.shimmy("Hip", 4)
# dancer1.exit
# dancer1.introduce # Test introduce method
# dancer1.name = "Nadira"
# dancer1.introduce # Test name change