
vampire = 0 
wolves = 0 

puts "how many employees?"
employees = gets.chomp.to_i


employees.times{
	puts "whats your name?"
	name = gets.chomp.downcase

	puts "how old are you ?"
	age = gets.chomp.to_i
	puts "what year were you born?"
	year = gets.chomp.to_i

	current_year = Time.new.year
	if(current_year-year == age)
		correct_age = true
	else
		wrong_age = true
	end


	puts "our company cafeteria serves garlic bread. should we order some for you?(y/n)"
	likes_garlic = gets.chomp.downcase

	if (likes_garlic == "y")
		likes_garlic = true
	else
		hates_garlic = true
	end

	puts "would you like to enroll in the company's health insurance?(y/n)"
	insurance = gets.chomp
	if (insurance == "y")
		waives_insurance = false	
	else
		waives_insurance = true
	end

			
	if(name == "drake cula" || name == "tu fang")
		vampire = "DAV"
	elsif (wrong_age&&hates_garlic&&waives_insurance)
		vampire = "ACAV"
	elsif(correct_age && (likes_garlic || waives_insurance))
	 	vampire= "PNAV"
	elsif (wrong_age&&(hates_garlic || waives_insurance))
	 	vampire = "PAV"
	else
	 	vampire = "OTHER" 
	 end


	alergies = "none"

	until alergies == "sunshine" || alergies == "done"
		puts "Type youre alergies. type done when finished."
		alergies = gets.chomp.downcase

		if(alergies == "sunshine")
			vampire = "PAV"
		elsif(alergies == "done")
			break
		end
	end
	
	case vampire
	when "DAV"
		puts "Definitely a vampire"
	when "ACAV"
		puts "Almost certainly a vampire"
	when "PNAV"
		puts "Probably not a vampire"
	when "PAV"
		puts "Probably a vampire"
	else 
		puts  "Result Inconclusive"
	end

	print "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
}
