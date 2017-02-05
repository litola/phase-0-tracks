#PSEUDO CODE
#Get agents real name
#separate into first and lastname 
#swap first and lastname
#change to next letter
#if vowel 'a,e,i,o,u'
# => change to next
# if consonant 
# => change to next consonant 'bcdfghjklmnpqrstvwxyz'

puts "Whats your name and lastname"
name = gets.chomp.split(' ')

p name