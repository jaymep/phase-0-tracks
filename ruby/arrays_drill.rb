jayme = []
p jayme

jayme.push("shirt", "pants", "shoes", "hat", "glasses")
p jayme

jayme.delete_at(2)
p jayme

jayme.insert(2, "flip flops")
p jayme

jayme.shift
p jayme

if jayme.include? "glasses"
  p "Jayme has glasses!"
else
  p "Jayme does not have glasses."
end

aidan = ["socks", "jacket", "belt"]
p aidan

pairs = jayme | aidan
p pairs
