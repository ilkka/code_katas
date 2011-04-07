# Code kata for bowling game
require 'kata'

kata 'Bowling' do
  context 'roll method' do
    requirement 'create the roll method for storing the felled pins' do
      detail 'it should take as parameter the number of pins knocked over'
      detail 'it should accept pin amounts between 0 and 10 inclusive'
    end
  end

  context 'score method' do
    requirement 'create the score method that returns the score for the game' do
      detail 'it should return a number between 0 and 300 inclusive'
      detail 'the score for a gutter game is 0'
      detail 'the score for a frame is the number of pins knocked over plus the bonus'
      detail 'for a spare, the bonus is the number of pins felled on the next roll'
      detail 'for a strike, the bonus is the number of pins felled on the next two rolls'
    end
  end
end
