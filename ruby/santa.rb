class Santa
	attr_reader :ethnicity, :reindeer_ranking
	attr_accessor :gender, :age
	def initialize(gender, ethnicity)
		p "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = rand(140)
		
	end

	def speak 
		p "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		p "That was a good #{cookie_type}!" 
	end

	def celebrate_birthday
		@age += 1
		p "Lets celebrate my birthday number #{@age}"
	end

	def get_mad_at(reindeer)
		@reindeer_ranking.delete(reindeer)
		@reindeer_ranking<<reindeer
	end

end
# santa1 = Santa.new
# santa1.speak
# santa1.eat_milk_and_cookies("oreo")

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

100000.times do 
	santas << Santa.new(example_genders[rand(0..6)],example_ethnicities[rand(0..6)],)
end

count = 1 
santas.each do |santa|
	p  "#{count}. Gender: #{santa.gender}, Ethnicity: #{santa.ethnicity} Age: #{santa.age}"
	count += 1
end

robert = Santa.new(example_genders[rand(0..6)],example_ethnicities[rand(0..6)])
p "First random gender: #{robert.gender}"
robert.gender = "male"
p "Second gender: #{robert.gender}"
p robert.age
robert.celebrate_birthday
p robert.age

p robert.reindeer_ranking
p robert.get_mad_at("Rudolph")
p robert.get_mad_at("Dasher")
p robert.get_mad_at("Vixen")