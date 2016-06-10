describe Player do
  subject(:player) { described_class.new("Susanna") }
  subject(:player2) { described_class.new("Dave") }

  it '#name returns the players name' do
    expect(player.name).to eq "Susanna"
  end

  describe '#hitpoints' do
    it 'returns hit points' do
      expect(player.hitpoints).to eq Player::DEFAULT_HITPOINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(player2).to receive(:receive_damage)
      player.attack(player2)
    end
  end


  it '#receive_damage reduces hit points by 10' do
    expect{ player.receive_damage }.to change{ player.hitpoints }.by(-10)
  end
end
