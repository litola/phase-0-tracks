#integers operations available +, -, *,/
def calculate(num1,operation,num2)
  case operation
  when "+"
    answer = num1+num2
  when "-"
    answer = num1 - num2
  when "*"
    answer = num1 * num2
  when "/"
    answer = num1/num2  
  end
end 

# #DRIVER CODE
# p calculate(5, '+', 7)# =>  12
# p calculate(10,'-',5)# => 5
# p calculate(2,'*',5) # =>  10
# p calculate(20,'/',5)# => 4 

#USER INTERFACE
more_calculations = true
ops =[]
calculations = 0 
while more_calculations do 
  puts "Type your operation (+,-,*,/). Remember its limited for just one operation at a time."
  operation = gets.chomp
  ops << operation 
  if operation == "done"
    more_calculations = false
    puts "#{calculations} calculations performed:"
    puts ops
  else
    calculations += 1
    puts "your answer:"
    p answer = calculate(operation)
    ops << answer
  end
end