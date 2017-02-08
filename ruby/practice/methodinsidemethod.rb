def sq (num)
	num*num
end

def call(name,age)
	a2 = sq(age)
	puts "hi #{name}, answer is #{a2}"
end

call('joe',30)