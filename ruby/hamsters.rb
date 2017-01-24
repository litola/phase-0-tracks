puts "Enter the name of the hamster"
hname = gets.chomp
puts "Enter the volume level of the hamster, between 1 and 10"
hvol = gets.chomp.to_f
puts "Enter the fur color of the hamster"
hcol = gets.chomp
puts "Is the hamster a good candidate for adoption? (y/n)"
adopt = gets.chomp
puts "What is the estimated age of the hamster in years? Please enter a number only."
age = gets.chomp
  if age.empty? 
    age = nil
  else age = age.to_i
  end
# print age.nil?

puts "#{hname} is a hamster that is #{age} years old, with #{hcol} fur and has a loudness level of #{hvol}. Recommended for adoption: #{adopt}"