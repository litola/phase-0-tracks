# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # items_list - split the string by spaces
  # iterate trough the list 
  # create the hash with key(item) and set default quantity (value = 1)
  # iterate through the item list hash 
  # print the list to the console [can you use one of your other methods here?]
# output: [hash{item: quantity}]

def create_list(items)
	grocery_list = {}
	items_array = items.split(" ")
	items_array.each { |item| grocery_list.store(item, 1) }
	grocery_list
end

p grocery_list = create_list("carrots apples cereal pizza")

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
# iterate throught the keys to check if the item exists 
# if it exits
# 	add to the end of the hash the item with quantity if specified
# else
# 	otherwise set default value = 1  
# output: [updated item hash ]

def add_item(grocery_list, item, quantity)
	if grocery_list.member?(item)
		grocery_list[item] += quantity
	else
		grocery_list.store(item, quantity)
	end
	grocery_list
end

add_item(grocery_list,"carrots",5)
add_item(grocery_list,"milk", 2)
p grocery_list

# Method to remove an item from the list
# input: list, item name
# steps:
# iterate throught the keys to check if the item exists 
# if it does delete the item 
# if not return item not found
# output: [updated hash ]

def remove_item(grocery_list, item)
	if grocery_list.member?(item)
		grocery_list.delete(item)
		puts "#{item}, successfully removed"
	else
		puts "#{item} not found"
	end
	grocery_list
end

remove_item(grocery_list,"milk")
remove_item(grocery_list, "coliflower")
p grocery_list
# Method to update the quantity of an item
# input: list, item name, quantity 
# steps:
# iterate trhough the keys to check if the item exists
# if it does exist update to  quantity 
# output:[updated hash]
def update_item(grocery_list, item, quantity)
	if grocery_list.member?(item)
		grocery_list[item] = quantity
	else
		puts "#{item} not found"
	end
	grocery_list
end

update_item(grocery_list, "apples",6)
p grocery_list
# Method to print a list and make it look pretty
# input: hash 
# steps:
# iterate through keys and values 
# format the string 
# output: strings 
def print_list(grocery_list)
	grocery_list.each {|item,quantity| puts "we have #{quantity} #{item}" }
	puts "_____________________"
	puts "Total items - #{grocery_list.length}"
end

print_list(grocery_list)

