#PSEUDO CODE
#Get agents real name (asume we just get name and lastname)
#separate into first and lastname 
#swap first and lastname
#change to next letter
#if vowel 'a,e,i,o,u'
# => change to next
# if consonant 
# => change to next consonant 'bcdfghjklmnpqrstvwxyz'

#BUSINESS LOGIC 
# => returns an array of swapped name and lastname
def swap_names (fullname) 
	fullname.rotate!
end

def split_into_chars (fullname)
	fullname.map!{|n| n.split('')}
end

def checks_vowel_or_consonant(fullname)
vowel = 'aeiou'
consonant = 'bcdfghjklmnpqrstvwxyz'
	fullname.each do |word| 
		word.each do |letter|
			v_index = vowel.index(letter) 
			c_index = consonant.index(letter) 
			if  v_index != nil
			 	change_vowel(letter,v_index)			
			end
			if c_index != nil 
				change_consonant(letter,c_index)
			end
		end
	end
end

def change_vowel (letter,v_index)
vowel = 'aeiou'
	if v_index == 4
 		letter[0] = vowel[0]
 	else
 		letter[0] = vowel[v_index +1]
	end	
end

def change_consonant (letter,c_index)
consonant = 'bcdfghjklmnpqrstvwxyz'
	if c_index == 20 
 		letter[0] = consonant[0]
 	else
		letter[0] = consonant[c_index +1]
	end
end

def join_name_decorate (fullname)
	fullname.map!{|l| l.join('')}
	fullname.map!{|w| w.capitalize}
end
#User Interface
puts "Whats your name and lastname?"
fullname = gets.chomp.downcase.split(' ')
swap_names(fullname)
split_into_chars(fullname)
checks_vowel_or_consonant(fullname)
join_name_decorate(fullname)
puts "Your new identity is #{fullname.join(' ')}, Good Luck agent!"
