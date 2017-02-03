def search_array(array, number)
	counter = 0
	found = false

	array.each do |item|
		if item == number 
			found = true
			break 
		end
		counter+=1
	end

	if found
		return counter
	else
		return nil
	end	
end


arr = [42, 89, 23, 1]

p search_array(arr, 1)
p search_array(arr, 24)

def fib(number)
	array = [0,1]
	case number
	when 1
		return array = [0]
	when 2
		return array
	end
	while number > 2 do
		array << array[-2] + array[-1]
		number-= 1
	end
	array
end

p fib(1)
p fib(6)
p fib(100)[-1] == 218922995834555169026