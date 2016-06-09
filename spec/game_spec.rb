require "game"

describe Game do
	subject(:game) { described_class.new(player_1, player_2)}

	subject(:finished_game) { described_class.new(dead_player, player_2)}
	let(:player_1) { double :player, hit_points: 60 }
	let(:player_2) { double :player, hit_points: 60 }
	let(:dead_player) { double :player, hit_points: 0 }




	describe '#player_1' do
		it 'retrieves the first player' do
			expect(game.player_1).to eq player_1
		end
	end

	describe '#player_2' do
		it 'retrieves the first player' do
			expect(game.player_2).to eq player_2
		end
	end


	describe "#current_turn" do
		it 'starts as player_1s turn' do
			expect(game.current_turn).to eq player_1
		end
	end

	describe "#switch_turn" do
		it 'switches turn' do
			game.switch_turn
			expect(game.current_turn).to eq player_2
		end
	end


	describe '#opponent_of' do
		it 'returns opponent of passed player' do
			expect(game.opponent_of(player_1)).to eq(player_2)
		end
	end

	describe '#game_over' do
		it 'returns false if no one is at O HP' do
			expect(game.game_over?).to be false
		end

		it 'returns true if no one is at O HP' do
			expect(finished_game.game_over?).to be true
		end
	end

	describe '#loser' do

		it 'returns a player on less than 0 HP' do
			expect(finished_game.loser).to eq(dead_player)
		end
	end





end