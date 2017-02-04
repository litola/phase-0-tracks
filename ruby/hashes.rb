#PSEUDO CODE
#1.PROMPT THE INFO (NAME, AGE, CHILDREN, DECOR THEME, EMAIL, PHONE, )
#2. CONVERT TO APPROPIATE DATA TYPE AND SAVE 
#3. PRINT HASH BACK 
#4. ASK IF ANY CHANGE NEEDED, CALLING BY SYMBOL
#5. UPDATE IF ANY CHANGE NEEDED
#6.PRINT LATEST VERSION OF HASH 

client_info = {}

puts "Whats your name?"
client_info[:name] = gets.chomp.to_s

puts "Whats your age?"
client_info[:age] = gets.chomp.to_i

puts "how many childs do you have?"
client_info[:children] = gets.chomp.to_i

puts "Whats your decor theme?"
client_info[:decor_theme] = gets.chomp.to_s

puts client_info

puts "Do you want to update something? (none, to skip)"
puts "(name, age, children, decor_theme)"
update = gets.chomp.downcase
case update
	when "none"
		puts "Thank you!"
	else
	client_info.each do |k,v| 
		if update == k.to_s
			puts "whats the correct #{k} value?"
			client_info[k.to_sym] = gets.chomp
		end
	end
end
puts "Latest update: #{client_info}"

