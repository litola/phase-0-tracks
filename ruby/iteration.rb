def print_block
    x = 20
    y = 10
    puts "this is before running the block"
    yield(x, y)
    puts "this is after running the block"
end
print_block { |x,y| puts "name is #{x} and age is #{y}."}
sports = ["Footbal", "Soccer", "Tennis"]
leagues = {
    football: "NFL",
    soccer: "MLS",
    tennis: "Summer Circuit" 
}
sports.each {|s| puts "sport: #{s}"} 
leagues.each{|key, value| puts "The #{key} league is #{value}"}
sports.map! do |s| 
        s = s.upcase + " LEAGUE"
    end
p sports
numbers = [ 25, 14, 2, 4, 56, 12]
numbers.delete_if {|number| number <= 12}
p numbers
numbers = [ 25, 14, 2, 4, 56, 12]
lnumbers = numbers.take_while{|number|  number < 55 }
p lnumbers
numbers = [ 25, 14, 2, 4, 56, 12]
lownumbers = numbers.select {|number| number <= 12}
p lownumbers
letters = {
    :a => "A",
    :b => "B",
    :c => "C"
}
letters.delete_if{|key,value| key == 'b'.to_sym}
p letters 
letters = {
    "a" => "A",
    "b" => "B",
    "c" => "C"
}
fletters = letters.select{|k,v| k < "b"}
p fletters