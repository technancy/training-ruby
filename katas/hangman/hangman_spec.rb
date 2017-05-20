class Placeholder
	def initialize(word)
	  @word = word
	  @placeholder = "_" * @word.size
	  @count = 0
	end

	def make_guess(guess)
		if not_in_word(guess)
			bad_guess(guess)
		else
			@word.chars.each_with_index do |letter, index|
				update_placeholder(index, letter) if letter == guess
					
			end
		end
		all_letters_guessed
		
	end

	def guess_word(guess)
		if guess == @word
			return "You Win!"
		else
			bad_guess(guess)
		end
	end

	def all_letters_guessed
		! @placeholder.include?('_')
	end

	def to_s
		@placeholder
	end

	def update_placeholder(index, guess)
		@placeholder[index] = guess
	end

	private

	def bad_guess(guess)
		increment_count

		raise "You LOST!!" if @count == 11
	end


	def not_in_word(guess)
		! @word.include?(guess)
	end

	def increment_count
		@count += 1
	end
end

describe 'playing hangman' do
	subject{ Placeholder.new("hangman") }

	it 'display a masked word' do
		expect(subject.to_s).to eq("_______")
	end

	it 'reveals letters guessed correctly' do
		subject.make_guess("h")
		expect(subject.to_s).to eq("h______")

		subject.make_guess("a")
		expect(subject.to_s).to eq("ha___a_")
	end

	it 'rejects an incorrect letter' do
		subject.make_guess("j")
		expect(subject.to_s).to eq("_______")
	end

	it 'accepts the correct word as a win' do
		expect(subject.guess_word("hangman")).to eq "You Win!"
	end

	it 'tells us if we guess lots of bad letters' do
		10.times do
			subject.make_guess('p')
		end

		expect{ subject.make_guess('z') }.to raise_error('You LOST!!')
	end

	it 'tells us if we guess lots of bad words' do
		10.times do
			subject.make_guess('p')
		end

		expect{ subject.guess_word('zebra') }.to raise_error("You LOST!!")
	end
	it 'completes a win of correct letter guesses' do
		subject.make_guess('h')
		subject.make_guess('a')
		subject.make_guess('n')
		subject.make_guess('g')
		subject.make_guess('m')
		expect(subject.all_letters_guessed).to eq true
	end

	it 'fully reveals itself on correct word guess or correct final letter guess'
	it 'rejects an incorrect word'
	
end