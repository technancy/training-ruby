class NumberGuesser

	def initialize
		@max = 100
		@min = 1
	end

	def guess
		@guess = (@max + @min) /2
	end

	def lower
		@max = @guess -1
	end

	def higher
		@min = @guess + 1
	end


end

def guess_my_number
  @guesser = NumberGuesser.new
  @guesser.guess
end

def higher
  @guesser.higher
  @guesser.guess
end

def lower
  @guesser.lower
  @guesser.guess
end
