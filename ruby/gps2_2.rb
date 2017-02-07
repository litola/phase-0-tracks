# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # items_list - split the string by spaces
  # iterate trough the list 
  # create the hash with key(item) and set default quantity (value = 1)
  # iterate through the item list hash 
  # print the list to the console [can you use one of your other methods here?]
# output: [hash{item: quantity}]

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
# iterate throught the keys to check if the item exists 
# if it exits
# 	add to the end of the hash the item with quantity if specified
# else
# 	otherwise set default value = 1  
# output: [updated item hash ]

# Method to remove an item from the list
# input: list, item name
# steps:
# iterate throught the keys to check if the item exists 
# if it does delete the item 
# if not return item not found
# output: [updated hash ]

# Method to update the quantity of an item
# input: list, item name, quantity 
# steps:
# iterate trhough the keys to check if the item exists
# if it does exist update to  quantity 
# output:[updated hash ]

# Method to print a list and make it look pretty
# input: hash 
# steps:
# iterate through keys and values 
# format the string 
# output: strings 