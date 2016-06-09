describe Player do
  subject(:player) {described_class.new("Susanna")}

  it '#name returns the players name' do
    expect(player.name).to eq "Susanna"
  end
end




# setup
# create an instance of player with a given name
#
# exercise
# ask player instance for it's name attribute
#
# verify
# the return string is the given name
