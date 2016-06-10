require 'game'

describe Game do

  subject(:game) { described_class.new(player1, player2) }

  let(:player1) { double :player1 }
  let(:player2) { double :player2 }

  let (:players) {[player1, player2]}

  describe '#attack' do
    it 'damages the player' do
      expect(player2).to receive(:receive_damage)
      game.attack(player2)
    end
  end

  describe '#player1' do
    it 'returns the first player' do
      expect(game.player1).to eq player1
    end
  end

  describe '#player2' do
    it 'returns the first player' do
      expect(game.player2).to eq player2
    end
  end

  describe '#current_turn' do
    it 'shows the current turn' do
      expect(game.current_turn).to eq player1
    end
  end

  describe '#switch_turns' do
    it 'switchs the turn of the player' do
      game.switch_turns
      expect(game.current_turn).to eq player2
    end
  end
end
