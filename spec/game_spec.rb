require 'game'

describe Game do
  let(:mara)  { double :mara }
  let(:harry) { double :harry }
  let(:game) { Game.new(harry, mara) }
  before(:each) { allow(harry).to receive(:reduce_hp) {true}}
  before(:each) { allow(harry).to receive(:hp) {Player::DEFAULT_HP - 10}}
  before(:each) { allow(mara).to receive(:hp) {Player::DEFAULT_HP - 10}}

  describe '#reduce_hp' do
    it 'reduces own HP by ten' do
      harry.reduce_hp
      expect(harry.hp).to eq 50
    end
  end

  describe '#attack' do
    it 'reduces the HP of the attacked player' do
      game.attack(harry)
      expect(harry.hp).to eq 50
    end
  end

  describe '#switch_turn' do
    it "switches a player's turn" do
      game.switch_turn
      expect(game.current_turn).to eq mara
    end
  end
end
