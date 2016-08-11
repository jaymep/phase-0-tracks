def greetings
  puts "Hello!"
  puts "Block incoming"
  yield
  puts "Block complete"
end

greetings { puts "Ciao!"}

###

cheese = [ "cheddar", "pepperjack", "mozzarella", "gouda", "brie"]
dishes = { penne: "pesto", rigatoni: "marinara", bowtie: "alfredo", papardelle: "ragu", spaghetti: "meatballs" }

cheese.each { |cheese| puts "I like eating #{cheese}." }
dishes.each { |pasta, sauce| puts "#{pasta} goes great with #{sauce}." }

