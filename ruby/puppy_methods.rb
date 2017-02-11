class Puppy
	def initialize 
		puts "Initializing new puppy instance ..."
	end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number)
  	number.times { puts "Woof!"}
  end

  def roll_over
  	puts "*rolls over*"
  end

  def dog_years(human_years)
  	human_years * 7 
  end

  def play_death
  	puts "playing death.."
  end
end

#DRIVER CODE 
puppy = Puppy.new
puts "---------"
puppy.speak(5)
puts "---------"
puppy.speak(3)
puts "---------"
puppy.roll_over
puts "---------"
puts puppy.dog_years(7)
puts "---------"
puppy.play_death

class Parrot
	def initialize 
		puts "Parrot talking: Parrot initilaizing .. grrrr grrr"
	end

	def talk 
		puts "GGrrr, Grrr Parrot can talk!"
	end

	def fly(destination)
		puts "Parrot flying to #{destination}!"
	end
end

#Driver code
parrots = {}
50.times { |x| parrots.store("parrot_#{x}",Parrot.new) }

puts parrots
parrots.each do |name,parrot|
	puts "Name: #{name}"
	parrot.talk
	parrot.fly("Europe")
end

