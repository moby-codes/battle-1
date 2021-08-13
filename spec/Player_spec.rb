require 'Player'

  describe Player do

    let(:player1) { described_class.new('Tom') }

    describe 'name' do
      it 'returns name of player' do
        expect(player1.name).to eq("Tom")
      end

  end
end

