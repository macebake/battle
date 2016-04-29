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

  # describe '#reduce_hp' do
  #   it 'reduces own HP by ten' do
  #     expect{mara.reduce_hp}.to change{mara.hp}.by -10
  #   end
  # end

  # describe '#attack' do
  #   it 'reduces the HP of the attacked player' do
  #     expect{mara.attack(harry)}.to change{harry.hp}.by -10
  #   end
  # end
end