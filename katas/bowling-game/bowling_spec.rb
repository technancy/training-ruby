class Bowling

  attr_accessor :a, :b, :frames, :score, :nxt

  def initialize
    @frames = []
    @score = 0
  end

  def frame_type(a, b)  
  # find out what type of frame it is
  # if normal just record the score which will always be less than 10

      @frames << (a + b) if a + b < 10  #normal frame

      if a + b == 10
        if a == 10                      #strike frame
          @frames << "strike"
        else
          @frames << "spare"            #spare frame
        end
      end   

    end


    def tally_up
    # once all turns have been thrown 
    # decide which calculation to use, depending on the frame_type
    # and return the total score

    @nxt = 0 # keep count of the Next Turn index number

    @frames.each do |turn|

      @nxt = @nxt + 1

      calc_normal(turn) if (turn != "strike" && turn != "spare")
      calc_spare if turn == "spare"
      calc_strike if turn == "strike"

    end

    return @score

  end

  def calc_strike

    look_ahead = []   # look ahead at the next 2 frames

    if @frames[@nxt + 1].nil?
    # There aren't enough frames ahead left to count a full strike
    # You may be on the second to last frame
    # so I'm going to calculate this as if it was a spare
      calc_spare
    end

    look_ahead << @frames[@nxt] 
    look_ahead << @frames[@nxt + 1] 
    

    if look_ahead[0].is_a?(String) && look_ahead[1].is_a?(String)
      @score = @score + 30
    elsif look_ahead[0].is_a?(String) && look_ahead[1].is_a?(Numeric)
      @score = @score + 20 + look_ahead[1]
    elsif look_ahead[0].is_a?(Numeric) && look_ahead[1].is_a?(String)
      @score = @score + 20 + look_ahead[0]
    elsif look_ahead[0].is_a?(Numeric) && look_ahead[1].is_a?(Numeric)
      @score = @score + 10 + look_ahead[0] + look_ahead[1]
    end

  end

  def calc_spare

    look_ahead = @frames[@nxt]   # look ahead at the next frame

    if look_ahead.is_a?(Numeric)  
      # next frame is normal - so should count spare's 10 + normal frame's number
      @score = (@score + 10) + look_ahead
    elsif look_ahead.nil? 
      # there aren't enough frames ahead to calc as spare
      # so you must be on the last turn having scored a strike or a spare
      @score = (@score + 10)
    else   
      # next frame is either a strike or spare - so should be counted as an extra 10
      @score = (@score + 10) + 10
    end

  end

  def calc_normal(turn)
    @score = @score + turn
  end

  def frame_bonus(a, b)
    @score = @score + (a + b)
  end

end


describe "Bowling" do
  subject { Bowling.new }

  it 'counts score if under 10 pins knocked down' do
    subject.frame_type(6,1)
    expect(subject.frames).to eq([7])
  end

  it 'counts 10 pins knocked down' do
    subject.frame_type(5,5)
    expect(subject.frames).to eq(["spare"])
  end

  it 'remembers 2 frames played and the last one having scored a spare' do
    subject.frame_type(6,1)
    subject.frame_type(5,5)
    expect(subject.frames).to eq([7,"spare"])
  end

  it 'records a strike in the 3rd frame' do
    subject.frame_type(6,1)
    subject.frame_type(5,5)
    subject.frame_type(10,0)
    expect(subject.frames).to eq([7, "spare", "strike"])
  end

  it 'records all 10 frames' do
    subject.frame_type(0,1)  #1
    subject.frame_type(0,1)  #2
    subject.frame_type(10,0) #3
    subject.frame_type(0,1)  #4
    subject.frame_type(0,1)  #5
    subject.frame_type(0,1)  #6
    subject.frame_type(0,1)  #7
    subject.frame_type(0,1)  #8
    subject.frame_type(0,1)  #9
    subject.frame_type(0,1)  #10
    expect(subject.frames).to eq([1, 1, "strike", 1, 1, 1, 1, 1, 1, 1])
  end

  it 'records all 10 frames and tallies up the final score correctly' do
    subject.frame_type(10,0) #1
    subject.frame_type(5,0)  #2
    subject.frame_type(10,0) #3 52
    subject.frame_type(2,0)  #4 54
    subject.frame_type(5,5)  #5 64
    subject.frame_type(0,0)  #6
    subject.frame_type(0,0)  #7
    subject.frame_type(0,0)  #8
    subject.frame_type(0,0)  #9
    subject.frame_type(0,0)  #10
    expect(subject.tally_up).to eq(64)
  end

  it 'tallies up the final score correctly if all strikes' do
    subject.frame_type(10,0) #1 
    subject.frame_type(10,0) #2
    subject.frame_type(10,0) #3 
    subject.frame_type(10,0) #4 
    subject.frame_type(10,0) #5 
    subject.frame_type(10,0) #6
    subject.frame_type(10,0) #7
    subject.frame_type(10,0) #8
    subject.frame_type(10,0) #9
    subject.frame_type(10,0) #10
    expect(subject.tally_up).to eq(270)
  end

  it 'factors in bonus rounds on scoring a strike on the last frame' do
    subject.frame_type(10,0) #1 
    subject.frame_type(10,0) #2
    subject.frame_type(10,0) #3 
    subject.frame_type(10,0) #4 
    subject.frame_type(10,0) #5 
    subject.frame_type(10,0) #6
    subject.frame_type(10,0) #7
    subject.frame_type(10,0) #8
    subject.frame_type(10,0) #9
    subject.frame_type(10,0) #10
    subject.frame_bonus(10,0) #11 bonus
    subject.frame_bonus(10,0) #12 bonus
    expect(subject.tally_up).to eq(290)
  end

end


