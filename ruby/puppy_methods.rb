class Puppy
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
puppy.speak(5)
puts "---------"
puppy.speak(3)
puts "---------"
puppy.roll_over
puts "---------"
puts puppy.dog_years(7)
puts "---------"
puppy.play_death