require 'player'

describe Player do
  subject(:alex) { Player.new('Alex') }
  subject(:giorgos) { Player.new('Giorgos') }

  describe '#name' do
    it 'returns the name' do
      expect(alex.name).to eq 'Alex'
    end
  end

  describe '#hit _points' do
    it 'returns the hit points' do
      expect(alex.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the opponent' do
      expect(giorgos).to receive(:receive_damage)
      alex.attack(giorgos)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { alex.receive_damage }.to change { alex.hit_points }.by(-10)
    end
  end
end