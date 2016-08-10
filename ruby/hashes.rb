# Write a program that will allow an interior designer to enter the
# details of a given client: the client's name, age, number of
# children, decor theme, and so on (you can choose your own as long as
# it's a good mix of string, integer, and boolean data)

# Create new hash
# Ask user to input data for each key
# Convert input to appropriate data type
# Add key/value pair to hash
# Print all key/value pairs
# 
# Ask user if there are any changes
#   If "none", "" or " " entered
#     "No changes made."
#   elsif key entered (#to_sym)
#     Ask for new value
#     Overwrite value for key
#   end
#   Print all key/value pairs

client = Hash.new

puts "Name:"
client[:name] = gets.chomp

puts "Age:"
age = gets.chomp
age =  age.to_i
client[:age] = age

puts "Address:"
client[:address] = gets.chomp

puts "Favorite color:"
client[:color] = gets.chomp

puts "Carpet: (Y/N)"
floor = gets.chomp
if floor == "Y" || floor == "y"
  client[:carpet] = true
else
  client[:carpet] = false
end

puts "Wallpaper: (Y/N)"
wall = gets.chomp
if wall == "Y" || wall == "y"
  client[:wallpaper] = true
else
  client[:wallpaper] = false
end

puts "Budget:"
money = gets.chomp
client[:budget] = money

def recap
  client.each do |field, info|
    puts "#{field}: #{info}"
end