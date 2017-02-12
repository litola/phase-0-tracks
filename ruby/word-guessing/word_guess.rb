#PSEUDO CODE 
#User 1: Enters word or phrase to be guess
# => save word or phrase
# => change word or phrase to ex.    word to _ _ _ _
# => limit the number of guesses to letters in phrase or word
class Word_guess_game
	attr_accessor :word, :guess_limit
	#Initializes the game with a word and setting the limit of tries with the word length plus 3 
	def initialize(word)
		@word = word
		@guess_limit = word.length + 3
	end
	#the initial word changes it from "word" -> "w o r d" 
	def separate_with_space
		@word.chars.join(" ")
	end
	#changes from "w o r d" -> "_ _ _ _"
	def change_char_to_blank(new_word)
		index = 0 
		blank_word = ""
		while index < new_word.length do 
			char_to_change = new_word[index]
			if char_to_change == " "
				blank_word[index] = new_word[index]
			else 
				blank_word[index] = "_"
			end
			index += 1
		end
		blank_word
	end
	# gets "w o r d", letter trying to guess "w", the last known guessed word if first time its "_ _ _ _"
	# returns "w _ _ _" the updated guessed word
	def check_if_guess(new_word, guess_char, guessed_word)
		guess_word = guessed_word
		index = 0 
		while index < new_word.length do
			if new_word[index] == guess_char
				guess_word[index] = guess_char
			elsif guess_word[index] != ""
					guessed_word[index] = guessed_word[index]
			elsif new_word[index] == " "
				guess_word[index] = " "
			else
				guess_word[index] = "_"
			end
			index += 1
		end
		guess_word
	end
#returns true if the char is in the guessed array 
	def repeated_guess?(guess_char,guessed_chars)
		guessed_chars.include?(guess_char)	
	end
end
#User 2: Make N guesses to win or lose
# =>  Display the initial word or phrase in blank spaces to be guessed word = _ _ _ _
# => If letter in phrase display W _ _ _ , N guesses left!
# => If all letters guessed, win:  "Congratulations! You won!" message 
# => else lost: "Better luck next time!"
#DRIVER CODE
#Player 1: enters the word to guess and initializes the game
puts "Player 1: Enter word to guess:"
input = gets.chomp
game = Word_guess_game.new(input)
new_word = game.separate_with_space
#displays the number of letters in the word
puts "This is the word in blank spaces to guess:"
blank_word = game.change_char_to_blank(new_word)
guesses = 0 
guessed_chars = []
guessed_word = blank_word
#set a loop to the limit the guesses
while guesses < game.guess_limit do 
	puts "you have #{game.guess_limit-guesses}"
	puts "Player 2: enter a letter to guess in word"
	guess_char = gets
	if guess_char != nil
		guess_char = guess_char.chomp
	end
	#if the guess is repeated it doesnt count, and viseversa
	if !game.repeated_guess?(guess_char,guessed_chars)
		guesses += 1
		guessed_chars << guess_char
	else
		puts "Try a different letter!"
	end
	guessed_word = game.check_if_guess(new_word, guess_char, guessed_word)
	#breaks if you guessed before the limit of guesses
	break if guessed_word == new_word
	puts guessed_word
end
#Prints the output for the player
if guessed_word == new_word
	puts "-------------------------------------"
	puts new_word
	puts "Congratulations, You won!"
	puts "-------------------------------------"
else	
	puts "-------------------------------------"
	puts "Good luck next time! correct word: #{game.word}"
	puts "-------------------------------------"
end

