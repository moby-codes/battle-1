require './lib/Game.rb'

describe Game do

  let(:player1) { double("Tom") }
  let(:player2) { double("Jerry") }

  let(:game) { described_class.new(player1_class: player1, player2_class: player2)}

  describe '#attack' do

    it 'is expected to attack' do
      allow(player2).to receive( :receive_damage )
      game.attack(player2)
    end

  end

end