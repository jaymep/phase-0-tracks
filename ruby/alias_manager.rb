# Objectives:
# Swapping the first and last name.
# Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet. So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.

# Challenges:
# When will it be helpful to convert the string to an array to work with it more easily?
# How will you figure out whether a letter is a vowel?
# How will you deal with the fact that some letters are uppercase?
# How will you handle edge cases?

# Pseudocode:
# Ask user for name, make lower case, split on space
# Reverse name array, join array with spaces
# For each letter:
# If vowel, next_vowel,
# Else if consonant, next_consonant
# Else #next
# map next_vowel
#   find index of vowel in string
#   add 1 to index
#   return new vowel
# map next_consonant
#   find index of consonant in string
#   add 1 to index
#   return new consonant
# join into consonant string, capitalize

# Refactors since initial submission:
# Corrected variables to constants
# Added steps to capitalize each part of spy name
# Fixed loop to remove vague true and break if

# Reference strings:
# Changed to constants -- feedback from DBC guide
VOWEL = "aeioua"
CONSONANT = "bcdfghjklmnpqrstvwxyzb"
new_identity = ""

def next_vowel(char)
  vowel_index = VOWEL.index(char) + 1
  new_vowel = VOWEL[vowel_index]
end

def next_consonant(char)
  consonant_index = CONSONANT.index(char) + 1
  new_consonant = CONSONANT[consonant_index]
end

spy_roster = Hash.new

puts "What is your name? ('quit' when finished)"
identity =  gets.chomp

while identity != 'quit'
  new_array = Array.new

  id_samecase = identity.downcase
  reversed = id_samecase.split(" ").reverse
  reverse_id = reversed.join(" ")
  reverse_array = reverse_id.chars

  reverse_array.each do |char|
    if VOWEL.include? char
      new_array << next_vowel(char)
    elsif CONSONANT.include? char
      new_array << next_consonant(char)
    else
      new_array << char
    end 
    new_identity_lower = new_array.join("")
    new_identity_arr = new_identity_lower.split(" ")
    new_identity_arr.map! { |name| name.capitalize }
    new_identity = new_identity_arr.join(" ")
  end
  spy_roster.store(identity, new_identity)
  puts"#{identity} is now #{new_identity}."
  puts ""
  puts "What is your name? ('quit' when finished)"
  identity =  gets.chomp
end


puts spy_roster.each { |real, fake| puts"#{real} is now #{fake}."}


