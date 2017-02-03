#Client Info
#declare an empty client hash
#Ask client info and store it in hash with appropriate data type 
#print back the hash 
#ask for any update if none skip and exit
#if any change make it and reprint the latest version and exit program

#BUSINESS LOGIC
questionaire = ["name", "age", "children", "decor_theme"]
client_info = {}
index_q = 0 

def get_info
	gets.chomp
end

def convert_string_to_data_type(string)
	puts "Works #{string}"
end

def convert_s_to_symbol(string)
end


#USER INTERFACE
puts "INTERIOR DESIGNER JOB APPLICATION"
puts "Please fill the information."

while index_q < questionaire.length 
	puts "#{questionaire[index_q]}: "
	input = get_info
	convert_string_to_data_type(input) 
	index_q +=1
end