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

puts cheese
cheese.map! { |cheese| cheese.capitalize }
puts cheese

# A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).

numbers = [1,2,3,4,5,6,7,8,9,10]
p numbers.delete_if { |number| number < 5 }

number = {
  one: 1,
  two: 2,
  three: 3,
  four: 4,
  five: 5,
  six: 6,
  seven: 7,
  eight: 8,
  nine: 9,
  ten: 10
}

p number.delete_if { |word, digit| digit < 5 }

# A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).

numbers = [1,2,3,4,5,6,7,8,9,10]
p numbers.keep_if { |number| number < 5 }

number = {
  one: 1,
  two: 2,
  three: 3,
  four: 4,
  five: 5,
  six: 6,
  seven: 7,
  eight: 8,
  nine: 9,
  ten: 10
}

p number.keep_if { |word, digit| digit < 5 }

# A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!

numbers = [1,2,3,4,5,6,7,8,9,10]
p numbers.select! { |number| number.even? }

number = {
  one: 1,
  two: 2,
  three: 3,
  four: 4,
  five: 5,
  six: 6,
  seven: 7,
  eight: 8,
  nine: 9,
  ten: 10
}

p number.select! { |word, digit| digit.even? }

# A method that will remove items from a data structure until the condition in the block evaluates to false, then stops (you may not find a perfectly working option for the hash, and that's okay).

numbers = [1,2,3,4,5,6,7,8,9,10]
p numbers.reject! { |number| number < 5 }

number = {
  one: 1,
  two: 2,
  three: 3,
  four: 4,
  five: 5,
  six: 6,
  seven: 7,
  eight: 8,
  nine: 9,
  ten: 10
}

p number.reject! { |word, digit| digit < 5 }