require 'game'

describe Game do

  subject(:game) { described_class.new}

  let(:player1) { double :player1 }
  let(:player2) { double :player2 }

  let (:players) {[player1, player2]}

  describe '#attack' do
    it 'damages the player' do
      expect(player2).to receive(:receive_damage)
      game.attack(player2)
    end
  end

  # describe '#players' do
  #   it 'starts the game with two players' do
  #     expect(game.players).to eq players
  #   end
  # end

end
