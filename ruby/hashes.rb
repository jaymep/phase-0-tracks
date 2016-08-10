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
#   If value entered (#to_sym) is a key value
#     Ask for new value
#     If key is for boolean
#       Translate to true/false
#       Overwrite value
#     else
#       Overwrite value for key
#   Else (or "none", "" or " " entered)
#     "No changes made." ? "Client added."
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

puts "Theme:"
client[:theme] = gets.chomp

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

client.each do |field, info|
  puts "#{field}: #{info}"
end

puts "Any changes?"
to_change = gets.chomp
to_change = to_change.to_sym

if client.keys.include? to_change
  puts "Correction?"
  new_val = gets.chomp
  if (to_change == :carpet || to_change == :wallpaper) && (new_val == "Y" || new_val == "y")
    client[to_change] = true
  elsif (to_change == :carpet || to_change == :wallpaper) && (new_val == "N" || new_val == "n")
    client[to_change] = false
  else
    client[to_change] = new_val
  end
else
  puts "Client added."
end

client.each do |field, info|
  puts "#{field}: #{info}"
end

