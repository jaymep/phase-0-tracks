module Shout
  # Standalone modules
  # def self.yell_angrily(words)
  #   words + "!!!" + " :("
  # end

  # def self.yell_happily(words)
  #   words + "!!!" + " :)"
  # end
   
  # Mixin modules 
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

class Sports_ref
  include Shout
end

# Driver code
# fan = Sports_fan.new
# p fan.yell_happily("Score")
# p fan.yell_angrily("Foul")

# ref = Sports_ref.new
# p ref.yell_happily("Safe")
# p ref.yell_angrily("Out")