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
p "fibonacci of 100" 
p fib(100)[-1] == 218922995834555169026

# [1,3,2,5,4]
# [1,2,3,5,4]
# [1,2,3,4,5]

# Psuedo Code for Bubble Sorting
# 
# for each item in the array
# 	if the item adjacent to it is smaller
# 		swap positions
# 	move to the next item
# while aleast one item was swapped
# 	repeat the for loop above
# return the newly sorted array

def bubble_sort(array)
	current_index = 0
	swap = false
	count_swaps = 0
	loop do 
		array.each do |item|
			break if current_index == array.length - 1 # breaks if its the last item in the array 

			next_item = array[current_index + 1]

			if item > next_item 
				array[current_index] = next_item
				array[current_index + 1] = item
				swap = true
				count_swaps += 1
			end

			current_index+=1
		end

		if swap 
			swap = false
			current_index = 0
		else 
			break
		end
	end
	p count_swaps
	array
end

p bubble_sort([250,100,12,200,4,3,0,56,22, 30,1])