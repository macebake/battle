require 'game'
require 'player'

describe Game do
  let(:player_1){double :player_1}
  let(:player_2){double :player_2}
  subject(:game){described_class.new(player_1, player_2)}

  describe '#first_player' do
    it 'finds first player' do
      expect(game.first_player).to eq player_1
    end
  end

  describe '#last_player' do
    it 'finds last player' do
      expect(game.last_player).to eq player_2
    end
  end

  describe '#attack' do
    it 'should reduce hit points' do
      expect(player_1).to receive(:receive_damage)
      game.attack(player_1)
    end
  end
end
