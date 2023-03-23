require_relative 'spec_helper'

describe Game do
  before :each do
    @new_first_game = Game.new('23/02/2000', 'Y', '2022/02/22')
    @new_second_game = Game.new('23/01/2010', 'Y', '2008/02/22')
  end
  describe '#can_be_archived' do
    it 'returns the correct archived status' do
      expect(@new_first_game.can_be_archived?).to be false
      expect(@new_second_game.can_be_archived?).to be true
    end
  end
end
