# Encrypt: take each letter in string and advance 1 letter in alphabet
# Determine length and use counter to loop
# Create new string from results

def encrypt(str)
  len =  str.length
  counter = 0
  message = ""
  while counter < len
    if str[counter] == "z"
      note = "a"
    else
      note = str[counter].next
    end
    message << note
    counter += 1
  end
    p message
end

# Decrypt: take each letter in string and go back 1 letter in alphabet
# Find each letter's position in alphabet and subtract 1 to get new letter
# Create new string from results

def decrypt(msg)
  dlen = msg.length
  pos = 0
  result = ""
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  while pos < dlen
    secret = alphabet.index(msg[pos])
    agent = secret - 1
    result << alphabet[agent]
    pos += 1 
  end
  p result
end

#Test string
encrypt("abc")
encrypt("zed")
encrypt("zzz")

#Test string
decrypt("bcd")
decrypt("afe")


