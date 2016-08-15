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

#Reference strings:
@vowel = "aeioua"
@consonant = "bcdfghjklmnpqrstvwxyzb"

def next_vowel(char)
  vowel_index = @vowel.index(char) + 1
  new_vowel = @vowel[vowel_index]
end

def next_consonant(char)
  consonant_index = @consonant.index(char) + 1
  new_consonant = @consonant[consonant_index]
end
