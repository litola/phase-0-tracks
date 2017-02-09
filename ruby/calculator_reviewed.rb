#integers operations available +, -, *,/
#splits the string by spaces
  #input:"2 + 3"
  #output:["2","+","3"]
def divide_by_space(input)
  input_spliced = input.split(" ")
end
#selects and do the operation
  #input: ["2","+","3"]
  #output: an integer
def do_operation(operation)
    num1 = operation[0].to_i
    num2 = operation[2].to_i
  case operation[1]
  when "+"
   num1 + num2
  when "-"
    num1 - num2
  when "*"
    num1 * num2
  when "/"
   num1 / num2 
  end
end 
#DRIVER CODE
  #p divide_by_space("2 + 3")
#USER INTERFACE
#user enters operation with number space operation space number format
#until user types "done" to exit keep doing calculations
#if done print operations
#else keep doind operations
more_calculations = true
operations = {}
begin 
   puts "Enter your operation, type 'done' when finished"
    input = gets.chomp
  if input == "done"
    more_calculations = false
  else
    input_spliced = divide_by_space(input)
    answer = do_operation(input_spliced)
    operations.store(input, answer)
    puts answer
  end 
end while more_calculations 
puts "#{operations.length} calculation(s) performed:"
operations.each do |operation , answer|
  puts "#{operation} = #{answer}"
end
