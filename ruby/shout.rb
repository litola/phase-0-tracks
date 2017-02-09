# module Shout
# 	#some methods
# 	def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#   def self.yelling_happily(words)
#     words + "!!!" + " :)"
#   end
# end

# p Shout.yell_angrily("Whats your problem?")
# p Shout.yelling_happily("Lets party")

module Shout
	def yell_angrily(words)
    words + "!!!" + " :("
  end
  def yelling_happily(words)
    words + "!!!" + " :)"
  end
end

class Kid
	include Shout
end

class Teacher
	include Shout
end

kid = Kid.new
p kid.yelling_happily("Playing time")
p kid.yell_angrily("I dont want to go to sleep")

teacher = Teacher.new
p teacher.yell_angrily("Be quiet")
p teacher.yelling_happily("Thank you")