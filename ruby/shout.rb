module Shout
	#some methods
	def self.yell_angrily(words)
    words + "!!!" + " :("
  end
  def self.yelling_happily(words)
    words + "!!!" + " :)"
  end
end

p Shout.yell_angrily("Whats your problem?")
p Shout.yelling_happily("Lets party")