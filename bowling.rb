# Code kata for bowling game
require 'kata'

kata "Bowling" do
  context 'the Game class' do
    requirement 'the Game class should represent a single game' do
      detail 'it should have a roll method taking a number'
      detail 'it should have a score method returning the score'
    end
  end

  context 'scoring' do
    requirement 'the score of a gutter game should be 0' do
      detail 'so 20 rolls of 0 pins each equals a score of 0'
    end

    requirement 'the score of a frame should be the number of pins knocked down' do
      example 'after 2 rolls of 3 and 5, the score should be 8'
    end

    requirement 'after a spare, the frame gets a bonus equal to the next roll' do
      example 'after 3 rolls of 4, 6 and 7, the score should be 10 + 7 + 7 = 24'
      example 'after 3 rolls of 0, 10 and 3, the score should be 10 + 3 + 3 = 16'
      example 'after 5 rolls of 3, 2, 6, 4 and 4, the score should be 5 + 10 + 4 + 4 = 23'
      example 'after 5 rolls of 9, 1, 7, 3 and 6, the score should be 10 + 7 + 10 + 6 + 6 = 39'
    end

    requirement 'after a strike, the frame gets a bonus equal to the next 2 rolls' do
      example 'after 3 rolls of 10, 4 and 3, the score should be 10 + 4 + 3 = 17'
      example 'after 3 rolls of 10, 10 and 6, the score should be 10 + 10 + 6 + 10 + 6 + 6 = 48'
    end

    requirement 'the score of a perfect game should be 300' do
      detail 'for 11 rolls of 10 pins the score is 300'
    end
  end
end
