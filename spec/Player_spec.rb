require 'Player'

describe Player do

  let(:player1) { described_class.new('Tom') }
  let(:player2) { described_class.new('Jerry') }

  describe '#name' do

    it 'returns name of player' do
      expect(player1.name).to eq("Tom")
    end

  end

  describe '#receive_damage' do

    it 'is expected to reduce hit_points by 10' do
      expect{ player1.receive_damage }.to change{ player1.hit_points }.by (-10)
    end

  end

  describe '#attack' do

    it 'is expected to attack' do
      expect{ player1.attack(player2) }.to change{ player2.hit_points }.by (-10)
    end

  end

end

