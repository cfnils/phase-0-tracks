#encrypt
#Calculate length of string
#Starting with each letter, reassign the next letter in the alphabet to that character in the string.

def encrypt(word)
 
  position = 0
  newstring = ""
  while position < word.length
    crypt = word[position].next
    if crypt == "aa"
      crypt = "a"
    end
    newstring += crypt
    position += 1
  end
  newstring
end  
  

#decrypt
#take passed string and calculate length of string
#staring with the first letter, add the previous letter in the alphabet to our output string variable until we get to the last letter

def decrypt(word)
 
  position = 0
  newstring = ""
  alpha = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ !"
    while position < word.length
        current = alpha.index(word[position])
        crypt = alpha[current - 1]
        if crypt == "!"
          crypt = "z"
        end
        newstring += crypt
        position += 1
    end
  newstring
end

# puts encrypt ("abc")
# puts encrypt ("zed")
# puts decrypt ("bcd")
# puts decrypt ("afe")

#The following is a test of a nested call of encrypt and decrypt, 
#to make sure the methods are functioning properly.

#puts decrypt(encrypt("The duck flies at midnight"))

puts "Would you like to decrypt or encrypt a password?"
encrypt_or_decrypt = gets.chomp
puts "Please enter password to be #{encrypt_or_decrypt}ed."
password = gets.chomp

if encrypt_or_decrypt == "encrypt"
  puts "your encrypted password is #{encrypt(password)}"
elsif encrypt_or_decrypt == "decrypt"
  puts "your decrypted password is #{decrypt(password)}"
else 
  puts "I didn't understand you."
end