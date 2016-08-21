module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
    words + "!!!" + " :)"
  end
   
  def yell_angrily(words)
    words + "!!!" + " :("
  end
  
  def yell_happily(words)
    words + "!!!" + " :)"  
  end  
end

class Sports_fan
  include Shout
end

fan = Sports_fan.new

p fan.yell_happily("Score")

p fan.yell_angrily("Foul")

