# Encrypt: take each letter in string and advance 1 letter in alphabet
# Determine length and use counter to loop
# Create new string from results

def encrypt(str)
  len =  str.length
  counter = 0
  message = ""
  while counter < len
     message << str[counter].next
    counter += 1
  end
  p message
end

#Test string
encrypt("hello")