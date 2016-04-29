require_relative 'player'

class Game
  attr_reader :players, :current_turn, :player_1, :player_2, :not_current_turn
  DEFAULT_HP = 60

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @players = [player_1, player_2]
    @current_turn = player_1
    @not_current_turn = player_2
  end

  def attack(player)
    player.reduce_hp
  end

  def switch_turn
    @current_turn = @players.reverse!.first
    @not_current_turn = @players.last
  end

  def self.start(p1, p2)
    @game = Game.new(p1, p2)
  end

  def self.instance
    @game
  end

end
