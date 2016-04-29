require_relative 'player'

class Game
  attr_reader :players, :current_turn, :player_1, :player_2
  DEFAULT_HP = 60

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @players = [player_1, player_2]
    @current_turn = player_1
  end

  def attack(player)
    player.reduce_hp
  end

  def switch_turn
    @current_turn = @players.reverse!.first
  end

end
