require './f_classes/item'
require './f_classes/things/game'
require './app'

describe Game do
  context 'Given an instance of a game' do
    before :each do
      @games = Game.new(true)
    end

    it 'return a new game' do
      expect(@games).to be_instance_of Game
    end
  end
end
