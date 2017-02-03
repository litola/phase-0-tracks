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