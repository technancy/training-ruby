require_relative 'guess_my_number'

describe NumberGuesser do
  let(:player) { NumberGuesser.new }

  it 'makes an initial guess between 1 and 100' do
    #pending
    expect(guess).to be <= 100
    expect(guess).to be >= 1
  end

  it 'will guess lower' do
    #pending
    first_guess = player.guess
    player.lower
    expect(guess).to be < first_guess
  end

  it 'will guess higher' do
    #pending
    first_guess = player.guess
    player.higher
    expect(guess).to be > first_guess
  end

  it 'guesses all the way down to 1 efficiently' do
    #pending
    expect_to_guess_until(1)
  end

  it 'guesses all the way up to 100 efficiently' do
    #pending
    expect_to_guess_until(100)
  end

  it 'guesses 37' do
    #pending
    expect_to_guess_until(37)
  end

  it 'guesses 99' do
    #pending
    expect_to_guess_until(99)
  end

  it 'guesses 2' do
    #pending
    expect_to_guess_until(2)
  end

  #it 'guesses all the things' do
   # 1.upto(100) do |n|
    #  expect_to_guess_until(n)
   # end
  #end

  def expect_to_guess_until(number)
    #player.guess , player=NumberGuesser.new)
    guesses = 0
    until guess == number
      raise "num: #{number}, too many guesses, you got to: #{guess}" if guesses > 10
      puts guess
      if guess < number
        player.higher
      else
        player.lower
      end
      guesses += 1
    end
    expect(guess).to eq(number)
  end

  def guess
    player.guess
  end
end
