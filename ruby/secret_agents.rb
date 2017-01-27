#define encrypt method
#seperate each character or letter
#add next method to each letter and save it


def encrypt (password)
	index = 0 
	length = password.length
	while index < length
		if (password[index] == " ")
			
			password[index] = password[index]

		elsif (password[index] == "z")
			password[index] = "a"
		else
			password[index] = password[index].next!
		end

		index+=1
	end
	password
	 
end	

#define decrypt method
#seperate each character or letter
#decrement a letter from the alphabet

def decrypt (encrypted_pass)
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	index = 0 
	while index < encrypted_pass.length
		if (encrypted_pass[index] == " ")
			
			encrypted_pass[index] = encrypted_pass[index]

		else
			n = alphabet.index(encrypted_pass[index])-1
			encrypted_pass[index] = alphabet[n]
		end

		index+=1
	end

	encrypted_pass
end	



#DRIVING CODE 

#Ask for option 
#Process the response
#call the apropriate method for encrypt or decrypt
#print the processed info 

puts "Would you like to decrypt or encrypt a password?"
option = gets.chomp
if (option == "encrypt")
	puts "Enter your password for encryption"
	password = gets.chomp
	puts "Here is your encrypted password:"
	puts encrypt(password)
else (option == "decrypt")
	puts "Enter your password for decryption"
	password = gets.chomp
	puts "Here is your decrypted password:"
	puts decrypt(password)
end




# puts encrypt("xyz")
# puts encrypt("abc")
# puts encrypt("zed")
# puts encrypt ("swordfish")

# puts decrypt("txpsegjti")
# puts decrypt(encrypt("swordfish"))
# #It works because the last statement of the encrypt method returns a string that its used as an input on the 
# #decrypt method.
# puts decrypt("bcd")
# puts decrypt("afe")
