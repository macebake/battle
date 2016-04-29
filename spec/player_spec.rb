require 'player'

describe Player do
  subject(:mara)  { Player.new('Mara') }
  subject(:harry) { Player.new('Harry') }

  describe '#name' do
    it 'returns name' do
      expect(mara.name).to eq 'Mara'
    end
  end

  describe '#HP' do
    it 'shows player HP' do
      expect(mara.hp).to eq described_class::DEFAULT_HP 
    end
  end
end