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
end

#DRIVER CODE 
puppy = Puppy.new
puppy.speak(5)
puts "---------"
puppy.speak(3)
puts "---------"
puppy.roll_over
puts "---------"