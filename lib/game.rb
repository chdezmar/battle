class Game

  attr_reader :players, :current_turn

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_turn = player1
  end

	def attack(player)
    player.receive_damage
  end

  def player1
    players.first
  end

  def player2
    players.last
  end

  def switch_turns
    @current_turn = opponent_of(current_turn)
  end

  def opponent_of(player)
    @players.select { |e| e != player1  }.first
  end
end
