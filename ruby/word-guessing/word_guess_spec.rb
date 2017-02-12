require_relative "word_guess"
describe Word_guess_game do 
	 let(:new_game) { Word_guess_game.new("word") }
	it "gets a word and returns separated by space" do
		expect(new_game.separate_with_space).to eq "w o r d"
	end 
	it "gets a word with spaces and change to underscore" do
		expect(new_game.change_char_to_blank("w o r d")).to eq "_ _ _ _"
	end 

	it "checks if letter is in guessing word, returns new guess word" do
		expect(new_game.check_if_guess("w o r d", "w","_ _ _ _" )).to eq "w _ _ _"
	end 

	it "checks if letter is in guessing word, returns new guess word" do
		expect(new_game.check_if_guess("w o r d", "o","w _ _ _" )).to eq "w o _ _"
	end 

	it "checks if letter is in guessing word, returns new guess word" do
		expect(new_game.check_if_guess("w o r d", "w","_ o _ _" )).to eq "w o _ _"
	end 

	it "checks if letter is in guessing word, returns new guess word" do
		expect(new_game.check_if_guess("w o r d", "d","w o r _" )).to eq "w o r d"
	end 

	# it "checks limit of guesses" do
	# 	expect(new_game.repeated_guess("w", ["w"])).to eq true
	# end 


end