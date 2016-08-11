def greetings
  puts "Hello!"
  puts "Block incoming"
  yield
  puts "Block complete"
end

greetings { puts "Ciao!"}

cheese = [ "cheddar", "pepperjack", "mozzarella", "gouda", "brie"]
dishes = { penne: "pesto", rigatoni: "marinara", bowtie: "alfredo"; papardelle: "ragu", spaghetti: "meatballs" }

